#include <math.h>
#include <stdio.h>
#include "inputimg.h"
#include "weights.h"
#include "cnn.h"
#include "shared_mem.h"

int main(int id) {

    if (id == 0) {
      *token_l4 = 0;

        #include "mapping.h"
     
        while(1) {
            #include "lenet.h"
        }
    }
    else {
       
        volatile int *ptr_result_ref = (int *) 0x4200C018; 
        *ptr_result_ref = ref_output;
                #include "mapping1.h"
            
      
        while(1) {
            #include "lenet.h"
        }
    }
    
    return 0;
}

