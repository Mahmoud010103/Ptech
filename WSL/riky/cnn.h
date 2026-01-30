
#ifndef CNN_H
#define CNN_H

float Relu(float x) {
    if (x < 0){
        return 0;
    } else {
        return x;
    }
}

void L1_Conv_1(float input[1][1][32][32], float output[1][6][28][28]){
    float sum = 0.0;

    for (int b = 0; b < 1; b++) {                                                                                       // Batch size
        for (int c_out = 0; c_out < 6; c_out++) {                                                                       // Number of output channels
            for (int i = 0; i < 28; i++) {                                                                              // Output image width
                for (int j = 0; j < 28; j++) {                                                                          // Output image height
                    sum = 0.0;                                                                                          // Initialize sum
                    for (int c_in = 0; c_in < 1; c_in++) {                                                              // Number of input channels
                        for (int k1 = 0; k1 < 5; k1++) {                                                                // Kernel width
                            for (int k2 = 0; k2 < 5; k2++) {                                                            // Kernel height
                                sum = sum + input[b][c_in][1*i + k1][1*j + k2] * conv1_weights[c_out][c_in][k1][k2];     // Compute convolution (MAC)
                            }
                        }
                    }
					output[b][c_out][i][j] = Relu(sum + conv1_bias[c_out]);                                             // Add bias and apply activation function (compute 1 pixel of the output image)
                }
            }
        }
    }
}

/*
void L2_MaxPool_1(float input[1][6][28][28], float output[1][6][14][14]){
    float cur_max = 0.0;
    
    for (int b = 0; b < 1; b++) {
        for (int c = 0; c < 6; c++) {
            for (int i = 0; i < 14; i++) {
                for (int j = 0; j < 14; j++) {
                    cur_max = input[b][c][2*i][2*j];
                    for (int k1 = 0; k1 < 2; k1++) {
                        for (int k2 = 0; k2 < 2; k2++) {
                            if (input[b][c][2*i + k1 - 0][2*j + k2 - 0] > cur_max) {
                                    cur_max = input[b][c][2*i + k1 - 0][2*j + k2 - 0];
                            }
                        }
                    }
                    output[b][c][i][j] = cur_max;
                }
            }
        }
    }
}

void L3_Conv_2(float input[1][6][14][14], float output[1][16][10][10]){
    float sum = 0.0;

    for (int b = 0; b < 1; b++) {
        for (int c_out = 0; c_out < 16; c_out++) {
            for (int i = 0; i < 10; i++) {
                for (int j = 0; j < 10; j++) {
                    sum = 0.0;
                    for (int c_in = 0; c_in < 6; c_in++) {
                        for (int k1 = 0; k1 < 5; k1++) {
                            for (int k2 = 0; k2 < 5; k2++) {
                                sum = sum + input[b][c_in][1*i + k1][1*j + k2] * conv2_weights[c_out][c_in][k1][k2];
                            }
                        }
                    }
					output[b][c_out][i][j] = Relu(sum + conv2_bias[c_out]);
                }
            }
        }
    }
}

void L4_MaxPool_2(float input[1][16][10][10], float output[1][16][5][5]){
    float cur_max = 0.0;
    
    for (int b = 0; b < 1; b++) {
        for (int c = 0; c < 16; c++) {
            for (int i = 0; i < 5; i++) {
                for (int j = 0; j < 5; j++) {
                    cur_max = input[b][c][2*i][2*j];
                    for (int k1 = 0; k1 < 2; k1++) {
                        for (int k2 = 0; k2 < 2; k2++) {
                            if (input[b][c][2*i + k1 - 0][2*j + k2 - 0] > cur_max) {
                                    cur_max = input[b][c][2*i + k1 - 0][2*j + k2 - 0];
                            }
                        }
                    }
                    output[b][c][i][j] = cur_max;
                }
            }
        }
    }
}

void L5_Conv_3(float input[1][16][5][5], float output[1][120][1][1]){
    float sum = 0.0;

    for (int b = 0; b < 1; b++) {
        for (int c_out = 0; c_out < 120; c_out++) {
            for (int i = 0; i < 1; i++) {
                for (int j = 0; j < 1; j++) {
                    sum = 0.0;
                    for (int c_in = 0; c_in < 16; c_in++) {
                        for (int k1 = 0; k1 < 5; k1++) {
                            for (int k2 = 0; k2 < 5; k2++) {
                                sum = sum + input[b][c_in][1*i + k1][1*j + k2] * conv3_weights[c_out][c_in][k1][k2];
                            }
                        }
                    }
					output[b][c_out][i][j] = Relu(sum + conv3_bias[c_out]);
                }
            }
        }
    }
}

void L6_FC_1(float input[1][120], float output[1][84]){
    float tmp;
    for (int b = 0; b < 1; b++) {                       // Batch size
        for (int i = 0; i < 84; i++) {                  // Number of output neurons
            tmp=0;
            for (int j = 0; j < 120; j++) {             // Number of input neurons
                tmp += fc1_weights[i][j] * input[b][j];  // Perform MAC operation
            }
            tmp += fc1_bias[i];
            output[b][i] = Relu(tmp);
        }
    }
}

void L7_FC_2(float input[1][84], float output[1][10]){
    float tmp;
    for (int b = 0; b < 1; b++) {
        for (int i = 0; i < 10; i++) {
            tmp=0;
            for (int j = 0; j < 84; j++) {
                tmp += fc2_weights[i][j] * input[b][j];
            }
            tmp += fc2_bias[i];
            output[b][i] = (tmp);
        }
    }
}

void LogSoftmax_8(float input[1][10], float output[1][10]){
    float sum = 0;
    for (int b = 0; b < 1; b++) {
        for (int i = 0; i < 10; i++) {
            sum += exp(input[b][i]);
        } 
    }
    for (int b = 0; b < 1; b++) {
        for (int i = 0; i < 10; i++) {
            output[b][i] = exp(input[b][i])/sum;
        } 
    }

}
*/
int give_prediction(float input[10]) {
    float max_val = input[0];
    int max_pos = 0;
    for (int i = 1; i < 10; i++) {
        if (input[i] > max_val) {
            max_val = input[i];
            max_pos = i;
        }
    }
    return max_pos;
}

#endif