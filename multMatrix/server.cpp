//Miguel Alvarez y German Quero


#include "utils.h"
#include <string>
#include "multmatrix_imp.h"

void clientHandler(int clientID)
{
    multimatrix_imp* op=new multimatrix_imp(clientID);

    while(!op->salir)
        op->recvOp();

    delete op;
}

int main(int argc,char** argv)
{
    	std::cout<<"INICIANDO SERVIDOR\n";

        int server_fd=initServer(8081);

        std::cout<<"SERVIDOR INICIADO\n";

        while(true)
        {
            if(checkNewConnections())
            {
                int newID=getNewConnection();
                std::thread* newClient=new std::thread(clientHandler,newID);
            }
            usleep(1000);
        }

        return 0;
}
