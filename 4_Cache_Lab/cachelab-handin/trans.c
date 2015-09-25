// name: Long He, id: longh
/*
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N]) {
    int x0, x1, x2, x3, x4, x5, x6, x7;
    int i, j, k, l;
    
    REQUIRES(M > 0);
    REQUIRES(N > 0);
    
    switch (M) {
        case 32:
            for (i = 0; i < 4; i++) {
                for (j = 0; j < 4; j++) {
                    if (i != j) {
                        for (k = 0; k < 8; k++) {
                            for (l = 0; l < 8; l++) {
                                B[j * 8 + l][i * 8 + k] = A[i * 8 + k][j * 8 + l];
                            }
                        }
                    }
                    else {
                        for (k = 0; k < 8; k++) {
                            x0 = A[i * 8 + k][j * 8 + 0];
                            x1 = A[i * 8 + k][j * 8 + 1];
                            x2 = A[i * 8 + k][j * 8 + 2];
                            x3 = A[i * 8 + k][j * 8 + 3];
                            x4 = A[i * 8 + k][j * 8 + 4];
                            x5 = A[i * 8 + k][j * 8 + 5];
                            x6 = A[i * 8 + k][j * 8 + 6];
                            x7 = A[i * 8 + k][j * 8 + 7];
                            B[j * 8 + 0][i * 8 + k] = x0;
                            B[j * 8 + 1][i * 8 + k] = x1;
                            B[j * 8 + 2][i * 8 + k] = x2;
                            B[j * 8 + 3][i * 8 + k] = x3;
                            B[j * 8 + 4][i * 8 + k] = x4;
                            B[j * 8 + 5][i * 8 + k] = x5;
                            B[j * 8 + 6][i * 8 + k] = x6;
                            B[j * 8 + 7][i * 8 + k] = x7;
                        }
                    }
                }
            }
            break;
        case 64:
            for (i = 0; i < 8; i++) {
                for (j = 0; j < 8; j++) {
                    if (i != j) {
                        for (k = 0; k < 4; k++) {
                            for (l = 0; l < 4; l++) {
                                B[j * 8 + l][i * 8 + k] = A[i * 8 + k][j * 8 + l];
                            }
                        }
                        x0 = A[i * 8 + 0][j * 8 + 4];
                        x1 = A[i * 8 + 0][j * 8 + 5];
                        x2 = A[i * 8 + 0][j * 8 + 6];
                        x3 = A[i * 8 + 0][j * 8 + 7];
                        x4 = A[i * 8 + 1][j * 8 + 4];
                        x5 = A[i * 8 + 1][j * 8 + 5];
                        x6 = A[i * 8 + 1][j * 8 + 6];
                        x7 = A[i * 8 + 1][j * 8 + 7];
                        for (k = 4; k < 8; k++) {
                            for (l = 0; l < 4; l++) {
                                B[j * 8 + l][i * 8 + k] = A[i * 8 + k][j * 8 + l];
                            }
                        }
                        for (k = 4; k < 8; k++) {
                            for (l = 4; l < 8; l++) {
                                B[j * 8 + l][i * 8 + k] = A[i * 8 + k][j * 8 + l];
                            }
                        }
                        B[j * 8 + 4][i * 8 + 0] = x0;
                        B[j * 8 + 5][i * 8 + 0] = x1;
                        B[j * 8 + 6][i * 8 + 0] = x2;
                        B[j * 8 + 7][i * 8 + 0] = x3;
                        B[j * 8 + 4][i * 8 + 1] = x4;
                        B[j * 8 + 5][i * 8 + 1] = x5;
                        B[j * 8 + 6][i * 8 + 1] = x6;
                        B[j * 8 + 7][i * 8 + 1] = x7;
                        for (k = 2; k < 4; k++) {
                            for (l = 4; l < 8; l++) {
                                B[j * 8 + l][i * 8 + k] = A[i * 8 + k][j * 8 + l];
                            }
                        }
                    } 
                    else {
                        for (k = 0; k < 2; k++) {
                            for (l = 0; l < 2; l++) {
                                x0 = A[i * 8 + k * 4 + 0][j * 8 + l * 4 + 2];
                                x1 = A[i * 8 + k * 4 + 0][j * 8 + l * 4 + 3];
                                x2 = A[i * 8 + k * 4 + 1][j * 8 + l * 4 + 2];
                                x3 = A[i * 8 + k * 4 + 1][j * 8 + l * 4 + 3];
                                x4 = A[i * 8 + k * 4 + 2][j * 8 + l * 4 + 2];
                                x5 = A[i * 8 + k * 4 + 2][j * 8 + l * 4 + 3];
                                x6 = A[i * 8 + k * 4 + 3][j * 8 + l * 4 + 2];
                                x7 = A[i * 8 + k * 4 + 3][j * 8 + l * 4 + 3];
                                B[j * 8 + l * 4 + 2][i * 8 + k * 4 + 0] = x0;
                                B[j * 8 + l * 4 + 2][i * 8 + k * 4 + 1] = x2;
                                B[j * 8 + l * 4 + 2][i * 8 + k * 4 + 2] = x4;
                                B[j * 8 + l * 4 + 2][i * 8 + k * 4 + 3] = x6;
                                B[j * 8 + l * 4 + 3][i * 8 + k * 4 + 0] = x1;
                                B[j * 8 + l * 4 + 3][i * 8 + k * 4 + 1] = x3;
                                B[j * 8 + l * 4 + 3][i * 8 + k * 4 + 2] = x5;
                                B[j * 8 + l * 4 + 3][i * 8 + k * 4 + 3] = x7;
                                x0 = A[i * 8 + k * 4 + 0][j * 8 + l * 4 + 0];
                                x1 = A[i * 8 + k * 4 + 0][j * 8 + l * 4 + 1];
                                x2 = A[i * 8 + k * 4 + 1][j * 8 + l * 4 + 0];
                                x3 = A[i * 8 + k * 4 + 1][j * 8 + l * 4 + 1];
                                x4 = A[i * 8 + k * 4 + 2][j * 8 + l * 4 + 0];
                                x5 = A[i * 8 + k * 4 + 2][j * 8 + l * 4 + 1];
                                x6 = A[i * 8 + k * 4 + 3][j * 8 + l * 4 + 0];
                                x7 = A[i * 8 + k * 4 + 3][j * 8 + l * 4 + 1];
                                B[j * 8 + l * 4 + 0][i * 8 + k * 4 + 0] = x0;
                                B[j * 8 + l * 4 + 0][i * 8 + k * 4 + 1] = x2;
                                B[j * 8 + l * 4 + 0][i * 8 + k * 4 + 2] = x4;
                                B[j * 8 + l * 4 + 0][i * 8 + k * 4 + 3] = x6;
                                B[j * 8 + l * 4 + 1][i * 8 + k * 4 + 0] = x1;
                                B[j * 8 + l * 4 + 1][i * 8 + k * 4 + 1] = x3;
                                B[j * 8 + l * 4 + 1][i * 8 + k * 4 + 2] = x5;
                                B[j * 8 + l * 4 + 1][i * 8 + k * 4 + 3] = x7;
                            }
                        }
                    }
                }
            }
            break;
        case 61:
            for (i = 0; i < 8; i++) {
                for (j = 0; j < 7; j++) {
                    for (k = 0; k < 8; k++) {
                        x0 = A[i * 8 + k][j * 8 + 0];
                        x1 = A[i * 8 + k][j * 8 + 1];
                        x2 = A[i * 8 + k][j * 8 + 2];
                        x3 = A[i * 8 + k][j * 8 + 3];
                        x4 = A[i * 8 + k][j * 8 + 4];
                        x5 = A[i * 8 + k][j * 8 + 5];
                        x6 = A[i * 8 + k][j * 8 + 6];
                        x7 = A[i * 8 + k][j * 8 + 7];
                        B[j * 8 + 0][i * 8 + k] = x0;
                        B[j * 8 + 1][i * 8 + k] = x1;
                        B[j * 8 + 2][i * 8 + k] = x2;
                        B[j * 8 + 3][i * 8 + k] = x3;
                        B[j * 8 + 4][i * 8 + k] = x4;
                        B[j * 8 + 5][i * 8 + k] = x5;
                        B[j * 8 + 6][i * 8 + k] = x6;
                        B[j * 8 + 7][i * 8 + k] = x7;
                    }
                }
            }
            for (j = 0; j < 7; j++) {
                for (i = 64; i < 67; i++) {
                    x0 = A[i][j * 8 + 0];
                    x1 = A[i][j * 8 + 1];
                    x2 = A[i][j * 8 + 2];
                    x3 = A[i][j * 8 + 3];
                    x4 = A[i][j * 8 + 4];
                    x5 = A[i][j * 8 + 5];
                    x6 = A[i][j * 8 + 6];
                    x7 = A[i][j * 8 + 7];
                    B[j * 8 + 0][i] = x0;
                    B[j * 8 + 1][i] = x1;
                    B[j * 8 + 2][i] = x2;
                    B[j * 8 + 3][i] = x3;
                    B[j * 8 + 4][i] = x4;
                    B[j * 8 + 5][i] = x5;
                    B[j * 8 + 6][i] = x6;
                    B[j * 8 + 7][i] = x7;
                }
            }
            for (i = 0; i < 67; i++) {
                x0 = A[i][56];
                x1 = A[i][57];
                x2 = A[i][58];
                x3 = A[i][59];
                x4 = A[i][60];
                B[56][i] = x0;
                B[57][i] = x1;
                B[58][i] = x2;
                B[59][i] = x3;
                B[60][i] = x4;
            }
            break;
        default:
            break;
    }
    
    ENSURES(is_transpose(M, N, A, B));
}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

/*
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N]) {
    int i, j, tmp;
    
    REQUIRES(M > 0);
    REQUIRES(N > 0);
    
    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }
    
    ENSURES(is_transpose(M, N, A, B));
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions() {
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);
    
    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc);
    
}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N]) {
    int i, j;
    
    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}