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
include benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/depend.make

# Include the progress variables for this target.
include benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/progress.make

# Include the compile flags for this target's objects.
include benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/flags.make

benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/main.cpp.o: benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/flags.make
benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/main.cpp.o: ../benches/single_handler/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/main.cpp.o"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/benches/single_handler && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/_bench.restinio.single_handler.dir/main.cpp.o -c /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/benches/single_handler/main.cpp

benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/_bench.restinio.single_handler.dir/main.cpp.i"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/benches/single_handler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/benches/single_handler/main.cpp > CMakeFiles/_bench.restinio.single_handler.dir/main.cpp.i

benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/_bench.restinio.single_handler.dir/main.cpp.s"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/benches/single_handler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/benches/single_handler/main.cpp -o CMakeFiles/_bench.restinio.single_handler.dir/main.cpp.s

# Object files for target _bench.restinio.single_handler
_bench_restinio_single_handler_OBJECTS = \
"CMakeFiles/_bench.restinio.single_handler.dir/main.cpp.o"

# External object files for target _bench.restinio.single_handler
_bench_restinio_single_handler_EXTERNAL_OBJECTS =

benches/single_handler/_bench.restinio.single_handler: benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/main.cpp.o
benches/single_handler/_bench.restinio.single_handler: benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/build.make
benches/single_handler/_bench.restinio.single_handler: nodejs/http_parser/libhttp_parser.a
benches/single_handler/_bench.restinio.single_handler: benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable _bench.restinio.single_handler"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/benches/single_handler && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/_bench.restinio.single_handler.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/build: benches/single_handler/_bench.restinio.single_handler

.PHONY : benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/build

benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/clean:
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/benches/single_handler && $(CMAKE_COMMAND) -P CMakeFiles/_bench.restinio.single_handler.dir/cmake_clean.cmake
.PHONY : benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/clean

benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/depend:
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/benches/single_handler /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/benches/single_handler /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : benches/single_handler/CMakeFiles/_bench.restinio.single_handler.dir/depend
