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
include test/socket_options/CMakeFiles/_unit.test.socket_options.dir/depend.make

# Include the progress variables for this target.
include test/socket_options/CMakeFiles/_unit.test.socket_options.dir/progress.make

# Include the compile flags for this target's objects.
include test/socket_options/CMakeFiles/_unit.test.socket_options.dir/flags.make

test/socket_options/CMakeFiles/_unit.test.socket_options.dir/main.cpp.o: test/socket_options/CMakeFiles/_unit.test.socket_options.dir/flags.make
test/socket_options/CMakeFiles/_unit.test.socket_options.dir/main.cpp.o: ../test/socket_options/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/socket_options/CMakeFiles/_unit.test.socket_options.dir/main.cpp.o"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/test/socket_options && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/_unit.test.socket_options.dir/main.cpp.o -c /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/test/socket_options/main.cpp

test/socket_options/CMakeFiles/_unit.test.socket_options.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/_unit.test.socket_options.dir/main.cpp.i"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/test/socket_options && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/test/socket_options/main.cpp > CMakeFiles/_unit.test.socket_options.dir/main.cpp.i

test/socket_options/CMakeFiles/_unit.test.socket_options.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/_unit.test.socket_options.dir/main.cpp.s"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/test/socket_options && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/test/socket_options/main.cpp -o CMakeFiles/_unit.test.socket_options.dir/main.cpp.s

# Object files for target _unit.test.socket_options
_unit_test_socket_options_OBJECTS = \
"CMakeFiles/_unit.test.socket_options.dir/main.cpp.o"

# External object files for target _unit.test.socket_options
_unit_test_socket_options_EXTERNAL_OBJECTS =

test/socket_options/_unit.test.socket_options: test/socket_options/CMakeFiles/_unit.test.socket_options.dir/main.cpp.o
test/socket_options/_unit.test.socket_options: test/socket_options/CMakeFiles/_unit.test.socket_options.dir/build.make
test/socket_options/_unit.test.socket_options: test/catch_main/librestinio_catch_main.a
test/socket_options/_unit.test.socket_options: nodejs/http_parser/libhttp_parser.a
test/socket_options/_unit.test.socket_options: test/socket_options/CMakeFiles/_unit.test.socket_options.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable _unit.test.socket_options"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/test/socket_options && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/_unit.test.socket_options.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/socket_options/CMakeFiles/_unit.test.socket_options.dir/build: test/socket_options/_unit.test.socket_options

.PHONY : test/socket_options/CMakeFiles/_unit.test.socket_options.dir/build

test/socket_options/CMakeFiles/_unit.test.socket_options.dir/clean:
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/test/socket_options && $(CMAKE_COMMAND) -P CMakeFiles/_unit.test.socket_options.dir/cmake_clean.cmake
.PHONY : test/socket_options/CMakeFiles/_unit.test.socket_options.dir/clean

test/socket_options/CMakeFiles/_unit.test.socket_options.dir/depend:
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/test/socket_options /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/test/socket_options /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/test/socket_options/CMakeFiles/_unit.test.socket_options.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/socket_options/CMakeFiles/_unit.test.socket_options.dir/depend

