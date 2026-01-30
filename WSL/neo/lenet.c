
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
#define CSR_MCOUNTINHIBIT 0x320
#define CSR_MCYCLE        0xB00

int main(){
int cycles_start, cycles_end;
int temp_reg;
asm volatile ("csrr %0, %1" : "=r"(temp_reg) : "i"(CSR_MCOUNTINHIBIT));
temp_reg = temp_reg & ~0x1;
asm volatile ("csrw %0, %1" : : "i"(CSR_MCOUNTINHIBIT), "r"(temp_reg));
asm volatile ("csrr %0, %1" : "=r"(cycles_start) : "i"(CSR_MCYCLE));

    L1_Conv_1(input_img,output_L1);
    L2_MaxPool_1(output_L1,output_L2);
    L3_Conv_2(output_L2,output_L3);
    L4_MaxPool_2(output_L3,output_L4);
    L5_Conv_3(output_L4,output_L5);
    L6_FC_1((float (*)[120])output_L5,output_L6);
    L7_FC_2(output_L6,output_L7);
    LogSoftmax_8(output_L7,output);

   int predicted_value = give_prediction((float*)output);
   asm volatile ("csrr %0, %1" : "=r"(cycles_end) : "i"(CSR_MCYCLE));


    volatile int *ptr_result_pred = (int *) 0x42001E00; 
    volatile int *ptr_result_ref  = (int *) 0x42001E04; 
    volatile int *ptr_temps  = (int *) 0x42001E08; 

    *ptr_result_pred = predicted_value;
    *ptr_result_ref  = ref_output;
    *ptr_temps	= cycles_end - cycles_start;

    while(1);
}