//Miguel Alvarez y German Quero


#include "multmatrix_imp.h"

#define M_END 'E'
#define M_READ 'R'
#define M_MULT 'M'
#define M_WRITE 'W'
#define M_CI 'I'
#define M_CR 'A'


multimatrix_imp::multimatrix_imp(int clientID){

	m = new multMatrix();
	//inicializar estados, extra... 
	salir=false;
	this->clientID=clientID;

}

multimatrix_imp::~multimatrix_imp()
{
    delete m;
    closeConnection(clientID);
}


void multimatrix_imp::recvOp(){

	while(!salir)
	{
		//ejecutar
		//recibir tipo de operacion
		char* msg=NULL;
		int dataLen=0;
		char tipo_op=-1;

		recvMSG(clientID,(void**)&msg,&dataLen);
		std::cout << dataLen << " <<<<<\n";
		if(dataLen!=1)
		{	
			std::cout<<"1:Error, tipo operacion no valido\n";
		}else
		{
			tipo_op=msg[0];
			delete msg;
			
			switch(tipo_op)
			{
				case M_READ:
				{
					char* fileName;
					matrix_t* matrix = new matrix_t[1];

					//Recibimos el nombre del fichero
					recvMSG(clientID, (void**)&msg, &dataLen);
					fileName=new char[strlen(msg)+1];
					memcpy(fileName,msg,strlen(msg)+1);
					delete[] msg;

					matrix = m->readMatrix(fileName);

					//Enviamos la matriz leida -> filas, columnas y datos
					sendMSG(clientID, &matrix->rows, sizeof(int));
					sendMSG(clientID, &matrix->cols, sizeof(int));
					sendMSG(clientID, matrix->data, (matrix->rows*matrix->cols)*sizeof(int));

					delete[] matrix->data;
					delete[] matrix;
					std::cout << "M_READ done.";
				}break;
				
				case M_MULT:
				{
					matrix_t* matrix1 = new matrix_t[1];
					matrix_t* matrix2 = new matrix_t[1];
					matrix_t* matrixResultado = new matrix_t[1];

					//Recibimos las filas, columnas y datos de la primera matriz
					recvMSG(clientID,(void**)&msg, &dataLen);
					matrix1->rows = ((int*)msg)[0];
					delete[] msg;

					recvMSG(clientID, (void**)&msg, &dataLen);
					matrix1->cols = ((int*)msg)[0];
					delete[] msg;

					recvMSG(clientID, (void**)&msg, &dataLen);
					matrix1->data = ((int*)msg);

					//Recibimos las filas, columnas y datos de la segunda matriz
					recvMSG(clientID,(void**)&msg, &dataLen);
					matrix2->rows = ((int*)msg)[0];
					delete[] msg;

					recvMSG(clientID, (void**)&msg, &dataLen);
					matrix2->cols = ((int*)msg)[0];
					delete[] msg;

					recvMSG(clientID, (void**)&msg, &dataLen);
					matrix2->data = ((int*)msg);


					matrixResultado = m->multMatrices(matrix1, matrix2);

					//Enviamos la matriz resultado
					sendMSG(clientID, &matrixResultado->rows, sizeof(int));
					sendMSG(clientID, &matrixResultado->cols, sizeof(int));
					sendMSG(clientID, matrixResultado->data, (matrixResultado->rows*matrixResultado->cols)*sizeof(int));

					delete[] matrixResultado->data;           
					delete[] matrix1->data;
					delete[] matrix2->data;

					delete[] matrix1;
					delete[] matrix2;
					delete[] matrixResultado;

					std::cout << "M_MULT done.";
				}break;

				case M_CI:
				{
					matrix_t* matrix = new matrix_t[1];
					int rows;
					int cols;

					//Recibimos el numero de filas
					recvMSG(clientID, (void**)&msg, &dataLen);
					rows = ((int*)msg)[0];
					delete[] msg;

					//Recibimos el numero de columnas
					recvMSG(clientID, (void**)&msg, &dataLen);
					cols = ((int*)msg)[0];
					delete[] msg;
					
					matrix = m->createIdentity(rows, cols);

					//Envia los datos de la matriz identidad
					sendMSG(clientID, &matrix->rows, sizeof(int));
					sendMSG(clientID, &matrix->cols, sizeof(int));
					sendMSG(clientID, matrix->data, (matrix->rows*matrix->cols)*sizeof(int));

					delete[] matrix->data; 
					delete[] matrix;

					std::cout << "M_CI done.";
				}break;

				case M_CR:
				{
					matrix_t* matrix = new matrix_t[1];
					int rows;
					int cols;
					
					//Recibimos el numero de filas
					recvMSG(clientID, (void**)&msg, &dataLen);
					rows = ((int*)msg)[0];
					delete[] msg;

					//Recibimos el numero de columnas
					recvMSG(clientID, (void**)&msg, &dataLen);
					cols = ((int*)msg)[0];
					delete[] msg;
					
					matrix = m->createRandMatrix(rows, cols);

					//Envia los datos de la matriz random
					sendMSG(clientID, &matrix->rows, sizeof(int));
					sendMSG(clientID, &matrix->cols, sizeof(int));
					sendMSG(clientID, matrix->data, (matrix->rows*matrix->cols)*sizeof(int));

					delete[] matrix->data; 
					delete[] matrix;
					std::cout << "M_CR done.";
					
				}break;

				case M_WRITE:
				{
					char* fileName = NULL;
					matrix_t* matrix = new matrix_t[1];

					//Recibimos el nombre del fichero
					recvMSG(clientID, (void**)&msg, &dataLen);
					fileName=new char[strlen(msg)+1];
					memcpy(fileName,msg,strlen(msg)+1);
					delete[] msg;
					

					//Recibimos la matriz
					recvMSG(clientID,(void**)&msg, &dataLen);
					matrix->rows = ((int*)msg)[0];
					delete[] msg;

					recvMSG(clientID, (void**)&msg, &dataLen);
					matrix->cols = ((int*)msg)[0];
					delete[] msg;

					recvMSG(clientID, (void**)&msg, &dataLen);
					matrix->data = ((int*)msg);

					//Escribimos la matriz
					m->writeMatrix(matrix, fileName);

					delete[] matrix->data; 
					delete[] matrix;
					std::cout << "M_WRITE done.";
					
				}break;

				case M_END:
				{
					salir=true;
					char opOK=M_END;
					sendMSG(clientID,(void*)&opOK,sizeof(char));
					std::cout << "M_END done.";
				}break;
				
				default:
					std::cout<<"2:Error, tipo operacion no valido\n";
				break;
				
			}
		}
	}
}







