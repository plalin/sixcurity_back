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
include fmt/CMakeFiles/fmt.dir/depend.make

# Include the progress variables for this target.
include fmt/CMakeFiles/fmt.dir/progress.make

# Include the compile flags for this target's objects.
include fmt/CMakeFiles/fmt.dir/flags.make

fmt/CMakeFiles/fmt.dir/src/format.cc.o: fmt/CMakeFiles/fmt.dir/flags.make
fmt/CMakeFiles/fmt.dir/src/format.cc.o: ../fmt/src/format.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object fmt/CMakeFiles/fmt.dir/src/format.cc.o"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/fmt && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fmt.dir/src/format.cc.o -c /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/fmt/src/format.cc

fmt/CMakeFiles/fmt.dir/src/format.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fmt.dir/src/format.cc.i"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/fmt && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/fmt/src/format.cc > CMakeFiles/fmt.dir/src/format.cc.i

fmt/CMakeFiles/fmt.dir/src/format.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fmt.dir/src/format.cc.s"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/fmt && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/fmt/src/format.cc -o CMakeFiles/fmt.dir/src/format.cc.s

fmt/CMakeFiles/fmt.dir/src/os.cc.o: fmt/CMakeFiles/fmt.dir/flags.make
fmt/CMakeFiles/fmt.dir/src/os.cc.o: ../fmt/src/os.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object fmt/CMakeFiles/fmt.dir/src/os.cc.o"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/fmt && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fmt.dir/src/os.cc.o -c /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/fmt/src/os.cc

fmt/CMakeFiles/fmt.dir/src/os.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fmt.dir/src/os.cc.i"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/fmt && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/fmt/src/os.cc > CMakeFiles/fmt.dir/src/os.cc.i

fmt/CMakeFiles/fmt.dir/src/os.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fmt.dir/src/os.cc.s"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/fmt && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/fmt/src/os.cc -o CMakeFiles/fmt.dir/src/os.cc.s

# Object files for target fmt
fmt_OBJECTS = \
"CMakeFiles/fmt.dir/src/format.cc.o" \
"CMakeFiles/fmt.dir/src/os.cc.o"

# External object files for target fmt
fmt_EXTERNAL_OBJECTS =

fmt/libfmt.a: fmt/CMakeFiles/fmt.dir/src/format.cc.o
fmt/libfmt.a: fmt/CMakeFiles/fmt.dir/src/os.cc.o
fmt/libfmt.a: fmt/CMakeFiles/fmt.dir/build.make
fmt/libfmt.a: fmt/CMakeFiles/fmt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libfmt.a"
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/fmt && $(CMAKE_COMMAND) -P CMakeFiles/fmt.dir/cmake_clean_target.cmake
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/fmt && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fmt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
fmt/CMakeFiles/fmt.dir/build: fmt/libfmt.a

.PHONY : fmt/CMakeFiles/fmt.dir/build

fmt/CMakeFiles/fmt.dir/clean:
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/fmt && $(CMAKE_COMMAND) -P CMakeFiles/fmt.dir/cmake_clean.cmake
.PHONY : fmt/CMakeFiles/fmt.dir/clean

fmt/CMakeFiles/fmt.dir/depend:
	cd /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/fmt /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/fmt /mnt/c/Ryute/Univ2022/sixcurity_back/restinio-0.6.17/dev/cmake_build/fmt/CMakeFiles/fmt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : fmt/CMakeFiles/fmt.dir/depend
