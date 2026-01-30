#include <stdio.h>
#include "xil_io.h"
#include "xil_cache.h"
#include "xgpiops.h"
#include "sleep.h"
#include "code.h"

#define BRAM_INSTR_BASE    0x44000000
#define BRAM_DATA_BASE     0x42000000

#define OFFSET_PRED        0x1E00  
#define OFFSET_REF         0x1E18
#define OFFSET_TEMP_C1     0x1E08
#define OFFSET_TEMP_C0     0x1E1C

#define RISCV_FREQ_HZ      38461540.0f

int main() {
 
    Xil_DCacheEnable();
    printf("Frequence RISC-V: %.2f MHz\n\r", RISCV_FREQ_HZ / 1000000.0f);

    // Initialisation
    Xil_Out32(BRAM_DATA_BASE + OFFSET_PRED, 0);
    Xil_Out32(BRAM_DATA_BASE + OFFSET_REF, 0);
    Xil_Out32(BRAM_DATA_BASE + OFFSET_TEMP_C1, 0);
    Xil_Out32(BRAM_DATA_BASE + OFFSET_TEMP_C0, 0);

    for(int i = 0; i < (sizeof(riscv_code)/4); i++) {
        Xil_Out32(BRAM_INSTR_BASE + (i*4), riscv_code[i]);
    }
    
    Xil_DCacheFlushRange(BRAM_INSTR_BASE, sizeof(riscv_code));
    Xil_DCacheFlushRange(BRAM_DATA_BASE + OFFSET_PRED, 16);

    printf("Demarrage du RISC-V...\n\r");
    sleep(200); 

    Xil_DCacheInvalidateRange(BRAM_DATA_BASE, 256);
    
    uint32_t predicted = Xil_In32(BRAM_DATA_BASE + OFFSET_PRED);
    uint32_t reference = Xil_In32(BRAM_DATA_BASE + OFFSET_REF);
    uint32_t cycle_c1 = Xil_In32(BRAM_DATA_BASE + OFFSET_TEMP_C1);
    uint32_t cycle_c0 = Xil_In32(BRAM_DATA_BASE + OFFSET_TEMP_C0);
    

    printf("Prediction : %u\n\r", predicted);
    printf("Reference  : %u\n\r", reference);
    printf("Cycles Core 0 : %u\n\r", cycle_c0);
    printf("Cycles Core 1 : %u\n\r", cycle_c1);
    uint32_t c=cycle_c0+cycle_c1;
    float temps = c / RISCV_FREQ_HZ;
    printf("Temps de calcul : %.3f s\n\r", temps);

    return 0;
}