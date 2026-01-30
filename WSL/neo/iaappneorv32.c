#include <stdint.h>
#define res    (volatile uint32_t *)0x42001E04
#define MAILBOX_IMISS  (volatile float *)0x42001E08
#define CSR_MCOUNTINHIBIT 0x320
#define CSR_MCYCLE        0xB00
int main() {
uint32_t cycles_start, cycles_end;
uint32_t temp_reg;
float x,y;
x=5.1;
y=5.2;
asm volatile ("csrr %0, %1" : "=r"(temp_reg) : "i"(CSR_MCOUNTINHIBIT));
temp_reg = temp_reg & ~0x1;
asm volatile ("csrw %0, %1" : : "i"(CSR_MCOUNTINHIBIT), "r"(temp_reg));

asm volatile ("csrr %0, %1" : "=r"(cycles_start) : "i"(CSR_MCYCLE));

//float z= x+y;
    asm volatile ("addi x1, x0, 0");
asm volatile ("csrr %0, %1" : "=r"(cycles_end) : "i"(CSR_MCYCLE));

*res = cycles_end - cycles_start;
//*MAILBOX_IMISS=z;
while(1);
return 0;}