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
include CMakeFiles/imgui-static.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/imgui-static.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/imgui-static.dir/flags.make

CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui.cpp.o: CMakeFiles/imgui-static.dir/flags.make
CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui.cpp.o: ../deps/cimgui/imgui/imgui.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui.cpp.o -c /home/mason/retrodream/retrodream-master/deps/cimgui/imgui/imgui.cpp

CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/cimgui/imgui/imgui.cpp > CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui.cpp.i

CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/cimgui/imgui/imgui.cpp -o CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui.cpp.s

CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_demo.cpp.o: CMakeFiles/imgui-static.dir/flags.make
CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_demo.cpp.o: ../deps/cimgui/imgui/imgui_demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_demo.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_demo.cpp.o -c /home/mason/retrodream/retrodream-master/deps/cimgui/imgui/imgui_demo.cpp

CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_demo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/cimgui/imgui/imgui_demo.cpp > CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_demo.cpp.i

CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_demo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/cimgui/imgui/imgui_demo.cpp -o CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_demo.cpp.s

CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_draw.cpp.o: CMakeFiles/imgui-static.dir/flags.make
CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_draw.cpp.o: ../deps/cimgui/imgui/imgui_draw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_draw.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_draw.cpp.o -c /home/mason/retrodream/retrodream-master/deps/cimgui/imgui/imgui_draw.cpp

CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/cimgui/imgui/imgui_draw.cpp > CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_draw.cpp.i

CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/cimgui/imgui/imgui_draw.cpp -o CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_draw.cpp.s

CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/cimgui.cpp.o: CMakeFiles/imgui-static.dir/flags.make
CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/cimgui.cpp.o: ../deps/cimgui/cimgui/cimgui.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/cimgui.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/cimgui.cpp.o -c /home/mason/retrodream/retrodream-master/deps/cimgui/cimgui/cimgui.cpp

CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/cimgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/cimgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/cimgui/cimgui/cimgui.cpp > CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/cimgui.cpp.i

CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/cimgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/cimgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/cimgui/cimgui/cimgui.cpp -o CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/cimgui.cpp.s

CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/drawList.cpp.o: CMakeFiles/imgui-static.dir/flags.make
CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/drawList.cpp.o: ../deps/cimgui/cimgui/drawList.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/drawList.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/drawList.cpp.o -c /home/mason/retrodream/retrodream-master/deps/cimgui/cimgui/drawList.cpp

CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/drawList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/drawList.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/cimgui/cimgui/drawList.cpp > CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/drawList.cpp.i

CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/drawList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/drawList.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/cimgui/cimgui/drawList.cpp -o CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/drawList.cpp.s

CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/fontAtlas.cpp.o: CMakeFiles/imgui-static.dir/flags.make
CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/fontAtlas.cpp.o: ../deps/cimgui/cimgui/fontAtlas.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/fontAtlas.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/fontAtlas.cpp.o -c /home/mason/retrodream/retrodream-master/deps/cimgui/cimgui/fontAtlas.cpp

CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/fontAtlas.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/fontAtlas.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/cimgui/cimgui/fontAtlas.cpp > CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/fontAtlas.cpp.i

CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/fontAtlas.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/fontAtlas.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/cimgui/cimgui/fontAtlas.cpp -o CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/fontAtlas.cpp.s

CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/listClipper.cpp.o: CMakeFiles/imgui-static.dir/flags.make
CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/listClipper.cpp.o: ../deps/cimgui/cimgui/listClipper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/listClipper.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/listClipper.cpp.o -c /home/mason/retrodream/retrodream-master/deps/cimgui/cimgui/listClipper.cpp

CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/listClipper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/listClipper.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mason/retrodream/retrodream-master/deps/cimgui/cimgui/listClipper.cpp > CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/listClipper.cpp.i

CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/listClipper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/listClipper.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mason/retrodream/retrodream-master/deps/cimgui/cimgui/listClipper.cpp -o CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/listClipper.cpp.s

# Object files for target imgui-static
imgui__static_OBJECTS = \
"CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui.cpp.o" \
"CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_demo.cpp.o" \
"CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_draw.cpp.o" \
"CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/cimgui.cpp.o" \
"CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/drawList.cpp.o" \
"CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/fontAtlas.cpp.o" \
"CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/listClipper.cpp.o"

# External object files for target imgui-static
imgui__static_EXTERNAL_OBJECTS =

libimgui-static.a: CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui.cpp.o
libimgui-static.a: CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_demo.cpp.o
libimgui-static.a: CMakeFiles/imgui-static.dir/deps/cimgui/imgui/imgui_draw.cpp.o
libimgui-static.a: CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/cimgui.cpp.o
libimgui-static.a: CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/drawList.cpp.o
libimgui-static.a: CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/fontAtlas.cpp.o
libimgui-static.a: CMakeFiles/imgui-static.dir/deps/cimgui/cimgui/listClipper.cpp.o
libimgui-static.a: CMakeFiles/imgui-static.dir/build.make
libimgui-static.a: CMakeFiles/imgui-static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mason/retrodream/retrodream-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library libimgui-static.a"
	$(CMAKE_COMMAND) -P CMakeFiles/imgui-static.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imgui-static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/imgui-static.dir/build: libimgui-static.a

.PHONY : CMakeFiles/imgui-static.dir/build

CMakeFiles/imgui-static.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/imgui-static.dir/cmake_clean.cmake
.PHONY : CMakeFiles/imgui-static.dir/clean

CMakeFiles/imgui-static.dir/depend:
	cd /home/mason/retrodream/retrodream-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mason/retrodream/retrodream-master /home/mason/retrodream/retrodream-master /home/mason/retrodream/retrodream-master/build /home/mason/retrodream/retrodream-master/build /home/mason/retrodream/retrodream-master/build/CMakeFiles/imgui-static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/imgui-static.dir/depend

