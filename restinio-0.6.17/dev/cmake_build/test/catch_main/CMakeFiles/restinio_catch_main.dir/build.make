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
CMAKE_SOURCE_DIR = /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build

# Include any dependencies generated for this target.
include test/catch_main/CMakeFiles/restinio_catch_main.dir/depend.make

# Include the progress variables for this target.
include test/catch_main/CMakeFiles/restinio_catch_main.dir/progress.make

# Include the compile flags for this target's objects.
include test/catch_main/CMakeFiles/restinio_catch_main.dir/flags.make

test/catch_main/CMakeFiles/restinio_catch_main.dir/catch_main.cpp.o: test/catch_main/CMakeFiles/restinio_catch_main.dir/flags.make
test/catch_main/CMakeFiles/restinio_catch_main.dir/catch_main.cpp.o: ../test/catch_main/catch_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/catch_main/CMakeFiles/restinio_catch_main.dir/catch_main.cpp.o"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/test/catch_main && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/restinio_catch_main.dir/catch_main.cpp.o -c /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/test/catch_main/catch_main.cpp

test/catch_main/CMakeFiles/restinio_catch_main.dir/catch_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/restinio_catch_main.dir/catch_main.cpp.i"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/test/catch_main && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/test/catch_main/catch_main.cpp > CMakeFiles/restinio_catch_main.dir/catch_main.cpp.i

test/catch_main/CMakeFiles/restinio_catch_main.dir/catch_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/restinio_catch_main.dir/catch_main.cpp.s"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/test/catch_main && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/test/catch_main/catch_main.cpp -o CMakeFiles/restinio_catch_main.dir/catch_main.cpp.s

# Object files for target restinio_catch_main
restinio_catch_main_OBJECTS = \
"CMakeFiles/restinio_catch_main.dir/catch_main.cpp.o"

# External object files for target restinio_catch_main
restinio_catch_main_EXTERNAL_OBJECTS =

test/catch_main/librestinio_catch_main.a: test/catch_main/CMakeFiles/restinio_catch_main.dir/catch_main.cpp.o
test/catch_main/librestinio_catch_main.a: test/catch_main/CMakeFiles/restinio_catch_main.dir/build.make
test/catch_main/librestinio_catch_main.a: test/catch_main/CMakeFiles/restinio_catch_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library librestinio_catch_main.a"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/test/catch_main && $(CMAKE_COMMAND) -P CMakeFiles/restinio_catch_main.dir/cmake_clean_target.cmake
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/test/catch_main && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/restinio_catch_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/catch_main/CMakeFiles/restinio_catch_main.dir/build: test/catch_main/librestinio_catch_main.a

.PHONY : test/catch_main/CMakeFiles/restinio_catch_main.dir/build

test/catch_main/CMakeFiles/restinio_catch_main.dir/clean:
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/test/catch_main && $(CMAKE_COMMAND) -P CMakeFiles/restinio_catch_main.dir/cmake_clean.cmake
.PHONY : test/catch_main/CMakeFiles/restinio_catch_main.dir/clean

test/catch_main/CMakeFiles/restinio_catch_main.dir/depend:
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/test/catch_main /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/test/catch_main /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/test/catch_main/CMakeFiles/restinio_catch_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/catch_main/CMakeFiles/restinio_catch_main.dir/depend
