

#pragma once

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "utils.h"
#include "filemanager.h"

#define IP_SERVER "127.0.0.1"
#define PORT_SERVER  3301


class fm_imp
{
private:

    FileManager* fm;
    int clientID;

public:

    fm_imp(int clientID);
    ~fm_imp();
    void exec();

};


