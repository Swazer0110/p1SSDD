

#include "fm_imp.h"

int main(int argc, char const *argv[])
{
    
    int idSocket=0;
	idSocket=initServer(3301);
    int clientID=waitForConnections(idSocket);
    fm_imp* fm=new fm_imp(clientID);
    fm->exec();
    
    return 0;
}
