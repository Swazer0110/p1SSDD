

#include "fm_stub.h"

fm_stub::fm_stub()
{
    char* ip=NULL;
	ip=new char[strlen(IP_SERVER)+1];
	memcpy(ip,IP_SERVER,strlen(IP_SERVER)+1);

	std::cout<<"INICIANDO CLIENTE\n";

	serverID=initClient(ip,PORT_SERVER);
	if(serverID==-1)
	{
		std::cout<<"ERROR CLIENTE Fichero: "<<__FILE__<<" Línea: "<<__LINE__<<" Conexión no válida\n";
	}
	
	delete ip;
}

fm_stub::~fm_stub()
{
}

void fm_stub::ls()
{
	char op='l';
	int dataLen=0;
	char* buff=nullptr;
	int numficheros=0xFFFFFFFF;
	sendMSG(serverID,(void*)&op,sizeof(char));//mandar comando

	recvMSG(serverID,(void**)&buff,&dataLen);//numero de ficheros
	memcpy(&numficheros,buff,sizeof(int));

	for (int i = 0; i < numficheros; i++) //nombre ficheros
	{
		delete buff;
		recvMSG(serverID,(void**)&buff,&dataLen);
		std::cout<<"\nFichero:"<<buff;
	}

	std::cout<<"\n";
	delete buff;
}

void fm_stub::cat(const char* filename)
{
	char op='c';
	char* buff=nullptr;
	int dataLen=0;

	sendMSG(serverID,(void*)&op,sizeof(char));//mandar comando
	sendMSG(serverID,(void*)filename,strlen(filename)+1);//mandar nombre

	recvMSG(serverID,(void**)&buff,&dataLen);//recibir contenido fichero
	std::cout<<buff<<"\n";
	delete buff;
}

void fm_stub::write(const char* filename,const char* contenido)
{
	char op='w';
	char* buff=nullptr;

	sendMSG(serverID,(void *)&op,sizeof(char));//mandar comando
	sendMSG(serverID,(void*)filename,strlen(filename)+1);//mandar nombre
	sendMSG(serverID,(void*)contenido,strlen(contenido)+1);//mandar contenido
}

void fm_stub::upload(const char* filename)
{
	char op='u';
	char* datosLeidos=nullptr;
	int fsize=0;
	char path[]="/./dirlocal/";
    strcat(path,filename);

	FILE* fichero=fopen(path,"rb"); //lectura fichero
    if (fichero == NULL) perror ("Error opening file");
	fseek(fichero,0,SEEK_END);
	fsize=ftell(fichero);
	fseek(fichero,0,SEEK_SET);
    datosLeidos=new char[fsize];
    fread(datosLeidos,fsize, 1, fichero);
    fclose(fichero);

	sendMSG(serverID,(void *)&op,sizeof(char));//mandar comando
	sendMSG(serverID,(void*)filename,strlen(filename)+1);//mandar nombre
	sendMSG(serverID,(void*)datosLeidos,fsize);//mandar contenido
}

void fm_stub::download(const char* filename)
{
	char op='d';
	char* contenido=nullptr;
	int dataLen=0;
	char path[]="/./dirlocal/";
    

	sendMSG(serverID,(void *)&op,sizeof(char));//mandar comando
	sendMSG(serverID,(void*)filename,strlen(filename)+1);//mandar nombre

	strcat(path,filename);
	recvMSG(serverID,(void**)&contenido,&dataLen);//recibir contenido fichero
	FILE* fichero=fopen(path,"w"); //Escritura fichero
    fwrite(contenido,dataLen,1,fichero);
    fclose(fichero);
}

void fm_stub::exit()
{
	char op='e';
	sendMSG(serverID,(void *)&op,sizeof(char));//mandar comando
}
