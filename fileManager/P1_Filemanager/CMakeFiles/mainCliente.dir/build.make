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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.21.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.21.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager

# Include any dependencies generated for this target.
include CMakeFiles/mainCliente.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/mainCliente.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/mainCliente.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mainCliente.dir/flags.make

CMakeFiles/mainCliente.dir/mainCliente.cpp.o: CMakeFiles/mainCliente.dir/flags.make
CMakeFiles/mainCliente.dir/mainCliente.cpp.o: mainCliente.cpp
CMakeFiles/mainCliente.dir/mainCliente.cpp.o: CMakeFiles/mainCliente.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mainCliente.dir/mainCliente.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mainCliente.dir/mainCliente.cpp.o -MF CMakeFiles/mainCliente.dir/mainCliente.cpp.o.d -o CMakeFiles/mainCliente.dir/mainCliente.cpp.o -c /Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager/mainCliente.cpp

CMakeFiles/mainCliente.dir/mainCliente.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mainCliente.dir/mainCliente.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager/mainCliente.cpp > CMakeFiles/mainCliente.dir/mainCliente.cpp.i

CMakeFiles/mainCliente.dir/mainCliente.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mainCliente.dir/mainCliente.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager/mainCliente.cpp -o CMakeFiles/mainCliente.dir/mainCliente.cpp.s

CMakeFiles/mainCliente.dir/fm_stub.cpp.o: CMakeFiles/mainCliente.dir/flags.make
CMakeFiles/mainCliente.dir/fm_stub.cpp.o: fm_stub.cpp
CMakeFiles/mainCliente.dir/fm_stub.cpp.o: CMakeFiles/mainCliente.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/mainCliente.dir/fm_stub.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mainCliente.dir/fm_stub.cpp.o -MF CMakeFiles/mainCliente.dir/fm_stub.cpp.o.d -o CMakeFiles/mainCliente.dir/fm_stub.cpp.o -c /Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager/fm_stub.cpp

CMakeFiles/mainCliente.dir/fm_stub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mainCliente.dir/fm_stub.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager/fm_stub.cpp > CMakeFiles/mainCliente.dir/fm_stub.cpp.i

CMakeFiles/mainCliente.dir/fm_stub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mainCliente.dir/fm_stub.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager/fm_stub.cpp -o CMakeFiles/mainCliente.dir/fm_stub.cpp.s

CMakeFiles/mainCliente.dir/utils.cpp.o: CMakeFiles/mainCliente.dir/flags.make
CMakeFiles/mainCliente.dir/utils.cpp.o: utils.cpp
CMakeFiles/mainCliente.dir/utils.cpp.o: CMakeFiles/mainCliente.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/mainCliente.dir/utils.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mainCliente.dir/utils.cpp.o -MF CMakeFiles/mainCliente.dir/utils.cpp.o.d -o CMakeFiles/mainCliente.dir/utils.cpp.o -c /Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager/utils.cpp

CMakeFiles/mainCliente.dir/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mainCliente.dir/utils.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager/utils.cpp > CMakeFiles/mainCliente.dir/utils.cpp.i

CMakeFiles/mainCliente.dir/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mainCliente.dir/utils.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager/utils.cpp -o CMakeFiles/mainCliente.dir/utils.cpp.s

# Object files for target mainCliente
mainCliente_OBJECTS = \
"CMakeFiles/mainCliente.dir/mainCliente.cpp.o" \
"CMakeFiles/mainCliente.dir/fm_stub.cpp.o" \
"CMakeFiles/mainCliente.dir/utils.cpp.o"

# External object files for target mainCliente
mainCliente_EXTERNAL_OBJECTS =

mainCliente: CMakeFiles/mainCliente.dir/mainCliente.cpp.o
mainCliente: CMakeFiles/mainCliente.dir/fm_stub.cpp.o
mainCliente: CMakeFiles/mainCliente.dir/utils.cpp.o
mainCliente: CMakeFiles/mainCliente.dir/build.make
mainCliente: CMakeFiles/mainCliente.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable mainCliente"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mainCliente.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mainCliente.dir/build: mainCliente
.PHONY : CMakeFiles/mainCliente.dir/build

CMakeFiles/mainCliente.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mainCliente.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mainCliente.dir/clean

CMakeFiles/mainCliente.dir/depend:
	cd /Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager /Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager /Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager /Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager /Users/swazer/Documents/Programacion/Dist/Practica1/P1_Filemanager/CMakeFiles/mainCliente.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mainCliente.dir/depend

