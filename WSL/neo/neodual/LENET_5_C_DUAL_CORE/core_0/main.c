#include <neorv32.h>
#include <math.h>
#include <stdio.h>
#include <stdint.h>
#include "../share/inputimg.h"
#include "../share/weights.h"
#include "../share/cnn.h"
#include "../share/shared_mem.h" 
#define BRAM_DATA_BASE 0x42000000

volatile uint8_t __attribute__ ((aligned (16))) core1_stack[2048];

int neorv32_uart_available(neorv32_uart_t *U) { (void)U; return 0; }
void neorv32_uart_putc(neorv32_uart_t *U, char c) { (void)U; (void)c; }
void neorv32_uart_puts(neorv32_uart_t *U, const char *s) { (void)U; (void)s; }
void neorv32_uart_printf(neorv32_uart_t *U, const char *f, ...) { (void)U; (void)f; }
void __neorv32_uart_putc(int c) { (void)c; }

int main_core1(void) {
    neorv32_rte_setup();

    while(1) {
             #include "mapping1.h"

        #include "../share/lenet.h"
    }
    return 0;
}

int main(void) {
    neorv32_rte_setup();
    
    neorv32_smp_launch(main_core1, (uint8_t*)core1_stack, sizeof(core1_stack));

    while(1) {
    #include "mapping.h"

        #include "../share/lenet.h"
    }
    
    return 0;
}

