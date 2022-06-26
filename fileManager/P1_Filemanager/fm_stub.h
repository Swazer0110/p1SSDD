

#pragma once

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include "utils.h"

#define IP_SERVER "127.0.0.1"
#define PORT_SERVER  3301


class fm_stub
{
private:

    int serverID=0;

public:

    fm_stub();
    ~fm_stub();
    void ls();
    void cat(const char* p);
    void write(const char* p,const char* p2);
    void upload(const char* p);
    void download(const char* p);
    void exit();

};