# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wave/Utad/SD/Practica1/multMatrix

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wave/Utad/SD/Practica1/multMatrix

# Include any dependencies generated for this target.
include CMakeFiles/client_multMatrix.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/client_multMatrix.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/client_multMatrix.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/client_multMatrix.dir/flags.make

CMakeFiles/client_multMatrix.dir/client.cpp.o: CMakeFiles/client_multMatrix.dir/flags.make
CMakeFiles/client_multMatrix.dir/client.cpp.o: client.cpp
CMakeFiles/client_multMatrix.dir/client.cpp.o: CMakeFiles/client_multMatrix.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wave/Utad/SD/Practica1/multMatrix/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/client_multMatrix.dir/client.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client_multMatrix.dir/client.cpp.o -MF CMakeFiles/client_multMatrix.dir/client.cpp.o.d -o CMakeFiles/client_multMatrix.dir/client.cpp.o -c /home/wave/Utad/SD/Practica1/multMatrix/client.cpp

CMakeFiles/client_multMatrix.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client_multMatrix.dir/client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wave/Utad/SD/Practica1/multMatrix/client.cpp > CMakeFiles/client_multMatrix.dir/client.cpp.i

CMakeFiles/client_multMatrix.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client_multMatrix.dir/client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wave/Utad/SD/Practica1/multMatrix/client.cpp -o CMakeFiles/client_multMatrix.dir/client.cpp.s

CMakeFiles/client_multMatrix.dir/utils.cpp.o: CMakeFiles/client_multMatrix.dir/flags.make
CMakeFiles/client_multMatrix.dir/utils.cpp.o: utils.cpp
CMakeFiles/client_multMatrix.dir/utils.cpp.o: CMakeFiles/client_multMatrix.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wave/Utad/SD/Practica1/multMatrix/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/client_multMatrix.dir/utils.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client_multMatrix.dir/utils.cpp.o -MF CMakeFiles/client_multMatrix.dir/utils.cpp.o.d -o CMakeFiles/client_multMatrix.dir/utils.cpp.o -c /home/wave/Utad/SD/Practica1/multMatrix/utils.cpp

CMakeFiles/client_multMatrix.dir/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client_multMatrix.dir/utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wave/Utad/SD/Practica1/multMatrix/utils.cpp > CMakeFiles/client_multMatrix.dir/utils.cpp.i

CMakeFiles/client_multMatrix.dir/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client_multMatrix.dir/utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wave/Utad/SD/Practica1/multMatrix/utils.cpp -o CMakeFiles/client_multMatrix.dir/utils.cpp.s

CMakeFiles/client_multMatrix.dir/multmatrix.cpp.o: CMakeFiles/client_multMatrix.dir/flags.make
CMakeFiles/client_multMatrix.dir/multmatrix.cpp.o: multmatrix.cpp
CMakeFiles/client_multMatrix.dir/multmatrix.cpp.o: CMakeFiles/client_multMatrix.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wave/Utad/SD/Practica1/multMatrix/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/client_multMatrix.dir/multmatrix.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client_multMatrix.dir/multmatrix.cpp.o -MF CMakeFiles/client_multMatrix.dir/multmatrix.cpp.o.d -o CMakeFiles/client_multMatrix.dir/multmatrix.cpp.o -c /home/wave/Utad/SD/Practica1/multMatrix/multmatrix.cpp

CMakeFiles/client_multMatrix.dir/multmatrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client_multMatrix.dir/multmatrix.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wave/Utad/SD/Practica1/multMatrix/multmatrix.cpp > CMakeFiles/client_multMatrix.dir/multmatrix.cpp.i

CMakeFiles/client_multMatrix.dir/multmatrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client_multMatrix.dir/multmatrix.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wave/Utad/SD/Practica1/multMatrix/multmatrix.cpp -o CMakeFiles/client_multMatrix.dir/multmatrix.cpp.s

CMakeFiles/client_multMatrix.dir/multmatrix_stub.cpp.o: CMakeFiles/client_multMatrix.dir/flags.make
CMakeFiles/client_multMatrix.dir/multmatrix_stub.cpp.o: multmatrix_stub.cpp
CMakeFiles/client_multMatrix.dir/multmatrix_stub.cpp.o: CMakeFiles/client_multMatrix.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wave/Utad/SD/Practica1/multMatrix/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/client_multMatrix.dir/multmatrix_stub.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client_multMatrix.dir/multmatrix_stub.cpp.o -MF CMakeFiles/client_multMatrix.dir/multmatrix_stub.cpp.o.d -o CMakeFiles/client_multMatrix.dir/multmatrix_stub.cpp.o -c /home/wave/Utad/SD/Practica1/multMatrix/multmatrix_stub.cpp

CMakeFiles/client_multMatrix.dir/multmatrix_stub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client_multMatrix.dir/multmatrix_stub.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wave/Utad/SD/Practica1/multMatrix/multmatrix_stub.cpp > CMakeFiles/client_multMatrix.dir/multmatrix_stub.cpp.i

CMakeFiles/client_multMatrix.dir/multmatrix_stub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client_multMatrix.dir/multmatrix_stub.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wave/Utad/SD/Practica1/multMatrix/multmatrix_stub.cpp -o CMakeFiles/client_multMatrix.dir/multmatrix_stub.cpp.s

# Object files for target client_multMatrix
client_multMatrix_OBJECTS = \
"CMakeFiles/client_multMatrix.dir/client.cpp.o" \
"CMakeFiles/client_multMatrix.dir/utils.cpp.o" \
"CMakeFiles/client_multMatrix.dir/multmatrix.cpp.o" \
"CMakeFiles/client_multMatrix.dir/multmatrix_stub.cpp.o"

# External object files for target client_multMatrix
client_multMatrix_EXTERNAL_OBJECTS =

client_multMatrix: CMakeFiles/client_multMatrix.dir/client.cpp.o
client_multMatrix: CMakeFiles/client_multMatrix.dir/utils.cpp.o
client_multMatrix: CMakeFiles/client_multMatrix.dir/multmatrix.cpp.o
client_multMatrix: CMakeFiles/client_multMatrix.dir/multmatrix_stub.cpp.o
client_multMatrix: CMakeFiles/client_multMatrix.dir/build.make
client_multMatrix: CMakeFiles/client_multMatrix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wave/Utad/SD/Practica1/multMatrix/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable client_multMatrix"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client_multMatrix.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/client_multMatrix.dir/build: client_multMatrix
.PHONY : CMakeFiles/client_multMatrix.dir/build

CMakeFiles/client_multMatrix.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/client_multMatrix.dir/cmake_clean.cmake
.PHONY : CMakeFiles/client_multMatrix.dir/clean

CMakeFiles/client_multMatrix.dir/depend:
	cd /home/wave/Utad/SD/Practica1/multMatrix && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wave/Utad/SD/Practica1/multMatrix /home/wave/Utad/SD/Practica1/multMatrix /home/wave/Utad/SD/Practica1/multMatrix /home/wave/Utad/SD/Practica1/multMatrix /home/wave/Utad/SD/Practica1/multMatrix/CMakeFiles/client_multMatrix.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/client_multMatrix.dir/depend
