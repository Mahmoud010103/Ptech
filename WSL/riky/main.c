/*
#include <stdint.h>

int main() {
    volatile int a = 10;
    volatile int b = 20;
    volatile int res = 0;

    res = a + b;

    volatile int *ptr_resultat = (volatile int *) 0x42000000;
    
    *ptr_resultat = res; 

    while(1) {
    }

    return 0; 
}*/
#include <stdint.h>


#define GPIO_BASE_ADDR      0x40000000

#define GPIO_DATA_OFFSET    0x00 
#define GPIO_TRI_OFFSET     0x04  

void delay(volatile uint32_t count) {
    while(count > 0) {
        count--;
    }
}

int main() {
    volatile uint32_t *gpio_data = (uint32_t *)(GPIO_BASE_ADDR + GPIO_DATA_OFFSET);
    volatile uint32_t *gpio_tri  = (uint32_t *)(GPIO_BASE_ADDR + GPIO_TRI_OFFSET);


    *gpio_tri = 0x00000000;


    while(1) {
        *gpio_data = 0xFFFFFFFF;

        delay(500000); 

        *gpio_data = 0x00000000;

        delay(500000);
    }

    return 0;
}