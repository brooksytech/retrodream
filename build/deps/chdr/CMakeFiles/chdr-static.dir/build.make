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
include deps/chdr/CMakeFiles/chdr-static.dir/depend.make

# Include the progress variables for this target.
include deps/chdr/CMakeFiles/chdr-static.dir/progress.make

# Include the compile flags for this target's objects.
include deps/chdr/CMakeFiles/chdr-static.dir/flags.make

deps/chdr/CMakeFiles/chdr-static.dir/src/bitstream.c.o: deps/chdr/CMakeFiles/chdr-static.dir/flags.make
deps/chdr/CMakeFiles/chdr-static.dir/src/bitstream.c.o: ../deps/chdr/src/bitstream.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object deps/chdr/CMakeFiles/chdr-static.dir/src/bitstream.c.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/chdr-static.dir/src/bitstream.c.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/src/bitstream.c

deps/chdr/CMakeFiles/chdr-static.dir/src/bitstream.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chdr-static.dir/src/bitstream.c.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/src/bitstream.c > CMakeFiles/chdr-static.dir/src/bitstream.c.i

deps/chdr/CMakeFiles/chdr-static.dir/src/bitstream.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chdr-static.dir/src/bitstream.c.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/src/bitstream.c -o CMakeFiles/chdr-static.dir/src/bitstream.c.s

deps/chdr/CMakeFiles/chdr-static.dir/src/cdrom.c.o: deps/chdr/CMakeFiles/chdr-static.dir/flags.make
deps/chdr/CMakeFiles/chdr-static.dir/src/cdrom.c.o: ../deps/chdr/src/cdrom.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object deps/chdr/CMakeFiles/chdr-static.dir/src/cdrom.c.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/chdr-static.dir/src/cdrom.c.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/src/cdrom.c

deps/chdr/CMakeFiles/chdr-static.dir/src/cdrom.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chdr-static.dir/src/cdrom.c.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/src/cdrom.c > CMakeFiles/chdr-static.dir/src/cdrom.c.i

deps/chdr/CMakeFiles/chdr-static.dir/src/cdrom.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chdr-static.dir/src/cdrom.c.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/src/cdrom.c -o CMakeFiles/chdr-static.dir/src/cdrom.c.s

deps/chdr/CMakeFiles/chdr-static.dir/src/chd.c.o: deps/chdr/CMakeFiles/chdr-static.dir/flags.make
deps/chdr/CMakeFiles/chdr-static.dir/src/chd.c.o: ../deps/chdr/src/chd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object deps/chdr/CMakeFiles/chdr-static.dir/src/chd.c.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/chdr-static.dir/src/chd.c.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/src/chd.c

deps/chdr/CMakeFiles/chdr-static.dir/src/chd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chdr-static.dir/src/chd.c.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/src/chd.c > CMakeFiles/chdr-static.dir/src/chd.c.i

deps/chdr/CMakeFiles/chdr-static.dir/src/chd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chdr-static.dir/src/chd.c.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/src/chd.c -o CMakeFiles/chdr-static.dir/src/chd.c.s

deps/chdr/CMakeFiles/chdr-static.dir/src/flac.c.o: deps/chdr/CMakeFiles/chdr-static.dir/flags.make
deps/chdr/CMakeFiles/chdr-static.dir/src/flac.c.o: ../deps/chdr/src/flac.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object deps/chdr/CMakeFiles/chdr-static.dir/src/flac.c.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/chdr-static.dir/src/flac.c.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/src/flac.c

deps/chdr/CMakeFiles/chdr-static.dir/src/flac.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chdr-static.dir/src/flac.c.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/src/flac.c > CMakeFiles/chdr-static.dir/src/flac.c.i

deps/chdr/CMakeFiles/chdr-static.dir/src/flac.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chdr-static.dir/src/flac.c.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/src/flac.c -o CMakeFiles/chdr-static.dir/src/flac.c.s

deps/chdr/CMakeFiles/chdr-static.dir/src/huffman.c.o: deps/chdr/CMakeFiles/chdr-static.dir/flags.make
deps/chdr/CMakeFiles/chdr-static.dir/src/huffman.c.o: ../deps/chdr/src/huffman.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object deps/chdr/CMakeFiles/chdr-static.dir/src/huffman.c.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/chdr-static.dir/src/huffman.c.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/src/huffman.c

deps/chdr/CMakeFiles/chdr-static.dir/src/huffman.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chdr-static.dir/src/huffman.c.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/src/huffman.c > CMakeFiles/chdr-static.dir/src/huffman.c.i

deps/chdr/CMakeFiles/chdr-static.dir/src/huffman.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chdr-static.dir/src/huffman.c.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/src/huffman.c -o CMakeFiles/chdr-static.dir/src/huffman.c.s

# Object files for target chdr-static
chdr__static_OBJECTS = \
"CMakeFiles/chdr-static.dir/src/bitstream.c.o" \
"CMakeFiles/chdr-static.dir/src/cdrom.c.o" \
"CMakeFiles/chdr-static.dir/src/chd.c.o" \
"CMakeFiles/chdr-static.dir/src/flac.c.o" \
"CMakeFiles/chdr-static.dir/src/huffman.c.o"

# External object files for target chdr-static
chdr__static_EXTERNAL_OBJECTS =

deps/chdr/libchdr-static.a: deps/chdr/CMakeFiles/chdr-static.dir/src/bitstream.c.o
deps/chdr/libchdr-static.a: deps/chdr/CMakeFiles/chdr-static.dir/src/cdrom.c.o
deps/chdr/libchdr-static.a: deps/chdr/CMakeFiles/chdr-static.dir/src/chd.c.o
deps/chdr/libchdr-static.a: deps/chdr/CMakeFiles/chdr-static.dir/src/flac.c.o
deps/chdr/libchdr-static.a: deps/chdr/CMakeFiles/chdr-static.dir/src/huffman.c.o
deps/chdr/libchdr-static.a: deps/chdr/CMakeFiles/chdr-static.dir/build.make
deps/chdr/libchdr-static.a: deps/chdr/CMakeFiles/chdr-static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C static library libchdr-static.a"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr && $(CMAKE_COMMAND) -P CMakeFiles/chdr-static.dir/cmake_clean_target.cmake
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chdr-static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/chdr/CMakeFiles/chdr-static.dir/build: deps/chdr/libchdr-static.a

.PHONY : deps/chdr/CMakeFiles/chdr-static.dir/build

deps/chdr/CMakeFiles/chdr-static.dir/clean:
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr && $(CMAKE_COMMAND) -P CMakeFiles/chdr-static.dir/cmake_clean.cmake
.PHONY : deps/chdr/CMakeFiles/chdr-static.dir/clean

deps/chdr/CMakeFiles/chdr-static.dir/depend:
	cd /home/mason/retrodream/retrodream-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mason/retrodream/retrodream-master /home/mason/retrodream/retrodream-master/deps/chdr /home/mason/retrodream/retrodream-master/build /home/mason/retrodream/retrodream-master/build/deps/chdr /home/mason/retrodream/retrodream-master/build/deps/chdr/CMakeFiles/chdr-static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/chdr/CMakeFiles/chdr-static.dir/depend

