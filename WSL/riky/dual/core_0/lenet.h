

#define CSR_PCER   0x7A0
#define CSR_PCMR   0x7A1
#define CSR_PCCR0  0x780
#define CSR_PCCR4  0x784


#ifdef CONV_1
    
    int cycles_start, cycles_end;
    asm volatile ("csrw %0, %1" : : "i"(CSR_PCMR), "r"(0x1));
    asm volatile ("csrw %0, %1" : : "i"(CSR_PCER), "r"(0x11));
    asm volatile ("csrr %0, %1" : "=r"(cycles_start) : "i"(CSR_PCCR0));
    
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
       asm volatile ("csrr %0, %1" : "=r"(cycles_end) : "i"(CSR_PCCR0));
        volatile int *ptr_tempsc0  = (int *) 0x4200C01C; 
        *ptr_tempsc0 = cycles_end - cycles_start;
        *token_l4 = 1;
        volatile int *ptr_debug = (int *) 0x4200C000; 
        *ptr_debug = 999;

    }
#endif

#ifdef CONV_3
 int cycles_startc1=0, cycles_endc1=0;

    if (*token_l4 == 1) {
    asm volatile ("csrw %0, %1" : : "i"(CSR_PCMR), "r"(0x1));
    asm volatile ("csrw %0, %1" : : "i"(CSR_PCER), "r"(0x11));
    asm volatile ("csrr %0, %1" : "=r"(cycles_startc1) : "i"(CSR_PCCR0));
        *token_l4 = 0;
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
        
        asm volatile ("csrr %0, %1" : "=r"(cycles_endc1) : "i"(CSR_PCCR0));

        volatile int *ptr_result_pred = (int *) 0x4200C000; 
        volatile int *ptr_temps  = (int *) 0x4200C008; 
     
        *ptr_result_pred = predicted_value;
        *ptr_temps = cycles_endc1 - cycles_startc1;
    }
#endif

