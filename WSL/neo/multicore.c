#include <neorv32.h>
#include <stdint.h>

#define GPIO_BASE      0x40000000
#define GPIO_DATA      *((volatile uint32_t*)(GPIO_BASE + 0x00))
#define GPIO_TRI       *((volatile uint32_t*)(GPIO_BASE + 0x04))

#define BRAM_DATA_BASE 0x42000000
#define RES_CORE0_PTR  ((volatile uint32_t*)(BRAM_DATA_BASE + 0x14))
#define RES_CORE1_PTR  ((volatile uint32_t*)(BRAM_DATA_BASE + 0x18))

volatile uint8_t __attribute__ ((aligned (16))) core1_stack[2048]; 

volatile uint32_t gpio_lock_var = 0;

void gpio_lock() {
    while (__sync_lock_test_and_set(&gpio_lock_var, 1)) {
        asm volatile ("nop");
    }
}

void gpio_unlock() {
    __sync_lock_release(&gpio_lock_var);
}

void safe_gpio_set(int bit) {
    gpio_lock();
    uint32_t val = GPIO_DATA;
    val |= (1 << bit);
    GPIO_DATA = val;
    gpio_unlock();
}

void safe_gpio_clr(int bit) {
    gpio_lock();
    uint32_t val = GPIO_DATA;
    val &= ~(1 << bit);
    GPIO_DATA = val;
    gpio_unlock();
}
#obligatoire ou le compilation ne fonctionne pas 
int neorv32_uart_available(neorv32_uart_t *U) { (void)U; return 0; }
void neorv32_uart_putc(neorv32_uart_t *U, char c) { (void)U; (void)c; }
void neorv32_uart_puts(neorv32_uart_t *U, const char *s) { (void)U; (void)s; }
void neorv32_uart_printf(neorv32_uart_t *U, const char *f, ...) { (void)U; (void)f; }
void __neorv32_uart_putc(int c) { (void)c; }

void delay_slow() {
    volatile int i;
    for(i=0; i<500000; i++) asm volatile("nop");
}

int main_core1(void) {
    neorv32_rte_setup();

    *RES_CORE1_PTR = 50 + 50;

    while(1) {
        safe_gpio_set(1);
        delay_slow();
        safe_gpio_clr(1);
        delay_slow();
    }
    return 0;
}

int main(void) {
    neorv32_rte_setup();
    GPIO_TRI = 0x00;
    GPIO_DATA = 0x00;

    neorv32_smp_launch(main_core1, (uint8_t*)core1_stack, sizeof(core1_stack));

    *RES_CORE0_PTR = 10 + 20;

    while(1) {
        safe_gpio_set(0);
        delay_slow();
        delay_slow();
        safe_gpio_clr(0);
        delay_slow();
        delay_slow();
    }
    return 0;
}
