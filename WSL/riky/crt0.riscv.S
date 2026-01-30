.section .vectors, "ax"
  .option norvc
  j _start
  .rept 31
  j default_handler
  .endr

  .section .text
  .global _start

_start:
  /* 1. LECTURE DE L'ID */
  csrr a0, 0xF10        
  andi a0, a0, 0xF      
  
  /* SAUVEGARDE DE L'ID : On met l'ID dans s0 pour ne pas le perdre */
  mv s0, a0             

  /* 2. SETUP STACK BASE (Pour tout le monde au début) */
  la sp, _stack_top     

  /* 3. LOGIQUE MASTER / SLAVE */
  beqz s0, is_master    /* Si s0 (ID) == 0, on va initialiser */

  /* --- SLAVE (COEUR 1) --- */
setup_slave:
  li t1, 4096           
  sub sp, sp, t1        /* Décalage de pile pour le Coeur 1 */

  /* BARRIERE DE SYNCHRO : Le Coeur 1 attend ici ! */
  /* On utilise une adresse à la fin de la BRAM comme drapeau (Flag) */
  li t0, 0x4200FFF0     /* Adresse arbitraire de fin de mémoire */
wait_for_master:
  lw t1, 0(t0)          /* Lire le drapeau */
  beqz t1, wait_for_master /* Tant que c'est 0, on attend */
  
  j call_main           /* Le Master a mis 1, on peut y aller */


  /* --- MASTER (COEUR 0) --- */
is_master:
  /* Mettre le drapeau à 0 immédiatement par sécurité */
  li t0, 0x4200FFF0
  sw x0, 0(t0)

  /* 5. INIT MEMOIRE (.data) */
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
  /* 6. INIT MEMOIRE (.bss) */
  la t0, _sbss
  la t1, _ebss
  bge t0, t1, release_slaves
zero_loop:
  sw x0, 0(t0)
  addi t0, t0, 4
  blt t0, t1, zero_loop

release_slaves:
  fence                 /* Assurer que toutes les écritures mémoire sont finies */
  
  /* LIBERATION DU SLAVE : On écrit 1 à l'adresse du drapeau */
  li t0, 0x4200FFF0
  li t1, 1
  sw t1, 0(t0)

call_main:
  /* RESTAURATION DE L'ARGUMENT ID */
  mv a0, s0             /* On remet l'ID (sauvegardé dans s0) dans a0 pour main(int id) */
  
  jal ra, main          

loop_forever:
  j loop_forever

default_handler:
  j default_handler