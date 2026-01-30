# WSL - Toolchains et Configuration RISC-V

Ce répertoire contient les toolchains RISC-V nécessaires pour compiler des programmes pour différents processeurs RISC-V.

## Structure du Répertoire

### Toolchains

- **pulp/** : Toolchain PULP avec instructions spécifiques PULP (xpulpv2) - **GCC 7 requis**
- **xpack/** : GCC 13.2.0 optimisé pour réduire la taille du code compilé
- **riscv-32/** : Toolchain RISC-V générique 32 bits

### Dossier neo/

Contient les fichiers nécessaires pour le processeur NEORV32 :
- Codes sources d'exemple
- Fichiers linker (`.ld`)
- Fichier de démarrage (`crt0.S`)

## Compilation

### NEORV32 - Mode Monocore

Pour compiler un programme en mode monocore :

```bash
~/xpack-riscv-none-elf-gcc-13.2.0-2/bin/riscv-none-elf-gcc \
    -march=rv32imc_zicsr_zifencei_zfinx \
    -mabi=ilp32 \
    -O1 \
    -funroll-loops \
    -nostartfiles \
    -T neorv32.ld \
    crt0.S nomfichier.c \
    -lm \
    -o nomfichier.elf && \
~/xpack-riscv-none-elf-gcc-13.2.0-2/bin/riscv-none-elf-objcopy -O binary nomfichier.elf nomfichier.bin && \
echo "uint32_t riscv_code[] = {" > code_result.txt && \
hexdump -v -e '1/4 "0x%08x,\n"' nomfichier.bin >> code_result.txt && \
echo "};" >> code_result.txt 
```

**Note** : Ajustez l'option `-march` selon les extensions nécessaires (ex: `rv32imac`, `rv32im`, etc.)

### NEORV32 - Mode Dual-Core

Pour compiler un programme en mode dual-core :

```bash
~/xpack-riscv-none-elf-gcc-13.2.0-2/bin/riscv-none-elf-gcc \
    -march=rv32imac_zicsr_zifencei \
    -mabi=ilp32 \
    -O1 \
    -funroll-loops \
    -nostartfiles \
    -T neorv32.ld \
    -I neorv32/sw/lib/include \
    crt0.S \
    nomfichier.c \
    neorv32/sw/lib/source/neorv32_rte.c \
    neorv32/sw/lib/source/neorv32_smp.c \
    neorv32/sw/lib/source/neorv32_clint.c \
    -o nomfichier.elf \
    -lm && \
~/xpack-riscv-none-elf-gcc-13.2.0-2/bin/riscv-none-elf-objcopy -O binary nomfichier.elf nomfichier.bin && \
echo "Compilation Terminée." && \
echo "uint32_t riscv_code[] = {" > code_result.txt && \
hexdump -v -e '1/4 "0x%08x,\n"' nomfichier.bin >> code_result.txt && \
echo "};" >> code_result.txt
```

## RI5CY (PULP)

### Avec Toolchain PULP (Instructions xpulpv2)

**Important** : GCC 7 requis pour les instructions PULP

```bash
riscv32-unknown-elf-gcc \
    -march=rv32imcxpulpv2 \
    -mabi=ilp32 \
    -O3 \
    -funroll-loops \
    -nostartfiles \
    -T link.common.ld \
    crt0.riscv.S nomfichier.c \
    -lm \
    -o nomfichier.elf && \
riscv32-unknown-elf-objcopy -O binary nomfichier.elf nomfichier.bin && \
echo "uint32_t riscv_code[] = {" > code_result.txt && \
hexdump -v -e '1/4 "0x%08x,\n"' nomfichier.bin >> code_result.txt && \
echo "};" >> code_result.txt
```

### Avec xPack GCC 13 - Mode Monocore

```bash
~/xpack-riscv-none-elf-gcc-13.2.0-2/bin/riscv-none-elf-gcc \
    -march=rv32imc_zicsr \
    -mabi=ilp32 \
    -O3 \
    -funroll-loops \
    -nostartfiles \
    -T link.common.ld \
    crt0.riscv.S nomfichier.c \
    -lm \
    -o nomfichier.elf && \
~/xpack-riscv-none-elf-gcc-13.2.0-2/bin/riscv-none-elf-objcopy -O binary nomfichier.elf nomfichier.bin && \
echo "uint32_t riscv_code[] = {" > code_result.txt && \
hexdump -v -e '1/4 "0x%08x,\n"' nomfichier.bin >> code_result.txt && \
echo "};" >> code_result.txt 
```

### Avec xPack GCC 13 - Mode Dual-Core

```bash
~/xpack-riscv-none-elf-gcc-13.2.0-2/bin/riscv-none-elf-gcc \
    -march=rv32imcv_zicsr \
    -mabi=ilp32 \
    -O0 \
    -nostartfiles \
    -T link.common.ld \
    crt0.riscv.S \
    nomfichier.c \
    -o nomfichier.elf && \
~/xpack-riscv-none-elf-gcc-13.2.0-2/bin/riscv-none-elf-objcopy -O binary nomfichier.elf nomfichier.bin && \
echo "uint32_t riscv_code[] = {" > code_result.txt && \
hexdump -v -e '1/4 "0x%08x,\n"' nomfichier.bin >> code_result.txt && \
echo "};" >> code_result.txt 
```

## Notes

- Le résultat final est dans `code_result.txt`
- Ajustez les options `-march` selon les extensions RISC-V utilisées dans votre code

## Extensions RISC-V Courantes

- `i` : Instructions de base entières
- `m` : Multiplication/division
- `a` : Atomique (requis pour dual-core)
- `c` : Instructions compressées
- `v` : Extensions vectorielles
- `zicsr` : Instructions CSR
- `zifencei` : Instruction fence.i
- `zfinx` : Flottants utilisant registres entiers
- `xpulpv2` : Extensions PULP propriétaires (GCC 7 uniquement)

