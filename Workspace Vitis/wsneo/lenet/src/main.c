#include <stdio.h>
#include "xil_io.h"
#include "xil_cache.h"
#include "xgpiops.h"
#include "sleep.h"
#include "code.h"
#define BRAM_INSTR_BASE    0x44000000
#define BRAM_DATA_BASE     0x42000000
#define OFFSET_PRED        0x1E00
#define OFFSET_REF         0x1E04
#define OFFSET_TEMP        0X1E08
#define RISCV_FREQ_HZ      100000000.0f

int main() {
 
    Xil_DCacheEnable();
    printf("Fréquence RISC-V: %.2f MHz\n\r", RISCV_FREQ_HZ / 1000000.0f);

    

    Xil_Out32(BRAM_DATA_BASE + OFFSET_PRED, 0x00000000);
    Xil_Out32(BRAM_DATA_BASE + OFFSET_REF, 0x00000000);

    for(int i = 0; i < (sizeof(riscv_code)/4); i++) {
        Xil_Out32(BRAM_INSTR_BASE + (i*4), riscv_code[i]);
    }
    Xil_DCacheFlushRange(BRAM_INSTR_BASE, sizeof(riscv_code));
    Xil_DCacheFlushRange(BRAM_DATA_BASE + OFFSET_PRED, 8);

    printf("Démarrage du RISC-V...\n\r");
    sleep(50);

    Xil_DCacheInvalidateRange(BRAM_DATA_BASE + OFFSET_PRED, 8);
    uint32_t predicted = Xil_In32(BRAM_DATA_BASE + OFFSET_PRED);
    uint32_t reference = Xil_In32(BRAM_DATA_BASE + OFFSET_REF);
    uint32_t cycle = Xil_In32(BRAM_DATA_BASE + OFFSET_TEMP);

    printf("Prediction : %u\n\r", predicted);
    printf("Reference  : %u\n\r", reference);
    printf("Nb de cycle : %u\n\r", cycle);
    float temps=cycle/RISCV_FREQ_HZ;
    printf("Temps de calcul : %.3f\n\r", temps);

    return 0;
}