#include "fm_imp.h"


fm_imp::fm_imp(int clientID)
{
    clientID=clientID;
    fm=new FileManager("/Users/swazer/Documents/Programacion/Dist/Practica1/fileManager copy/dirprueba");
}

fm_imp::~fm_imp()
{
}

void fm_imp::exec(){
    while(true)
    {
        char* msg=nullptr;
		int dataLen=0;
        char c;
        recvMSG(clientID,(void**)&msg,&dataLen);
        c=msg[0];
        switch (c)
        {

        case 'l':{
            vector<string*>* vfiles=fm->listFiles();
            int tam=vfiles->size();
            char* strs =nullptr;

            sendMSG(clientID,(void *)&tam,sizeof(int));//mandar tamaño
            
            for(unsigned int i=0;i<vfiles->size();++i) //mandar nombres
            {
                strs=new char[10];
                memcpy(strs,vfiles->at(i)->c_str(),strlen(vfiles->at(i)->c_str())+1);
                sendMSG(clientID,(void*)strs,strlen(strs)+1);
                delete strs;
            }

            fm->freeListedFiles(vfiles);
            delete msg;
        }break;

        case 'c':{
			char* fileName=nullptr;
			char* datosLeidos=nullptr;
			unsigned long int fsize=0;
            recvMSG(clientID,(void**)&fileName,&dataLen); //recibir nombre fichero

            fm->readFile(fileName,datosLeidos,fsize); //lectura del contenido

			sendMSG(clientID,(void*)datosLeidos,fsize+1);//envio contenido
        }break;

        case 'w':{
			char* fileName=nullptr;
            char* contenido=nullptr;
			unsigned long int fsize=0;
            recvMSG(clientID,(void**)&fileName,&dataLen); //recibir nombre fichero
            recvMSG(clientID,(void**)&contenido,&dataLen); //recibir contenido fichero
            fm->writeFile(fileName,contenido,strlen(contenido));//escribir contenido
        }break;

        case 'u':{
			char* fileName=nullptr;
            char* contenido=nullptr;
            recvMSG(clientID,(void**)&fileName,&dataLen); //recibir nombre fichero
            recvMSG(clientID,(void**)&contenido,&dataLen); //recibir contenido fichero

            fm->writeFile(fileName,contenido,strlen(contenido));//escribir contenido
        }break;

        case 'd':{
			char* fileName=nullptr;
			char* datosLeidos=nullptr;
			unsigned long int fsize=0;
            recvMSG(clientID,(void**)&fileName,&dataLen); //recibir nombre fichero

            fm->readFile(fileName,datosLeidos,fsize); //lectura del contenido

			sendMSG(clientID,(void*)datosLeidos,fsize);
        }break;

        case 'e':
            return;
        break;
        default:
            break;
        }
    }
    
}