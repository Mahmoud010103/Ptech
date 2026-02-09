#ifndef LENET_H
#define LENET_H

#define CSR_MCOUNTINHIBIT 0x320
#define CSR_MCYCLE        0xB00

#ifdef CONV_1
int cycles_start, cycles_end;
int temp_reg;
asm volatile ("csrr %0, %1" : "=r"(temp_reg) : "i"(CSR_MCOUNTINHIBIT));
temp_reg = temp_reg & ~0x1;
asm volatile ("csrw %0, %1" : : "i"(CSR_MCOUNTINHIBIT), "r"(temp_reg));
asm volatile ("csrr %0, %1" : "=r"(cycles_start) : "i"(CSR_MCYCLE));
    L1_Conv_1(input_img,output_L1);
    token_l1 = FULL;
#endif

#ifdef MAXPOOL_1
    if (token_l1 == FULL) {
        token_l1 = EMPTY;
        L2_MaxPool_1(output_L1,output_L2);
        token_l2 = FULL;
    }
#endif

#ifdef CONV_2
    if (token_l2 == FULL) {
        token_l2 = EMPTY;
        L3_Conv_2(output_L2,output_L3);
        token_l3 = FULL;
    }
#endif

#ifdef MAXPOOL_2
    if (token_l3 == FULL) {
        token_l3 = EMPTY;
        L4_MaxPool_2(output_L3,output_L4);
        token_l4 = FULL;
    }
#endif

#ifdef CONV_3
    if (token_l4 == FULL) {
        token_l4 = EMPTY;
        L5_Conv_3(output_L4,output_L5);
        token_l5 = FULL;
    }
#endif

#ifdef FC_1
    if (token_l5 == FULL) {
        token_l5 = EMPTY;
        L6_FC_1((float (*)[120])output_L5,output_L6);
        token_l6 = FULL;
    }
#endif

#ifdef FC_2
    if (token_l6 == FULL) {
        token_l6 = EMPTY;
        L7_FC_2(output_L6,output_L7);
        LogSoftmax_8(output_L7,output);
        token_l7 = FULL;
    }
#endif

#ifdef OUTPUT
    if (token_l7 == FULL) {
        token_l7 = EMPTY;
        int predicted_value = give_prediction((float*)output);
        asm volatile ("csrr %0, %1" : "=r"(cycles_end) : "i"(CSR_MCYCLE));

        volatile int *ptr_result_pred = (int *) 0x42001E00; 
        volatile int *ptr_result_ref  = (int *) 0x42001E04; 
        volatile int *ptr_temps  = (int *) 0x42001E08; 

        *ptr_result_pred = predicted_value;
        *ptr_result_ref  = ref_output;
        *ptr_temps = cycles_end - cycles_start;
    }
#endif

#endif