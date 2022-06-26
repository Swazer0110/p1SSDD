cmake_minimum_required (VERSION 2.8.11)

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON) 


project (fmCliente LANGUAGES CXX)
add_executable (mainCliente mainCliente.cpp fm_stub.h fm_stub.cpp
                utils.h utils.cpp)
target_link_libraries(mainCliente pthread)

project (fmCliente LANGUAGES CXX)
add_executable (mainServer mainServer.cpp fm_imp.h fm_imp.cpp
                 filemanager.h filemanager.cpp utils.h utils.cpp)
target_link_libraries(mainServer pthread)
