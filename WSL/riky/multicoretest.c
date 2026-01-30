#include <stdint.h>

#define GPIO_BASE      0x40000000
#define GPIO_DATA      *((volatile uint32_t*)(GPIO_BASE + 0x00))
#define GPIO_TRI       *((volatile uint32_t*)(GPIO_BASE + 0x04))

#define ADDR_STATUS_0  0x42000014
#define ADDR_STATUS_1  0x42000040

void gpio_set(int bit) {
    uint32_t val = GPIO_DATA;
    val |= (1 << bit);
    GPIO_DATA = val;
}

void gpio_clr(int bit) {
    uint32_t val = GPIO_DATA;
    val &= ~(1 << bit);
    GPIO_DATA = val;
}

void delay_slow() {
    volatile int i;
    for(i=0; i<100000; i++) asm volatile("nop");
}

int main(int id) {
    volatile uint32_t* status_0 = (volatile uint32_t*)ADDR_STATUS_0;
    volatile uint32_t* status_1 = (volatile uint32_t*)ADDR_STATUS_1;

    if (id == 0) {
        GPIO_TRI = 0x00;
        GPIO_DATA = 0x00;
        
        *status_0 = 30;

        while(1) {
            gpio_set(0);
            delay_slow();
            delay_slow();
            gpio_clr(0);
            delay_slow();
            delay_slow();
        }
    }
    else {
        *status_1 = 100;

        while(1) {
            gpio_set(1);
            delay_slow();
            gpio_clr(1);
            delay_slow();
        }
    }
    return 0;
}