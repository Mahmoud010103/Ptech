
OUTPUT_ARCH("riscv")
ENTRY(_start)
SEARCH_DIR(.)

MEMORY
{
    instrram (rx)  : ORIGIN = 0x44000000, LENGTH = 256K 
    dataram  (rwx) : ORIGIN = 0x42000000, LENGTH = 64K  
}

SECTIONS
{
    /* --- SECTION CODE (Dans instrram) --- */
    .text :
    {
        . = ALIGN(4);
        KEEP(*(.vectors))
        
        *(.start)
        *(.text)
        *(.text.*)
        
        *(.rodata)
        *(.rodata.*)
        
        . = ALIGN(4);
        _etext = .;
    } > instrram

    /* --- SECTION DONNÉES INITIALISÉES (.data) --- */
    _sidata = LOADADDR(.data);
    
    .data :
    {
        . = ALIGN(4);
        _sdata = .;
        
        *(.data)
        *(.data.*)
        *(.sdata .sdata.*)
        
        . = ALIGN(4);
        _edata = .;
        
        __global_pointer$ = . + 0x800;
    } > dataram AT > instrram

    /* --- SECTION DONNÉES NON-INITIALISÉES (.bss) --- */
    .bss :
    {
        . = ALIGN(4);
        _sbss = .;
        
        *(.bss)
        *(.bss.*)
        *(.sbss .sbss.*)
        *(COMMON)
        
        . = ALIGN(4);
        _ebss = .;
    } > dataram

    /* Définir _end pour libgloss */
    . = ALIGN(4);
    _end = .;
    end = .;
    PROVIDE(_end = .);
    PROVIDE(end = .);

    /* --- PILE (STACK) --- */
    .stack (NOLOAD) :
    {
        . = ALIGN(16);
        _stack_start = .;
        . = . + 0x2000;  /* 8KB pour la stack */
        . = ALIGN(16);
        _stack_end = .;
        
        PROVIDE(_stack_top = .);
        PROVIDE(stack = .);
        PROVIDE(__stack = .);
    } > dataram
}