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
include deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/depend.make

# Include the progress variables for this target.
include deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/progress.make

# Include the compile flags for this target's objects.
include deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/flags.make

deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/test/example.o: deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/flags.make
deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/test/example.o: ../deps/chdr/deps/zlib-1.2.11/test/example.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/test/example.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/example64.dir/test/example.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/test/example.c

deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/test/example.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/example64.dir/test/example.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/test/example.c > CMakeFiles/example64.dir/test/example.i

deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/test/example.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/example64.dir/test/example.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/test/example.c -o CMakeFiles/example64.dir/test/example.s

# Object files for target example64
example64_OBJECTS = \
"CMakeFiles/example64.dir/test/example.o"

# External object files for target example64
example64_EXTERNAL_OBJECTS =

deps/chdr/deps/zlib-1.2.11/example64: deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/test/example.o
deps/chdr/deps/zlib-1.2.11/example64: deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/build.make
deps/chdr/deps/zlib-1.2.11/example64: deps/chdr/deps/zlib-1.2.11/libz.so.1.2.11
deps/chdr/deps/zlib-1.2.11/example64: deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable example64"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example64.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/build: deps/chdr/deps/zlib-1.2.11/example64

.PHONY : deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/build

deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/clean:
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && $(CMAKE_COMMAND) -P CMakeFiles/example64.dir/cmake_clean.cmake
.PHONY : deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/clean

deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/depend:
	cd /home/mason/retrodream/retrodream-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mason/retrodream/retrodream-master /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11 /home/mason/retrodream/retrodream-master/build /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/chdr/deps/zlib-1.2.11/CMakeFiles/example64.dir/depend

