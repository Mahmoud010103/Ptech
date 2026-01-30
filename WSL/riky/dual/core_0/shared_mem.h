
#ifndef SHARED_MEM_H
#define SHARED_MEM_H

typedef enum {EMPTY,FULL} t_token;

/*__attribute__((section(".shared_mem")))*/  float output_L1[1][6][28][28];
/*__attribute__((section(".shared_mem")))*/  t_token token_l1 = EMPTY;

/*__attribute__((section(".shared_mem")))*/  float output_L2[1][6][14][14];
/*__attribute__((section(".shared_mem")))*/  t_token token_l2 = EMPTY;

/*__attribute__((section(".shared_mem")))*/  float output_L3[1][16][10][10];
/*__attribute__((section(".shared_mem")))*/  t_token token_l3 = EMPTY;

/*__attribute__((section(".shared_mem")))*/  //float output_L4[1][16][5][5];
/*__attribute__((section(".shared_mem")))*/  //t_token token_l4 = EMPTY;
#define output_L4  ((float (*)[16][5][5])0x4200C100)
#define token_l4   ((volatile t_token *)0x4200C010)
/*__attribute__((section(".shared_mem")))*/  float output_L5[1][120][1][1];
/*__attribute__((section(".shared_mem")))*/  t_token token_l5 = EMPTY;

/*__attribute__((section(".shared_mem")))*/  float output_L6[1][84];
/*__attribute__((section(".shared_mem")))*/  t_token token_l6 = EMPTY;

/*__attribute__((section(".shared_mem")))*/  float output_L7[1][10];
/*__attribute__((section(".shared_mem")))*/  t_token token_l7 = EMPTY;

/*__attribute__((section(".shared_mem")))*/  float output[1][10];
/*__attribute__((section(".shared_mem")))*/  t_token token_out = EMPTY;



#endif