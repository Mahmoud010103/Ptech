#include <stdint.h>

#define CSR_MCOUNTINHIBIT 0x320
#define CSR_MCYCLE        0xB00
#define CSR_MCYCLE_H      0xB80
#define CLINT_MSIP_1      ((volatile uint32_t*)0xF0000004)

volatile int *ptr_temps_c0       = (int *)0x42001E08;
volatile int *ptr_temps_high_c0  = (int *)0x42001E10;
volatile int *ptr_result_pred    = (int *)0x42001E00;
volatile int *ptr_result_ref     = (int *)0x42001E04;
volatile int *ptr_temps_c1       = (int *)0x42001E0C;
volatile int *ptr_temps_high_c1  = (int *)0x42001E14;

uint64_t get_cycles(void) {
    uint32_t low, high, high_check;
    do {
        asm volatile ("csrr %0, %1" : "=r"(high) : "i"(CSR_MCYCLE_H));
        asm volatile ("csrr %0, %1" : "=r"(low)  : "i"(CSR_MCYCLE));
        asm volatile ("csrr %0, %1" : "=r"(high_check) : "i"(CSR_MCYCLE_H));
    } while (high != high_check);
    return ((uint64_t)high << 32) | low;
}

int main(void) {
    uint32_t hart_id;
    int temp_reg;

    asm volatile ("csrr %0, mhartid" : "=r"(hart_id));
    asm volatile ("csrr %0, %1" : "=r"(temp_reg) : "i"(CSR_MCOUNTINHIBIT));
    temp_reg &= ~0x1;
    asm volatile ("csrw %0, %1" : : "i"(CSR_MCOUNTINHIBIT), "r"(temp_reg));

    if (hart_id == 0) {
        *CLINT_MSIP_1 = 0;
        
        uint64_t start0 = get_cycles();

        #ifdef CONV_1
        L1_Conv_1(input_img, output_L1);
        #endif

        #ifdef MAXPOOL_1
        L2_MaxPool_1(output_L1, output_L2);
        #endif

        #ifdef CONV_2
        L3_Conv_2(output_L2, output_L3);
        #endif

        #ifdef MAXPOOL_2
        L4_MaxPool_2(output_L3, output_L4);
        #endif

        uint64_t end0 = get_cycles();
        uint64_t diff0 = end0 - start0;

        *ptr_temps_c0 = (int)diff0;
        *ptr_temps_high_c0 = (int)(diff0 >> 32);

        *CLINT_MSIP_1 = 1;

        while(1) {
            asm volatile ("wfi");
        }
    } 
    else {
        while (*CLINT_MSIP_1 == 0) {
            asm volatile ("wfi");
        }
        *CLINT_MSIP_1 = 0;

        uint64_t start1 = get_cycles();

        #ifdef CONV_3
        L5_Conv_3(output_L4, output_L5);
        #endif

        #ifdef FC_1
        L6_FC_1((float (*)[120])output_L5, output_L6);
        #endif

        #ifdef FC_2
        L7_FC_2(output_L6, output_L7);
        LogSoftmax_8(output_L7, output);
        #endif

        #ifdef OUTPUT
        int predicted_value = give_prediction((float*)output);

        uint64_t end1 = get_cycles();
        uint64_t diff1 = end1 - start1;

        *ptr_result_pred = predicted_value;
        *ptr_result_ref = ref_output;
        *ptr_temps_c1 = (int)diff1;
        *ptr_temps_high_c1 = (int)(diff1 >> 32);
        #endif

        while(1) {
            asm volatile ("wfi");
        }
    }

    return 0;
}