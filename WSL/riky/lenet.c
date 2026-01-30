
// Compilation : gcc lenet.c -lm

#include <math.h>
#include <stdio.h>
#include "inputimg.h"
#include "weights.h"
#include "cnn.h"
float output_L1[1][6][28][28];
float output_L2[1][6][14][14];
float output_L3[1][16][10][10];
float output_L4[1][16][5][5];
float output_L5[1][120][1][1];
float output_L6[1][84];
float output_L7[1][10];
float output[1][10];

#define CSR_PCER   0x7A0
#define CSR_PCMR   0x7A1
#define CSR_PCCR0  0x780
#define CSR_PCCR4  0x784

int main(){
    int cycles_start, cycles_end;
 asm volatile ("csrw %0, %1" : : "i"(CSR_PCMR), "r"(0x1));
    asm volatile ("csrw %0, %1" : : "i"(CSR_PCER), "r"(0x11));
    asm volatile ("csrr %0, %1" : "=r"(cycles_start) : "i"(CSR_PCCR0));

    L1_Conv_1(input_img,output_L1);
    L2_MaxPool_1(output_L1,output_L2);
    L3_Conv_2(output_L2,output_L3);
    L4_MaxPool_2(output_L3,output_L4);
    L5_Conv_3(output_L4,output_L5);
    L6_FC_1((float (*)[120])output_L5,output_L6);
    L7_FC_2(output_L6,output_L7);
    LogSoftmax_8(output_L7,output);

   int predicted_value = give_prediction((float*)output);

    asm volatile ("csrr %0, %1" : "=r"(cycles_end) : "i"(CSR_PCCR0));


    volatile int *ptr_result_pred = (int *) 0x42001E00; 
    volatile int *ptr_result_ref  = (int *) 0x42001E04; 
    volatile int *ptr_temps  = (int *) 0x42001E08; 

    *ptr_result_pred = predicted_value;
    *ptr_result_ref  = ref_output;
    *ptr_temps	= cycles_end - cycles_start;
	 

    while(1);
}