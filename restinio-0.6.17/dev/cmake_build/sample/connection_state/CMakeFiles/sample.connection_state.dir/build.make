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
include sample/connection_state/CMakeFiles/sample.connection_state.dir/depend.make

# Include the progress variables for this target.
include sample/connection_state/CMakeFiles/sample.connection_state.dir/progress.make

# Include the compile flags for this target's objects.
include sample/connection_state/CMakeFiles/sample.connection_state.dir/flags.make

sample/connection_state/CMakeFiles/sample.connection_state.dir/main.cpp.o: sample/connection_state/CMakeFiles/sample.connection_state.dir/flags.make
sample/connection_state/CMakeFiles/sample.connection_state.dir/main.cpp.o: ../sample/connection_state/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sample/connection_state/CMakeFiles/sample.connection_state.dir/main.cpp.o"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/sample/connection_state && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sample.connection_state.dir/main.cpp.o -c /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/sample/connection_state/main.cpp

sample/connection_state/CMakeFiles/sample.connection_state.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample.connection_state.dir/main.cpp.i"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/sample/connection_state && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/sample/connection_state/main.cpp > CMakeFiles/sample.connection_state.dir/main.cpp.i

sample/connection_state/CMakeFiles/sample.connection_state.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample.connection_state.dir/main.cpp.s"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/sample/connection_state && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/sample/connection_state/main.cpp -o CMakeFiles/sample.connection_state.dir/main.cpp.s

# Object files for target sample.connection_state
sample_connection_state_OBJECTS = \
"CMakeFiles/sample.connection_state.dir/main.cpp.o"

# External object files for target sample.connection_state
sample_connection_state_EXTERNAL_OBJECTS =

sample/connection_state/sample.connection_state: sample/connection_state/CMakeFiles/sample.connection_state.dir/main.cpp.o
sample/connection_state/sample.connection_state: sample/connection_state/CMakeFiles/sample.connection_state.dir/build.make
sample/connection_state/sample.connection_state: nodejs/http_parser/libhttp_parser.a
sample/connection_state/sample.connection_state: sample/connection_state/CMakeFiles/sample.connection_state.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sample.connection_state"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/sample/connection_state && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample.connection_state.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sample/connection_state/CMakeFiles/sample.connection_state.dir/build: sample/connection_state/sample.connection_state

.PHONY : sample/connection_state/CMakeFiles/sample.connection_state.dir/build

sample/connection_state/CMakeFiles/sample.connection_state.dir/clean:
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/sample/connection_state && $(CMAKE_COMMAND) -P CMakeFiles/sample.connection_state.dir/cmake_clean.cmake
.PHONY : sample/connection_state/CMakeFiles/sample.connection_state.dir/clean

sample/connection_state/CMakeFiles/sample.connection_state.dir/depend:
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/sample/connection_state /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/sample/connection_state /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/sample/connection_state/CMakeFiles/sample.connection_state.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sample/connection_state/CMakeFiles/sample.connection_state.dir/depend

