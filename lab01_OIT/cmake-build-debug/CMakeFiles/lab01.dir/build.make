# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/dean/clion-2019.1.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/dean/clion-2019.1.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dean/CS337/lab01_OIT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dean/CS337/lab01_OIT/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/lab01.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab01.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab01.dir/flags.make

CMakeFiles/lab01.dir/main.cpp.o: CMakeFiles/lab01.dir/flags.make
CMakeFiles/lab01.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dean/CS337/lab01_OIT/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lab01.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab01.dir/main.cpp.o -c /home/dean/CS337/lab01_OIT/main.cpp

CMakeFiles/lab01.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab01.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dean/CS337/lab01_OIT/main.cpp > CMakeFiles/lab01.dir/main.cpp.i

CMakeFiles/lab01.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab01.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dean/CS337/lab01_OIT/main.cpp -o CMakeFiles/lab01.dir/main.cpp.s

CMakeFiles/lab01.dir/glad.c.o: CMakeFiles/lab01.dir/flags.make
CMakeFiles/lab01.dir/glad.c.o: ../glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dean/CS337/lab01_OIT/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/lab01.dir/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab01.dir/glad.c.o   -c /home/dean/CS337/lab01_OIT/glad.c

CMakeFiles/lab01.dir/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab01.dir/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dean/CS337/lab01_OIT/glad.c > CMakeFiles/lab01.dir/glad.c.i

CMakeFiles/lab01.dir/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab01.dir/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dean/CS337/lab01_OIT/glad.c -o CMakeFiles/lab01.dir/glad.c.s

# Object files for target lab01
lab01_OBJECTS = \
"CMakeFiles/lab01.dir/main.cpp.o" \
"CMakeFiles/lab01.dir/glad.c.o"

# External object files for target lab01
lab01_EXTERNAL_OBJECTS =

lab01: CMakeFiles/lab01.dir/main.cpp.o
lab01: CMakeFiles/lab01.dir/glad.c.o
lab01: CMakeFiles/lab01.dir/build.make
lab01: CMakeFiles/lab01.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dean/CS337/lab01_OIT/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable lab01"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab01.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab01.dir/build: lab01

.PHONY : CMakeFiles/lab01.dir/build

CMakeFiles/lab01.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab01.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab01.dir/clean

CMakeFiles/lab01.dir/depend:
	cd /home/dean/CS337/lab01_OIT/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dean/CS337/lab01_OIT /home/dean/CS337/lab01_OIT /home/dean/CS337/lab01_OIT/cmake-build-debug /home/dean/CS337/lab01_OIT/cmake-build-debug /home/dean/CS337/lab01_OIT/cmake-build-debug/CMakeFiles/lab01.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab01.dir/depend

