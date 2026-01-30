#include <stdio.h>
#include "xil_io.h"
#include "xil_cache.h"
#include "sleep.h"
#include <string.h>


#define BRAM_INSTR_BASE    0x44000000
#define BRAM_DATA_BASE     0x42000000
#define OFFSET_CYCLES      0x1E04
#define OFFSET_IMISS       0x1E08

#define RISCV_FREQ_HZ      100000000.0f
uint32_t riscv_code[] = {
0xf14020f3,
0xfe002217,
0xffb20213,
0xff027113,
0xfe000197,
0x7f018193,
0x000022b7,
0x80028293,
0x30029073,
0x00000317,
0x18c30313,
0x30531073,
0x30401073,
0x00000397,
0x1d838393,
0xfe000417,
0xfc440413,
0xfe000497,
0xfbc48493,
0xfe000517,
0xfb450513,
0xfe000597,
0xfac58593,
0x00000613,
0x00000693,
0x00000713,
0x00000793,
0x00000813,
0x00000893,
0x00000913,
0x00000993,
0x00000a13,
0x00000a93,
0x00000b13,
0x00000b93,
0x00000c13,
0x00000c93,
0x00000d13,
0x00000d93,
0x00000e13,
0x00000e93,
0x00000f13,
0x00000f93,
0x04008263,
0x00000797,
0x01c78793,
0x30579073,
0x30446073,
0x30046073,
0x10500073,
0xffdff06f,
0x00000797,
0x0e478793,
0x30579073,
0xfff44737,
0x00872103,
0x00c72603,
0xfff40737,
0x00072223,
0x05c0006f,
0x00838e63,
0x00945c63,
0x0003a783,
0x00f42023,
0x00438393,
0x00440413,
0xfedff06f,
0x00b55863,
0x00052023,
0x00450513,
0xff5ff06f,
0x00000417,
0x0c440413,
0x00000497,
0x0bc48493,
0x00945a63,
0x00042083,
0x000080e7,
0x00440413,
0xff1ff06f,
0x00000617,
0x07860613,
0xfe000197,
0x6b818193,
0x0ff0000f,
0x0000100f,
0x30029073,
0x00000513,
0x00000593,
0x000600e7,
0x30401073,
0x34051073,
0x00000597,
0x04058593,
0x30559073,
0xf1402473,
0x02041463,
0x00000417,
0x05c40413,
0x00000497,
0x05448493,
0x00945a63,
0x00042083,
0x000080e7,
0x00440413,
0xff1ff06f,
0x10500073,
0xffdff06f,
0x10500073,
0xffdff06f,
0x320027f3,
0xffe7f793,
0x32079073,
0xb0002773,
0x00000093,
0xb00027f3,
0x40e787b3,
0x42002737,
0xe0f72223,
0x0000006f,
0x00000014,
0x00000000,
0x00527a01,
0x01017c01,
0x07020d1b,
0x00000001,
0x00000010,
0x0000001c,
0xfffffe00,
0x000001b8,
0x00000000,
};


int main() {
    Xil_DCacheEnable();
    printf("Fréquence RISC-V: %.2f MHz\n\r", RISCV_FREQ_HZ / 1000000.0f);

    Xil_Out32(BRAM_DATA_BASE + OFFSET_CYCLES, 0x00000000);
    Xil_Out32(BRAM_DATA_BASE + OFFSET_IMISS, 0x00000000);

    for(int i = 0; i < (sizeof(riscv_code)/4); i++) {
        Xil_Out32(BRAM_INSTR_BASE + (i*4), riscv_code[i]);
    }
    Xil_DCacheFlushRange(BRAM_INSTR_BASE, sizeof(riscv_code));
    Xil_DCacheFlushRange(BRAM_DATA_BASE + OFFSET_CYCLES, 12);

    printf("Demarrage du RISC-V...\n\r");
    sleep(10);

    Xil_DCacheInvalidateRange(BRAM_DATA_BASE + OFFSET_CYCLES, 12);
    
    uint32_t cycles = Xil_In32(BRAM_DATA_BASE + OFFSET_CYCLES);
uint32_t raw = Xil_In32(BRAM_DATA_BASE + OFFSET_IMISS);
float result;
memcpy(&result, &raw, sizeof(float));    
    float time_ms = (float)cycles / (RISCV_FREQ_HZ / 1000.0f);

    printf("Cycles mesures : %u cycles\n\r", cycles);
    printf("Resultat   : %.4f\n\r", result);  
    printf("Temps mesure   : %.5f ms\n\r", time_ms);
    
    return 0;
}