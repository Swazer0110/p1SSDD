cmake_minimum_required (VERSION 2.8.11)

project (multMatrix)

add_executable(client_multMatrix client.cpp utils.h utils.cpp multmatrix.cpp multmatrix.h multmatrix_stub.cpp multmatrix_stub.h)
target_link_libraries(client_multMatrix pthread)
add_executable(server_multMatrix utils.h utils.cpp server.cpp multmatrix.cpp multmatrix_imp.cpp multmatrix_imp.h)
target_link_libraries(server_multMatrix pthread)