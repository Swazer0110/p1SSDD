

#include "fm_stub.h"
#include <string>
#include <iostream>


int main(int argc, char const *argv[])
{
    fm_stub* fm = new fm_stub();
    char op[10];
    char op2[10];
    while(true){
        std::cout<<"\nPractica1~$";
        std::cin>>op;
        if(strcmp(op,"help")==0){
            std::cout<<"ls\ncat(+nombrearchivo)\nwrite(+nombrearchivo+contenido)\nupload(+nombrearchivo)\ndownload(+nombrearhcivo)\nexit\n ";
        }
        else if(strcmp(op,"ls")==0){
            fm->ls();
        }
        else if(strcmp(op,"exit")==0){
            fm->exit(); 
            return 0;
        }
        else if(strcmp(op,"cat")==0){
            std::cin>>op; //nombre archivo
            fm->cat(op);
        }
        else if(strcmp(op,"write")==0){
            std::cin>>op; //nombre archivo
            std::cin>>op2; //contenido archivo
            fm->write(op,op2);
        }
        else if(strcmp(op,"upload")==0){
            std::cin>>op; //nombre archivo
            fm->upload(op);
        }
        else if(strcmp(op,"download")==0){  
            std::cin>>op;  //nombre archivo
            fm->download(op);
        }
        else{
            std::cout<<"Comando invalido\n";
        }
        
    }
    return 0;
    
}
