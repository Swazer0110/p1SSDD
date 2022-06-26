//Miguel Alvarez y German Quero


#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include "multmatrix_stub.h"
#include "multmatrix.h"


#define M_CI 'I'
#define M_CR 'A'

int main(int argc,char** argv)
{
    multMatrix_stub* mmatrix = new multMatrix_stub();
    matrix_t* m1 = mmatrix->createMatrix(2, 2, M_CR);
    matrix_t* m2 = mmatrix->createMatrix(2, 2, M_CI);
    matrix_t* mres = mmatrix->multMatrices(m1, m2);
    mmatrix->writeMatrix(mres, "resultado.txt");
    m2 = mmatrix->readMatrix("resultado.txt");
    mres = mmatrix->multMatrices(m2, m1);
    mmatrix->writeMatrix(mres, "resultado2.txt");


    mmatrix->~multMatrix_stub();
    delete[] m1;
    delete[] m2;
    delete[] mres;
    return 0;

}
