# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/shari/CLionProjects/Computergrafik/aufgabe3/viewer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shari/CLionProjects/Computergrafik/aufgabe3/viewer

# Include any dependencies generated for this target.
include CMakeFiles/wavefront_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/wavefront_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/wavefront_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/wavefront_test.dir/flags.make

CMakeFiles/wavefront_test.dir/wavefront.cc.o: CMakeFiles/wavefront_test.dir/flags.make
CMakeFiles/wavefront_test.dir/wavefront.cc.o: wavefront.cc
CMakeFiles/wavefront_test.dir/wavefront.cc.o: CMakeFiles/wavefront_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/shari/CLionProjects/Computergrafik/aufgabe3/viewer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/wavefront_test.dir/wavefront.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/wavefront_test.dir/wavefront.cc.o -MF CMakeFiles/wavefront_test.dir/wavefront.cc.o.d -o CMakeFiles/wavefront_test.dir/wavefront.cc.o -c /home/shari/CLionProjects/Computergrafik/aufgabe3/viewer/wavefront.cc

CMakeFiles/wavefront_test.dir/wavefront.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/wavefront_test.dir/wavefront.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shari/CLionProjects/Computergrafik/aufgabe3/viewer/wavefront.cc > CMakeFiles/wavefront_test.dir/wavefront.cc.i

CMakeFiles/wavefront_test.dir/wavefront.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/wavefront_test.dir/wavefront.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shari/CLionProjects/Computergrafik/aufgabe3/viewer/wavefront.cc -o CMakeFiles/wavefront_test.dir/wavefront.cc.s

CMakeFiles/wavefront_test.dir/wavefront_test.cc.o: CMakeFiles/wavefront_test.dir/flags.make
CMakeFiles/wavefront_test.dir/wavefront_test.cc.o: wavefront_test.cc
CMakeFiles/wavefront_test.dir/wavefront_test.cc.o: CMakeFiles/wavefront_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/shari/CLionProjects/Computergrafik/aufgabe3/viewer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/wavefront_test.dir/wavefront_test.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/wavefront_test.dir/wavefront_test.cc.o -MF CMakeFiles/wavefront_test.dir/wavefront_test.cc.o.d -o CMakeFiles/wavefront_test.dir/wavefront_test.cc.o -c /home/shari/CLionProjects/Computergrafik/aufgabe3/viewer/wavefront_test.cc

CMakeFiles/wavefront_test.dir/wavefront_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/wavefront_test.dir/wavefront_test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shari/CLionProjects/Computergrafik/aufgabe3/viewer/wavefront_test.cc > CMakeFiles/wavefront_test.dir/wavefront_test.cc.i

CMakeFiles/wavefront_test.dir/wavefront_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/wavefront_test.dir/wavefront_test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shari/CLionProjects/Computergrafik/aufgabe3/viewer/wavefront_test.cc -o CMakeFiles/wavefront_test.dir/wavefront_test.cc.s

# Object files for target wavefront_test
wavefront_test_OBJECTS = \
"CMakeFiles/wavefront_test.dir/wavefront.cc.o" \
"CMakeFiles/wavefront_test.dir/wavefront_test.cc.o"

# External object files for target wavefront_test
wavefront_test_EXTERNAL_OBJECTS =

wavefront_test: CMakeFiles/wavefront_test.dir/wavefront.cc.o
wavefront_test: CMakeFiles/wavefront_test.dir/wavefront_test.cc.o
wavefront_test: CMakeFiles/wavefront_test.dir/build.make
wavefront_test: CMakeFiles/wavefront_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/shari/CLionProjects/Computergrafik/aufgabe3/viewer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable wavefront_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wavefront_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/wavefront_test.dir/build: wavefront_test
.PHONY : CMakeFiles/wavefront_test.dir/build

CMakeFiles/wavefront_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/wavefront_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/wavefront_test.dir/clean

CMakeFiles/wavefront_test.dir/depend:
	cd /home/shari/CLionProjects/Computergrafik/aufgabe3/viewer && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shari/CLionProjects/Computergrafik/aufgabe3/viewer /home/shari/CLionProjects/Computergrafik/aufgabe3/viewer /home/shari/CLionProjects/Computergrafik/aufgabe3/viewer /home/shari/CLionProjects/Computergrafik/aufgabe3/viewer /home/shari/CLionProjects/Computergrafik/aufgabe3/viewer/CMakeFiles/wavefront_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/wavefront_test.dir/depend

