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
CMAKE_SOURCE_DIR = /home/shari/CLionProjects/Computergrafik/aufgabe2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shari/CLionProjects/Computergrafik/aufgabe2

# Include any dependencies generated for this target.
include CMakeFiles/raytracer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/raytracer.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/raytracer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/raytracer.dir/flags.make

CMakeFiles/raytracer.dir/raytracer.cc.o: CMakeFiles/raytracer.dir/flags.make
CMakeFiles/raytracer.dir/raytracer.cc.o: raytracer.cc
CMakeFiles/raytracer.dir/raytracer.cc.o: CMakeFiles/raytracer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/shari/CLionProjects/Computergrafik/aufgabe2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/raytracer.dir/raytracer.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/raytracer.dir/raytracer.cc.o -MF CMakeFiles/raytracer.dir/raytracer.cc.o.d -o CMakeFiles/raytracer.dir/raytracer.cc.o -c /home/shari/CLionProjects/Computergrafik/aufgabe2/raytracer.cc

CMakeFiles/raytracer.dir/raytracer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/raytracer.dir/raytracer.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shari/CLionProjects/Computergrafik/aufgabe2/raytracer.cc > CMakeFiles/raytracer.dir/raytracer.cc.i

CMakeFiles/raytracer.dir/raytracer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/raytracer.dir/raytracer.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shari/CLionProjects/Computergrafik/aufgabe2/raytracer.cc -o CMakeFiles/raytracer.dir/raytracer.cc.s

CMakeFiles/raytracer.dir/math.cc.o: CMakeFiles/raytracer.dir/flags.make
CMakeFiles/raytracer.dir/math.cc.o: math.cc
CMakeFiles/raytracer.dir/math.cc.o: CMakeFiles/raytracer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/shari/CLionProjects/Computergrafik/aufgabe2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/raytracer.dir/math.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/raytracer.dir/math.cc.o -MF CMakeFiles/raytracer.dir/math.cc.o.d -o CMakeFiles/raytracer.dir/math.cc.o -c /home/shari/CLionProjects/Computergrafik/aufgabe2/math.cc

CMakeFiles/raytracer.dir/math.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/raytracer.dir/math.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shari/CLionProjects/Computergrafik/aufgabe2/math.cc > CMakeFiles/raytracer.dir/math.cc.i

CMakeFiles/raytracer.dir/math.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/raytracer.dir/math.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shari/CLionProjects/Computergrafik/aufgabe2/math.cc -o CMakeFiles/raytracer.dir/math.cc.s

CMakeFiles/raytracer.dir/geometry.cc.o: CMakeFiles/raytracer.dir/flags.make
CMakeFiles/raytracer.dir/geometry.cc.o: geometry.cc
CMakeFiles/raytracer.dir/geometry.cc.o: CMakeFiles/raytracer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/shari/CLionProjects/Computergrafik/aufgabe2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/raytracer.dir/geometry.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/raytracer.dir/geometry.cc.o -MF CMakeFiles/raytracer.dir/geometry.cc.o.d -o CMakeFiles/raytracer.dir/geometry.cc.o -c /home/shari/CLionProjects/Computergrafik/aufgabe2/geometry.cc

CMakeFiles/raytracer.dir/geometry.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/raytracer.dir/geometry.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shari/CLionProjects/Computergrafik/aufgabe2/geometry.cc > CMakeFiles/raytracer.dir/geometry.cc.i

CMakeFiles/raytracer.dir/geometry.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/raytracer.dir/geometry.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shari/CLionProjects/Computergrafik/aufgabe2/geometry.cc -o CMakeFiles/raytracer.dir/geometry.cc.s

# Object files for target raytracer
raytracer_OBJECTS = \
"CMakeFiles/raytracer.dir/raytracer.cc.o" \
"CMakeFiles/raytracer.dir/math.cc.o" \
"CMakeFiles/raytracer.dir/geometry.cc.o"

# External object files for target raytracer
raytracer_EXTERNAL_OBJECTS =

raytracer: CMakeFiles/raytracer.dir/raytracer.cc.o
raytracer: CMakeFiles/raytracer.dir/math.cc.o
raytracer: CMakeFiles/raytracer.dir/geometry.cc.o
raytracer: CMakeFiles/raytracer.dir/build.make
raytracer: CMakeFiles/raytracer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/shari/CLionProjects/Computergrafik/aufgabe2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable raytracer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/raytracer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/raytracer.dir/build: raytracer
.PHONY : CMakeFiles/raytracer.dir/build

CMakeFiles/raytracer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/raytracer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/raytracer.dir/clean

CMakeFiles/raytracer.dir/depend:
	cd /home/shari/CLionProjects/Computergrafik/aufgabe2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shari/CLionProjects/Computergrafik/aufgabe2 /home/shari/CLionProjects/Computergrafik/aufgabe2 /home/shari/CLionProjects/Computergrafik/aufgabe2 /home/shari/CLionProjects/Computergrafik/aufgabe2 /home/shari/CLionProjects/Computergrafik/aufgabe2/CMakeFiles/raytracer.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/raytracer.dir/depend

