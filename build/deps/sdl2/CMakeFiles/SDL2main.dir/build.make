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
include deps/sdl2/CMakeFiles/SDL2main.dir/depend.make

# Include the progress variables for this target.
include deps/sdl2/CMakeFiles/SDL2main.dir/progress.make

# Include the compile flags for this target's objects.
include deps/sdl2/CMakeFiles/SDL2main.dir/flags.make

deps/sdl2/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o: deps/sdl2/CMakeFiles/SDL2main.dir/flags.make
deps/sdl2/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o: ../deps/sdl2/src/main/dummy/SDL_dummy_main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object deps/sdl2/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o"
	cd /home/mason/retrodream/retrodream-master/build/deps/sdl2 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o   -c /home/mason/retrodream/retrodream-master/deps/sdl2/src/main/dummy/SDL_dummy_main.c

deps/sdl2/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.i"
	cd /home/mason/retrodream/retrodream-master/build/deps/sdl2 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/sdl2/src/main/dummy/SDL_dummy_main.c > CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.i

deps/sdl2/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.s"
	cd /home/mason/retrodream/retrodream-master/build/deps/sdl2 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/sdl2/src/main/dummy/SDL_dummy_main.c -o CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.s

# Object files for target SDL2main
SDL2main_OBJECTS = \
"CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o"

# External object files for target SDL2main
SDL2main_EXTERNAL_OBJECTS =

deps/sdl2/libSDL2main.a: deps/sdl2/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o
deps/sdl2/libSDL2main.a: deps/sdl2/CMakeFiles/SDL2main.dir/build.make
deps/sdl2/libSDL2main.a: deps/sdl2/CMakeFiles/SDL2main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libSDL2main.a"
	cd /home/mason/retrodream/retrodream-master/build/deps/sdl2 && $(CMAKE_COMMAND) -P CMakeFiles/SDL2main.dir/cmake_clean_target.cmake
	cd /home/mason/retrodream/retrodream-master/build/deps/sdl2 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SDL2main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/sdl2/CMakeFiles/SDL2main.dir/build: deps/sdl2/libSDL2main.a

.PHONY : deps/sdl2/CMakeFiles/SDL2main.dir/build

deps/sdl2/CMakeFiles/SDL2main.dir/clean:
	cd /home/mason/retrodream/retrodream-master/build/deps/sdl2 && $(CMAKE_COMMAND) -P CMakeFiles/SDL2main.dir/cmake_clean.cmake
.PHONY : deps/sdl2/CMakeFiles/SDL2main.dir/clean

deps/sdl2/CMakeFiles/SDL2main.dir/depend:
	cd /home/mason/retrodream/retrodream-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mason/retrodream/retrodream-master /home/mason/retrodream/retrodream-master/deps/sdl2 /home/mason/retrodream/retrodream-master/build /home/mason/retrodream/retrodream-master/build/deps/sdl2 /home/mason/retrodream/retrodream-master/build/deps/sdl2/CMakeFiles/SDL2main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/sdl2/CMakeFiles/SDL2main.dir/depend

