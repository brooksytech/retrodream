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
include deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/depend.make

# Include the progress variables for this target.
include deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/progress.make

# Include the compile flags for this target's objects.
include deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/flags.make

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/adler32.o: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/flags.make
deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/adler32.o: ../deps/chdr/deps/zlib-1.2.11/adler32.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/adler32.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlibstatic.dir/adler32.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/adler32.c

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/adler32.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/adler32.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/adler32.c > CMakeFiles/zlibstatic.dir/adler32.i

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/adler32.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/adler32.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/adler32.c -o CMakeFiles/zlibstatic.dir/adler32.s

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/compress.o: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/flags.make
deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/compress.o: ../deps/chdr/deps/zlib-1.2.11/compress.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/compress.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlibstatic.dir/compress.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/compress.c

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/compress.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/compress.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/compress.c > CMakeFiles/zlibstatic.dir/compress.i

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/compress.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/compress.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/compress.c -o CMakeFiles/zlibstatic.dir/compress.s

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/crc32.o: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/flags.make
deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/crc32.o: ../deps/chdr/deps/zlib-1.2.11/crc32.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/crc32.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlibstatic.dir/crc32.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/crc32.c

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/crc32.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/crc32.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/crc32.c > CMakeFiles/zlibstatic.dir/crc32.i

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/crc32.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/crc32.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/crc32.c -o CMakeFiles/zlibstatic.dir/crc32.s

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/deflate.o: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/flags.make
deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/deflate.o: ../deps/chdr/deps/zlib-1.2.11/deflate.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/deflate.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlibstatic.dir/deflate.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/deflate.c

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/deflate.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/deflate.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/deflate.c > CMakeFiles/zlibstatic.dir/deflate.i

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/deflate.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/deflate.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/deflate.c -o CMakeFiles/zlibstatic.dir/deflate.s

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzclose.o: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/flags.make
deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzclose.o: ../deps/chdr/deps/zlib-1.2.11/gzclose.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzclose.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlibstatic.dir/gzclose.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/gzclose.c

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzclose.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/gzclose.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/gzclose.c > CMakeFiles/zlibstatic.dir/gzclose.i

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzclose.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/gzclose.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/gzclose.c -o CMakeFiles/zlibstatic.dir/gzclose.s

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzlib.o: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/flags.make
deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzlib.o: ../deps/chdr/deps/zlib-1.2.11/gzlib.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzlib.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlibstatic.dir/gzlib.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/gzlib.c

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzlib.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/gzlib.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/gzlib.c > CMakeFiles/zlibstatic.dir/gzlib.i

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzlib.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/gzlib.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/gzlib.c -o CMakeFiles/zlibstatic.dir/gzlib.s

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzread.o: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/flags.make
deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzread.o: ../deps/chdr/deps/zlib-1.2.11/gzread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzread.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlibstatic.dir/gzread.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/gzread.c

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/gzread.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/gzread.c > CMakeFiles/zlibstatic.dir/gzread.i

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/gzread.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/gzread.c -o CMakeFiles/zlibstatic.dir/gzread.s

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzwrite.o: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/flags.make
deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzwrite.o: ../deps/chdr/deps/zlib-1.2.11/gzwrite.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzwrite.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlibstatic.dir/gzwrite.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/gzwrite.c

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzwrite.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/gzwrite.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/gzwrite.c > CMakeFiles/zlibstatic.dir/gzwrite.i

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzwrite.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/gzwrite.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/gzwrite.c -o CMakeFiles/zlibstatic.dir/gzwrite.s

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/inflate.o: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/flags.make
deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/inflate.o: ../deps/chdr/deps/zlib-1.2.11/inflate.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/inflate.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlibstatic.dir/inflate.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/inflate.c

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/inflate.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/inflate.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/inflate.c > CMakeFiles/zlibstatic.dir/inflate.i

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/inflate.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/inflate.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/inflate.c -o CMakeFiles/zlibstatic.dir/inflate.s

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/infback.o: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/flags.make
deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/infback.o: ../deps/chdr/deps/zlib-1.2.11/infback.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/infback.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlibstatic.dir/infback.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/infback.c

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/infback.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/infback.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/infback.c > CMakeFiles/zlibstatic.dir/infback.i

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/infback.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/infback.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/infback.c -o CMakeFiles/zlibstatic.dir/infback.s

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/inftrees.o: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/flags.make
deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/inftrees.o: ../deps/chdr/deps/zlib-1.2.11/inftrees.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/inftrees.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlibstatic.dir/inftrees.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/inftrees.c

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/inftrees.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/inftrees.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/inftrees.c > CMakeFiles/zlibstatic.dir/inftrees.i

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/inftrees.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/inftrees.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/inftrees.c -o CMakeFiles/zlibstatic.dir/inftrees.s

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/inffast.o: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/flags.make
deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/inffast.o: ../deps/chdr/deps/zlib-1.2.11/inffast.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/inffast.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlibstatic.dir/inffast.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/inffast.c

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/inffast.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/inffast.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/inffast.c > CMakeFiles/zlibstatic.dir/inffast.i

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/inffast.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/inffast.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/inffast.c -o CMakeFiles/zlibstatic.dir/inffast.s

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/trees.o: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/flags.make
deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/trees.o: ../deps/chdr/deps/zlib-1.2.11/trees.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/trees.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlibstatic.dir/trees.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/trees.c

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/trees.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/trees.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/trees.c > CMakeFiles/zlibstatic.dir/trees.i

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/trees.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/trees.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/trees.c -o CMakeFiles/zlibstatic.dir/trees.s

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/uncompr.o: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/flags.make
deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/uncompr.o: ../deps/chdr/deps/zlib-1.2.11/uncompr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/uncompr.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlibstatic.dir/uncompr.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/uncompr.c

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/uncompr.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/uncompr.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/uncompr.c > CMakeFiles/zlibstatic.dir/uncompr.i

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/uncompr.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/uncompr.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/uncompr.c -o CMakeFiles/zlibstatic.dir/uncompr.s

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/zutil.o: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/flags.make
deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/zutil.o: ../deps/chdr/deps/zlib-1.2.11/zutil.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/zutil.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zlibstatic.dir/zutil.o   -c /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/zutil.c

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/zutil.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/zutil.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/zutil.c > CMakeFiles/zlibstatic.dir/zutil.i

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/zutil.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/zutil.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11/zutil.c -o CMakeFiles/zlibstatic.dir/zutil.s

# Object files for target zlibstatic
zlibstatic_OBJECTS = \
"CMakeFiles/zlibstatic.dir/adler32.o" \
"CMakeFiles/zlibstatic.dir/compress.o" \
"CMakeFiles/zlibstatic.dir/crc32.o" \
"CMakeFiles/zlibstatic.dir/deflate.o" \
"CMakeFiles/zlibstatic.dir/gzclose.o" \
"CMakeFiles/zlibstatic.dir/gzlib.o" \
"CMakeFiles/zlibstatic.dir/gzread.o" \
"CMakeFiles/zlibstatic.dir/gzwrite.o" \
"CMakeFiles/zlibstatic.dir/inflate.o" \
"CMakeFiles/zlibstatic.dir/infback.o" \
"CMakeFiles/zlibstatic.dir/inftrees.o" \
"CMakeFiles/zlibstatic.dir/inffast.o" \
"CMakeFiles/zlibstatic.dir/trees.o" \
"CMakeFiles/zlibstatic.dir/uncompr.o" \
"CMakeFiles/zlibstatic.dir/zutil.o"

# External object files for target zlibstatic
zlibstatic_EXTERNAL_OBJECTS =

deps/chdr/deps/zlib-1.2.11/libz.a: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/adler32.o
deps/chdr/deps/zlib-1.2.11/libz.a: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/compress.o
deps/chdr/deps/zlib-1.2.11/libz.a: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/crc32.o
deps/chdr/deps/zlib-1.2.11/libz.a: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/deflate.o
deps/chdr/deps/zlib-1.2.11/libz.a: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzclose.o
deps/chdr/deps/zlib-1.2.11/libz.a: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzlib.o
deps/chdr/deps/zlib-1.2.11/libz.a: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzread.o
deps/chdr/deps/zlib-1.2.11/libz.a: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/gzwrite.o
deps/chdr/deps/zlib-1.2.11/libz.a: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/inflate.o
deps/chdr/deps/zlib-1.2.11/libz.a: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/infback.o
deps/chdr/deps/zlib-1.2.11/libz.a: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/inftrees.o
deps/chdr/deps/zlib-1.2.11/libz.a: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/inffast.o
deps/chdr/deps/zlib-1.2.11/libz.a: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/trees.o
deps/chdr/deps/zlib-1.2.11/libz.a: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/uncompr.o
deps/chdr/deps/zlib-1.2.11/libz.a: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/zutil.o
deps/chdr/deps/zlib-1.2.11/libz.a: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/build.make
deps/chdr/deps/zlib-1.2.11/libz.a: deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking C static library libz.a"
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && $(CMAKE_COMMAND) -P CMakeFiles/zlibstatic.dir/cmake_clean_target.cmake
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/zlibstatic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/build: deps/chdr/deps/zlib-1.2.11/libz.a

.PHONY : deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/build

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/clean:
	cd /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 && $(CMAKE_COMMAND) -P CMakeFiles/zlibstatic.dir/cmake_clean.cmake
.PHONY : deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/clean

deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/depend:
	cd /home/mason/retrodream/retrodream-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mason/retrodream/retrodream-master /home/mason/retrodream/retrodream-master/deps/chdr/deps/zlib-1.2.11 /home/mason/retrodream/retrodream-master/build /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11 /home/mason/retrodream/retrodream-master/build/deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/chdr/deps/zlib-1.2.11/CMakeFiles/zlibstatic.dir/depend

