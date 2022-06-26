//Miguel Alvarez y German Quero


#include "multmatrix_stub.h"

#define M_END 'E'
#define M_READ 'R'
#define M_MULT 'M'
#define M_WRITE 'W'

multMatrix_stub::multMatrix_stub(){

	char* ip=NULL;
	ip=new char[strlen(IP_SERVER)+1];
	memcpy(ip,IP_SERVER,strlen(IP_SERVER)+1);

	std::cout<<"INICIANDO CLIENTE\n";

	serverID=initClient(ip,PORT_SERVER);

    std::cout<<"CLIENTE INICIADO\n";


	if(serverID==-1)
	{
		std::cout<<"ERROR CLIENTE Fichero: "<<__FILE__<<" Línea: "<<__LINE__<<" Conexión no válida\n";
	}
	
	delete ip;
}

/////
/////
multMatrix_stub::~multMatrix_stub(){
	char msg=M_END;
	sendMSG(serverID, &msg, sizeof(char));
	//recibir resultado
	char* buff=nullptr;
	int dataLen=0;
	char state=0;
	recvMSG(serverID,(void**)&buff,&dataLen);
	memcpy(&state,buff,sizeof(char));
	delete buff;
	
	if(state!=M_END)
		std::cout<<"ERROR cerrando conexion\n";

}
	
/////
/////
matrix_t* multMatrix_stub::readMatrix(const char* fileName){
	//enviar mensaje de suma
	char msg=M_READ;
	char* data;
    int dataLen;
	matrix_t* matrix = new matrix_t[1];

    //Enviamos el tipo de operacion a realizar y el nombre del fichero
    sendMSG(serverID, &msg, sizeof(char));
    sendMSG(serverID, fileName, strlen(fileName)+1);

    //Recibimos el numero de filas y columnas
    recvMSG(serverID,(void**)&data, &dataLen);
    matrix->rows = ((int*)data)[0];
    delete[] data;
    
    recvMSG(serverID, (void**)&data, &dataLen);
    matrix->cols = ((int*)data)[0];
    delete[] data;

    recvMSG(serverID, (void**)&data, &dataLen);
    matrix->data = (int*)data;
    return matrix;
}

////
////
matrix_t* multMatrix_stub::multMatrices(matrix_t* m1, matrix_t *m2){

	char msg=M_MULT;
	char* data;
    int dataLen;
	
	matrix_t* matrix = new matrix_t[1];

    sendMSG(serverID, &msg, sizeof(char));
    
    //Envio de la primera matriz
    sendMSG(serverID, &m1->rows, sizeof(int));
    sendMSG(serverID, &m1->cols, sizeof(int));
    sendMSG(serverID, m1->data, (m1->rows*m1->cols)*sizeof(int));

    //Envio de la segunda matriz
    sendMSG(serverID, &m2->rows, sizeof(int));
    sendMSG(serverID, &m2->cols, sizeof(int));
    sendMSG(serverID, m2->data, (m2->rows*m2->cols)*sizeof(int));

    //Recibimos la matriz resultado
    recvMSG(serverID,(void**)&data, &dataLen);
    matrix->rows = ((int*)data)[0];
    delete[] data;
    
    recvMSG(serverID, (void**)&data, &dataLen);
    matrix->cols = ((int*)data)[0];
    delete[] data;

    recvMSG(serverID, (void**)&data, &dataLen);
    matrix->data = (int*)data;
    return matrix;
}

////////
////////
void multMatrix_stub::writeMatrix(matrix_t* m, const char *fileName){

	char msg=M_WRITE;

	sendMSG(serverID, &msg, sizeof(char));
    sendMSG(serverID, (void*)fileName, strlen(fileName)+1);

    sendMSG(serverID, &m->rows, sizeof(int));
    sendMSG(serverID, &m->cols, sizeof(int));
    sendMSG(serverID, m->data, (m->rows*m->cols)*sizeof(int));
}

///
///
matrix_t* multMatrix_stub::createMatrix(int rows, int cols, char msg)
{
	char* data;
    int dataLen;
	
	matrix_t* matrix = new matrix_t[1];

    sendMSG(serverID, &msg, sizeof(char));
    
    sendMSG(serverID, (void*)&rows, sizeof(int));
    sendMSG(serverID, (void*)&cols, sizeof(int));

    //Recibimos la matriz
    recvMSG(serverID,(void**)&data, &dataLen);
    matrix->rows = ((int*)data)[0];
    delete[] data;
    
    recvMSG(serverID, (void**)&data, &dataLen);
    matrix->cols = ((int*)data)[0];
    delete[] data;

    recvMSG(serverID, (void**)&data, &dataLen);
    matrix->data = (int*)data;

    return matrix;
	
}
