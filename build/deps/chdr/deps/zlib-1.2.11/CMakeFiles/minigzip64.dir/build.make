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
include deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/depend.make

# Include the progress variables for this target.
include deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/progress.make

# Include the compile flags for this target's objects.
include deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/flags.make

deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/test/minigzip.o: deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/flags.make
deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/test/minigzip.o: ../deps/chdr/deps/zlib-1.2.11/test/minigzip.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/test/minigzip.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/minigzip64.dir/test/minigzip.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/test/minigzip.c

deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/test/minigzip.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minigzip64.dir/test/minigzip.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/test/minigzip.c > CMakeFiles/minigzip64.dir/test/minigzip.i

deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/test/minigzip.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minigzip64.dir/test/minigzip.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/test/minigzip.c -o CMakeFiles/minigzip64.dir/test/minigzip.s

# Object files for target minigzip64
minigzip64_OBJECTS = \
"CMakeFiles/minigzip64.dir/test/minigzip.o"

# External object files for target minigzip64
minigzip64_EXTERNAL_OBJECTS =

deps/chdr/deps/zlib-1.2.11/minigzip64: deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/test/minigzip.o
deps/chdr/deps/zlib-1.2.11/minigzip64: deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/build.make
deps/chdr/deps/zlib-1.2.11/minigzip64: deps/chdr/deps/zlib-1.2.11/libz.so.1.2.11
deps/chdr/deps/zlib-1.2.11/minigzip64: deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable minigzip64"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/minigzip64.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/build: deps/chdr/deps/zlib-1.2.11/minigzip64

.PHONY : deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/build

deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/clean:
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && $(CMAKE_COMMAND) -P CMakeFiles/minigzip64.dir/cmake_clean.cmake
.PHONY : deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/clean

deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/depend:
	cd /home/mason/retrodream/retrodream-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mason/retrodream/retrodream-master /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11 /home/mason/retrodream/retrodream-master/build /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/chdr/deps/zlib-1.2.11/CMakeFiles/minigzip64.dir/depend

