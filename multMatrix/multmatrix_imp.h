//Miguel Alvarez y German Quero


#pragma once
//linka con el cliente, reproduce la clase base

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include "utils.h"
#include "multmatrix.h"


class multimatrix_imp{
private:
	int clientID=0;
	multMatrix* m;
public:
	multimatrix_imp(int clientID);
    ~multimatrix_imp();
	void recvOp();
	bool salir =false;
};