# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/ubuntu/contracts/contracts

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/contracts/build/contracts

# Include any dependencies generated for this target.
include alaio.msig/CMakeFiles/alaio.msig.dir/depend.make

# Include the progress variables for this target.
include alaio.msig/CMakeFiles/alaio.msig.dir/progress.make

# Include the compile flags for this target's objects.
include alaio.msig/CMakeFiles/alaio.msig.dir/flags.make

alaio.msig/CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.obj: alaio.msig/CMakeFiles/alaio.msig.dir/flags.make
alaio.msig/CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.obj: /home/ubuntu/contracts/contracts/alaio.msig/src/alaio.msig.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/contracts/build/contracts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object alaio.msig/CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.obj"
	cd /home/ubuntu/contracts/build/contracts/alaio.msig && /usr/local/alaio.cdt/bin/alaio-cpp  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.obj -c /home/ubuntu/contracts/contracts/alaio.msig/src/alaio.msig.cpp

alaio.msig/CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.i"
	cd /home/ubuntu/contracts/build/contracts/alaio.msig && /usr/local/alaio.cdt/bin/alaio-cpp $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/contracts/contracts/alaio.msig/src/alaio.msig.cpp > CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.i

alaio.msig/CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.s"
	cd /home/ubuntu/contracts/build/contracts/alaio.msig && /usr/local/alaio.cdt/bin/alaio-cpp $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/contracts/contracts/alaio.msig/src/alaio.msig.cpp -o CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.s

alaio.msig/CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.obj.requires:

.PHONY : alaio.msig/CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.obj.requires

alaio.msig/CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.obj.provides: alaio.msig/CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.obj.requires
	$(MAKE) -f alaio.msig/CMakeFiles/alaio.msig.dir/build.make alaio.msig/CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.obj.provides.build
.PHONY : alaio.msig/CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.obj.provides

alaio.msig/CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.obj.provides.build: alaio.msig/CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.obj


# Object files for target alaio.msig
alaio_msig_OBJECTS = \
"CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.obj"

# External object files for target alaio.msig
alaio_msig_EXTERNAL_OBJECTS =

alaio.msig/alaio.msig.wasm: alaio.msig/CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.obj
alaio.msig/alaio.msig.wasm: alaio.msig/CMakeFiles/alaio.msig.dir/build.make
alaio.msig/alaio.msig.wasm: alaio.msig/CMakeFiles/alaio.msig.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/contracts/build/contracts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable alaio.msig.wasm"
	cd /home/ubuntu/contracts/build/contracts/alaio.msig && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/alaio.msig.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
alaio.msig/CMakeFiles/alaio.msig.dir/build: alaio.msig/alaio.msig.wasm

.PHONY : alaio.msig/CMakeFiles/alaio.msig.dir/build

alaio.msig/CMakeFiles/alaio.msig.dir/requires: alaio.msig/CMakeFiles/alaio.msig.dir/src/alaio.msig.cpp.obj.requires

.PHONY : alaio.msig/CMakeFiles/alaio.msig.dir/requires

alaio.msig/CMakeFiles/alaio.msig.dir/clean:
	cd /home/ubuntu/contracts/build/contracts/alaio.msig && $(CMAKE_COMMAND) -P CMakeFiles/alaio.msig.dir/cmake_clean.cmake
.PHONY : alaio.msig/CMakeFiles/alaio.msig.dir/clean

alaio.msig/CMakeFiles/alaio.msig.dir/depend:
	cd /home/ubuntu/contracts/build/contracts && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/contracts/contracts /home/ubuntu/contracts/contracts/alaio.msig /home/ubuntu/contracts/build/contracts /home/ubuntu/contracts/build/contracts/alaio.msig /home/ubuntu/contracts/build/contracts/alaio.msig/CMakeFiles/alaio.msig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : alaio.msig/CMakeFiles/alaio.msig.dir/depend
