#define CSR_MCOUNTINHIBIT 0x320
#define CSR_MCYCLE        0xB00
#define CSR_MCYCLE_H      0xB80
#define CLINT_MSIP_C1     0xF0000004

#ifdef CONV_1
int cycles_start0, cycles_end0;
int cycles_start0_H, cycles_end0_H;
int temp_reg;

asm volatile ("csrr %0, %1" : "=r"(temp_reg) : "i"(CSR_MCOUNTINHIBIT));
temp_reg = temp_reg & ~0x1;
asm volatile ("csrw %0, %1" : : "i"(CSR_MCOUNTINHIBIT), "r"(temp_reg));

asm volatile ("csrr %0, %1" : "=r"(cycles_start0) : "i"(CSR_MCYCLE));
asm volatile ("csrr %0, %1" : "=r"(cycles_start0_H) : "i"(CSR_MCYCLE_H));

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

    asm volatile ("csrr %0, %1" : "=r"(cycles_end0) : "i"(CSR_MCYCLE));
    asm volatile ("csrr %0, %1" : "=r"(cycles_end0_H) : "i"(CSR_MCYCLE_H));

    long long start0_64 = ((long long)cycles_start0_H << 32) | (unsigned int)cycles_start0;
    long long end0_64   = ((long long)cycles_end0_H << 32) | (unsigned int)cycles_end0;
    long long diff0     = end0_64 - start0_64;

    volatile int *ptr_temps      = (int *) 0x42001E08; 
    volatile int *ptr_temps_high = (int *) 0x42001E10;

    *ptr_temps      = (int)diff0;
    *ptr_temps_high = (int)(diff0 >> 32);
    
    *token_l4 = 1;
    *((volatile int *) CLINT_MSIP_C1) = 1;
    }
#endif

#ifdef CONV_3
int cycles_start1, cycles_end1;
int cycles_start1_H, cycles_end1_H;
int temp_reg1;

asm volatile("csrs mie, %0" :: "r"(0x8));

while (*token_l4 != 1) {
    asm volatile("wfi");
    *((volatile int *) CLINT_MSIP_C1) = 0;
}

*token_l4 = 0;

asm volatile ("csrr %0, %1" : "=r"(temp_reg1) : "i"(CSR_MCOUNTINHIBIT));
temp_reg1 = temp_reg1 & ~0x1;
asm volatile ("csrw %0, %1" : : "i"(CSR_MCOUNTINHIBIT), "r"(temp_reg1));

asm volatile ("csrr %0, %1" : "=r"(cycles_start1) : "i"(CSR_MCYCLE));
asm volatile ("csrr %0, %1" : "=r"(cycles_start1_H) : "i"(CSR_MCYCLE_H));

    L5_Conv_3(output_L4,output_L5);
    token_l5 = FULL;

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

    asm volatile ("csrr %0, %1" : "=r"(cycles_end1) : "i"(CSR_MCYCLE));
    asm volatile ("csrr %0, %1" : "=r"(cycles_end1_H) : "i"(CSR_MCYCLE_H));

    volatile int *ptr_result_pred = (int *) 0x42001E00; 
    volatile int *ptr_result_ref  = (int *) 0x42001E04; 
    volatile int *ptr_temps1      = (int *) 0x42001E0c; 
    volatile int *ptr_temps1_high = (int *) 0x42001E14;

    long long start1_64 = ((long long)cycles_start1_H << 32) | (unsigned int)cycles_start1;
    long long end1_64   = ((long long)cycles_end1_H << 32) | (unsigned int)cycles_end1;
    long long diff1     = end1_64 - start1_64;

    *ptr_result_pred = predicted_value;
    *ptr_result_ref  = ref_output;
    
    *ptr_temps1      = (int)diff1;
    *ptr_temps1_high = (int)(diff1 >> 32);
    }
#endif