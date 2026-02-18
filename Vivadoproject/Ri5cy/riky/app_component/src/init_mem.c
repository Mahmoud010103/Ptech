#include "xil_io.h"
#include "xparameters.h"
#include "sleep.h"
#include "xil_cache.h"
#include "xil_printf.h"

// --- ADRESSES MÉMOIRE ---
#define BRAM_INSTR_BASE   0x44000000  // IMEM (Instructions RI5CY)
#define BRAM_DATA_BASE    0x42000000  // DMEM (Données RI5CY)

// Code RISC-V compilé (ton programme de clignotement LED)
uint32_t riscv_code[] = {
    0x42002137,
    0xA0012815,
    0xD6227179,
    0x2E231800,
    0x2623FCA4,
    0xA039FE04,
    0x27830001,
    0x0785FEC4,
    0xFEF42623,
    0xFEC42783,
    0xFDC42703,
    0xFEE7E6E3,
    0x54320001,
    0x80826145,
    0xCE061101,
    0x1000CC22,
    0x400007B7,
    0xFEF42623,
    0xFEC42783,
    0xC3984705,
    0x004C57B7,
    0xB4078513,
    0x27833F45,
    0xA023FEC4,
    0x57B70007,
    0x8513004C,
    0x3F79B407,
    0x0000BFF1
};

int main() {
    xil_printf("\n\r=================================================\n\r");
    xil_printf("    Programmation du RI5CY depuis Zynq PS\n\r");
    xil_printf("=================================================\n\r\n\r");
    
    // Étape 1 : Écriture du CODE dans IMEM
    uint32_t code_size = sizeof(riscv_code) / sizeof(uint32_t);
    xil_printf("Etape 1 : Ecriture IMEM @ 0x%08X\n\r", BRAM_INSTR_BASE);
    xil_printf("          Nombre d'instructions : %d\n\r", code_size);
    xil_printf("          Taille totale : %d bytes\n\r\n\r", sizeof(riscv_code));
    
    for(uint32_t i = 0; i < code_size; i++) {
        Xil_Out32(BRAM_INSTR_BASE + (i * 4), riscv_code[i]);
    }
    
    // Étape 2 : Vérification (lecture et comparaison)
    xil_printf("Etape 2 : Verification de l'ecriture...\n\r");
    uint32_t errors = 0;
    for(uint32_t i = 0; i < code_size; i++) {
        uint32_t read_val = Xil_In32(BRAM_INSTR_BASE + (i * 4));
        if(read_val != riscv_code[i]) {
            xil_printf("  ERREUR @ offset 0x%04X: ecrit=0x%08X, lu=0x%08X\n\r", 
                       i*4, riscv_code[i], read_val);
            errors++;
        }
    }
    
    if(errors == 0) {
        xil_printf("  --> Verification OK ! Aucune erreur.\n\r\n\r");
    } else {
        xil_printf("  --> %d erreurs detectees !\n\r\n\r", errors);
    }
    
    // Étape 3 : Flush du cache (IMPORTANT !)
    xil_printf("Etape 3 : Flush du cache...\n\r");
    Xil_DCacheFlushRange(BRAM_INSTR_BASE, sizeof(riscv_code));
    xil_printf("  --> Cache flushe.\n\r\n\r");
    
    // Étape 4 : Initialisation minimale de DMEM (optionnel)
    xil_printf("Etape 4 : Initialisation DMEM (stack area)...\n\r");
    // Mettre des zéros dans les premiers mots de la DMEM (zone stack)
    for(uint32_t i = 0; i < 64; i++) {  // 256 bytes de stack = 0
        Xil_Out32(BRAM_DATA_BASE + (i * 4), 0x00000000);
    }
    Xil_DCacheFlushRange(BRAM_DATA_BASE, 256);
    xil_printf("  --> DMEM initialisee.\n\r\n\r");
    
    // FIN
    xil_printf("=================================================\n\r");
    xil_printf("  Programme charge avec succes !\n\r");
    xil_printf("  Vous pouvez maintenant RESETTER le RI5CY.\n\r");
    xil_printf("  La LED devrait clignoter.\n\r");
    xil_printf("=================================================\n\r\n\r");

    while(1) {
        sleep(1);  // Boucle infinie pour garder le Zynq actif
    }

    return 0;
}