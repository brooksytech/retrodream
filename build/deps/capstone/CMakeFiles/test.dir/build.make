# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mason/retrodream/retrodream-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mason/retrodream/retrodream-master/build

# Include any dependencies generated for this target.
include deps/capstone/CMakeFiles/test.dir/depend.make

# Include the progress variables for this target.
include deps/capstone/CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include deps/capstone/CMakeFiles/test.dir/flags.make

deps/capstone/CMakeFiles/test.dir/tests/test.c.o: deps/capstone/CMakeFiles/test.dir/flags.make
deps/capstone/CMakeFiles/test.dir/tests/test.c.o: ../deps/capstone/tests/test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object deps/capstone/CMakeFiles/test.dir/tests/test.c.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/capstone && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test.dir/tests/test.c.o   -c /home/mason/retrodream/retrodream-master/deps/capstone/tests/test.c

deps/capstone/CMakeFiles/test.dir/tests/test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test.dir/tests/test.c.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/capstone && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/capstone/tests/test.c > CMakeFiles/test.dir/tests/test.c.i

deps/capstone/CMakeFiles/test.dir/tests/test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test.dir/tests/test.c.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/capstone && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/capstone/tests/test.c -o CMakeFiles/test.dir/tests/test.c.s

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/tests/test.c.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

deps/capstone/test: deps/capstone/CMakeFiles/test.dir/tests/test.c.o
deps/capstone/test: deps/capstone/CMakeFiles/test.dir/build.make
deps/capstone/test: deps/capstone/libcapstone.a
deps/capstone/test: deps/capstone/CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test"
	cd /home/mason/retrodream/retrodream-master/build/deps/capstone && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/capstone/CMakeFiles/test.dir/build: deps/capstone/test

.PHONY : deps/capstone/CMakeFiles/test.dir/build

deps/capstone/CMakeFiles/test.dir/clean:
	cd /home/mason/retrodream/retrodream-master/build/deps/capstone && $(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : deps/capstone/CMakeFiles/test.dir/clean

deps/capstone/CMakeFiles/test.dir/depend:
	cd /home/mason/retrodream/retrodream-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mason/retrodream/retrodream-master /home/mason/retrodream/retrodream-master/deps/capstone /home/mason/retrodream/retrodream-master/build /home/mason/retrodream/retrodream-master/build/deps/capstone /home/mason/retrodream/retrodream-master/build/deps/capstone/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/capstone/CMakeFiles/test.dir/depend

