//Miguel Alvarez y German Quero


#pragma once
//linka con el cliente, reproduce la clase base

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "utils.h"
#include "multmatrix.h"

#define IP_SERVER "127.0.0.1"
#define PORT_SERVER  8081


class multMatrix_stub
{
private:

	int serverID=0;

public:

	multMatrix_stub();
	~multMatrix_stub();
	matrix_t* readMatrix(const char* fileName);
    matrix_t *multMatrices(matrix_t* m1, matrix_t *m2);
    void writeMatrix(matrix_t* m, const char *fileName);
    matrix_t *createMatrix(int rows, int cols, char msg);
};
