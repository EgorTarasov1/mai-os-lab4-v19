# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Users/Xiaomi/Desktop/ll4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/Xiaomi/Desktop/ll4/build

# Include any dependencies generated for this target.
include CMakeFiles/library1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/library1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/library1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/library1.dir/flags.make

CMakeFiles/library1.dir/library1.cpp.obj: CMakeFiles/library1.dir/flags.make
CMakeFiles/library1.dir/library1.cpp.obj: C:/Users/Xiaomi/Desktop/ll4/library1.cpp
CMakeFiles/library1.dir/library1.cpp.obj: CMakeFiles/library1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:/Users/Xiaomi/Desktop/ll4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/library1.dir/library1.cpp.obj"
	C:/Users/Xiaomi/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/library1.dir/library1.cpp.obj -MF CMakeFiles/library1.dir/library1.cpp.obj.d -o CMakeFiles/library1.dir/library1.cpp.obj -c C:/Users/Xiaomi/Desktop/ll4/library1.cpp

CMakeFiles/library1.dir/library1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library1.dir/library1.cpp.i"
	C:/Users/Xiaomi/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/Xiaomi/Desktop/ll4/library1.cpp > CMakeFiles/library1.dir/library1.cpp.i

CMakeFiles/library1.dir/library1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library1.dir/library1.cpp.s"
	C:/Users/Xiaomi/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/Xiaomi/Desktop/ll4/library1.cpp -o CMakeFiles/library1.dir/library1.cpp.s

# Object files for target library1
library1_OBJECTS = \
"CMakeFiles/library1.dir/library1.cpp.obj"

# External object files for target library1
library1_EXTERNAL_OBJECTS =

bin/liblibrary1.dll: CMakeFiles/library1.dir/library1.cpp.obj
bin/liblibrary1.dll: CMakeFiles/library1.dir/build.make
bin/liblibrary1.dll: CMakeFiles/library1.dir/linkLibs.rsp
bin/liblibrary1.dll: CMakeFiles/library1.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:/Users/Xiaomi/Desktop/ll4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library bin/liblibrary1.dll"
	"C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/library1.dir/objects.a
	C:/Users/Xiaomi/bin/ar.exe qc CMakeFiles/library1.dir/objects.a @CMakeFiles/library1.dir/objects1.rsp
	C:/Users/Xiaomi/bin/c++.exe -g -shared -o bin/liblibrary1.dll -Wl,--out-implib,liblibrary1.dll.a -Wl,--major-image-version,0,--minor-image-version,0 -Wl,--whole-archive CMakeFiles/library1.dir/objects.a -Wl,--no-whole-archive @CMakeFiles/library1.dir/linkLibs.rsp

# Rule to build all files generated by this target.
CMakeFiles/library1.dir/build: bin/liblibrary1.dll
.PHONY : CMakeFiles/library1.dir/build

CMakeFiles/library1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/library1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/library1.dir/clean

CMakeFiles/library1.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/Xiaomi/Desktop/ll4 C:/Users/Xiaomi/Desktop/ll4 C:/Users/Xiaomi/Desktop/ll4/build C:/Users/Xiaomi/Desktop/ll4/build C:/Users/Xiaomi/Desktop/ll4/build/CMakeFiles/library1.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/library1.dir/depend

