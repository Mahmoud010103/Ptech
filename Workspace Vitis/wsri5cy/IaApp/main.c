#include <stdio.h>
#include "xil_io.h"
#include "xil_cache.h"
#include "xgpiops.h"
#include "sleep.h"

#define BRAM_INSTR_BASE    0x44000000
#define BRAM_DATA_BASE     0x42000000
#define OFFSET_CYCLES      0x1E04
#define OFFSET_IMISS       0x1E08

#define RISCV_FREQ_HZ      38461540.0f
uint32_t riscv_code[] = {
0x0800006f,
0x0dc0006f,
0x0d80006f,
0x0d40006f,
0x0d00006f,
0x0cc0006f,
0x0c80006f,
0x0c40006f,
0x0c00006f,
0x0bc0006f,
0x0b80006f,
0x0b40006f,
0x0b00006f,
0x0ac0006f,
0x0a80006f,
0x0a40006f,
0x0a00006f,
0x09c0006f,
0x0980006f,
0x0940006f,
0x0900006f,
0x08c0006f,
0x0880006f,
0x0840006f,
0x0800006f,
0x07c0006f,
0x0780006f,
0x0740006f,
0x0700006f,
0x06c0006f,
0x0680006f,
0x0640006f,
0xfe002117,
0xf8010113,
0xfe000517,
0xf7850513,
0xfe000597,
0xf7058593,
0x00000617,
0x10860613,
0x00b55c63,
0x00062283,
0x00552023,
0x00450513,
0x00460613,
0xfeb548e3,
0xfe000517,
0xf4850513,
0xfe000597,
0xf4058593,
0x00b55863,
0x00052023,
0x00450513,
0xfeb54ce3,
0x094000ef,
0x0000006f,
0xfc010113,
0x00112023,
0x00a12223,
0x00b12423,
0x00c12623,
0x7b0022f3,
0x7b102373,
0x7b2023f3,
0x00512823,
0x00612a23,
0x00712c23,
0x7b4022f3,
0x7b502373,
0x7b6023f3,
0x00512e23,
0x02612023,
0x02712223,
0x01c12283,
0x02012303,
0x02412383,
0x7b429073,
0x7b531073,
0x7b639073,
0x01012283,
0x01412303,
0x01812383,
0x7b029073,
0x7b131073,
0x7b239073,
0x00c12603,
0x00812583,
0x00412503,
0x00012083,
0x04010113,
0x30200073,
0x90734785,
0x42c57a17,
0x7a029073,
0x78002773,
0x78002373,
0x40e303b3,
0x42002537,
0xe0752223,
0x440005b7,
0x19c5a787,
0xe0f52427,
0x0000a001,
0x4124cccc,
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
    printf("Temps mesur   : %.5f ms\n\r", time_ms);
    
    return 0;
}