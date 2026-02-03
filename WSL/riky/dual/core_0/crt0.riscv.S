.section .vectors, "ax"
  .option norvc
  j _start
  .rept 31
  j default_handler
  .endr

  .section .text
  .global _start

_start:
  csrr a0, 0xF10        
  andi a0, a0, 0xF      
  
  mv s0, a0             

  la sp, _stack_top     

  beqz s0, is_master    

setup_slave:
  li t1, 4096           
  sub sp, sp, t1       
  li t0, 0x4200FFF0    
wait_for_master:
  lw t1, 0(t0)        
  beqz t1, wait_for_master  
  j call_main        


is_master:
  li t0, 0x4200FFF0
  sw x0, 0(t0)

  la t0, _sdata
  la t1, _edata
  la t2, _sidata
  bge t0, t1, zero_bss
copy_loop:
  lw t3, 0(t2)
  sw t3, 0(t0)
  addi t0, t0, 4
  addi t2, t2, 4
  blt t0, t1, copy_loop

zero_bss:
  la t0, _sbss
  la t1, _ebss
  bge t0, t1, release_slaves
zero_loop:
  sw x0, 0(t0)
  addi t0, t0, 4
  blt t0, t1, zero_loop

release_slaves:
  fence                   
  li t0, 0x4200FFF0
  li t1, 1
  sw t1, 0(t0)

call_main:
  mv a0, s0             
  jal ra, main          

loop_forever:
  j loop_forever

default_handler:
  j default_handler