#include <stdint.h>

#define MAILBOX_CYCLES (volatile uint32_t *)0x42001E04
#define MAILBOX_IMISS  (volatile float *)0x42001E08

#define CSR_PCER   0x7A0
#define CSR_PCMR   0x7A1
#define CSR_PCCR0  0x780
#define CSR_PCCR4  0x784

int main() {
    uint32_t cycles_start, cycles_end;
    uint32_t imiss_start, imiss_end;
        float x=5.1;
	float y=5.2;
    asm volatile ("csrw %0, %1" : : "i"(CSR_PCMR), "r"(0x1));
    asm volatile ("csrw %0, %1" : : "i"(CSR_PCER), "r"(0x11));
    asm volatile ("csrr %0, %1" : "=r"(cycles_start) : "i"(CSR_PCCR0));
	float z=x+y;
    asm volatile ("csrr %0, %1" : "=r"(cycles_end) : "i"(CSR_PCCR0));
    
    *MAILBOX_CYCLES = cycles_end - cycles_start;
    *MAILBOX_IMISS = z;
    
    while (1);
    return 0;
}