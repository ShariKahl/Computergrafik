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
CMAKE_SOURCE_DIR = /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids

# Include any dependencies generated for this target.
include CMakeFiles/physics_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/physics_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/physics_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/physics_test.dir/flags.make

CMakeFiles/physics_test.dir/physics_test.cc.o: CMakeFiles/physics_test.dir/flags.make
CMakeFiles/physics_test.dir/physics_test.cc.o: physics_test.cc
CMakeFiles/physics_test.dir/physics_test.cc.o: CMakeFiles/physics_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/physics_test.dir/physics_test.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/physics_test.dir/physics_test.cc.o -MF CMakeFiles/physics_test.dir/physics_test.cc.o.d -o CMakeFiles/physics_test.dir/physics_test.cc.o -c /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/physics_test.cc

CMakeFiles/physics_test.dir/physics_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/physics_test.dir/physics_test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/physics_test.cc > CMakeFiles/physics_test.dir/physics_test.cc.i

CMakeFiles/physics_test.dir/physics_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/physics_test.dir/physics_test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/physics_test.cc -o CMakeFiles/physics_test.dir/physics_test.cc.s

CMakeFiles/physics_test.dir/physics.cc.o: CMakeFiles/physics_test.dir/flags.make
CMakeFiles/physics_test.dir/physics.cc.o: physics.cc
CMakeFiles/physics_test.dir/physics.cc.o: CMakeFiles/physics_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/physics_test.dir/physics.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/physics_test.dir/physics.cc.o -MF CMakeFiles/physics_test.dir/physics.cc.o.d -o CMakeFiles/physics_test.dir/physics.cc.o -c /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/physics.cc

CMakeFiles/physics_test.dir/physics.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/physics_test.dir/physics.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/physics.cc > CMakeFiles/physics_test.dir/physics.cc.i

CMakeFiles/physics_test.dir/physics.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/physics_test.dir/physics.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/physics.cc -o CMakeFiles/physics_test.dir/physics.cc.s

CMakeFiles/physics_test.dir/geometry.cc.o: CMakeFiles/physics_test.dir/flags.make
CMakeFiles/physics_test.dir/geometry.cc.o: geometry.cc
CMakeFiles/physics_test.dir/geometry.cc.o: CMakeFiles/physics_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/physics_test.dir/geometry.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/physics_test.dir/geometry.cc.o -MF CMakeFiles/physics_test.dir/geometry.cc.o.d -o CMakeFiles/physics_test.dir/geometry.cc.o -c /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/geometry.cc

CMakeFiles/physics_test.dir/geometry.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/physics_test.dir/geometry.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/geometry.cc > CMakeFiles/physics_test.dir/geometry.cc.i

CMakeFiles/physics_test.dir/geometry.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/physics_test.dir/geometry.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/geometry.cc -o CMakeFiles/physics_test.dir/geometry.cc.s

CMakeFiles/physics_test.dir/math.cc.o: CMakeFiles/physics_test.dir/flags.make
CMakeFiles/physics_test.dir/math.cc.o: math.cc
CMakeFiles/physics_test.dir/math.cc.o: CMakeFiles/physics_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/physics_test.dir/math.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/physics_test.dir/math.cc.o -MF CMakeFiles/physics_test.dir/math.cc.o.d -o CMakeFiles/physics_test.dir/math.cc.o -c /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/math.cc

CMakeFiles/physics_test.dir/math.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/physics_test.dir/math.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/math.cc > CMakeFiles/physics_test.dir/math.cc.i

CMakeFiles/physics_test.dir/math.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/physics_test.dir/math.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/math.cc -o CMakeFiles/physics_test.dir/math.cc.s

CMakeFiles/physics_test.dir/timer.cc.o: CMakeFiles/physics_test.dir/flags.make
CMakeFiles/physics_test.dir/timer.cc.o: timer.cc
CMakeFiles/physics_test.dir/timer.cc.o: CMakeFiles/physics_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/physics_test.dir/timer.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/physics_test.dir/timer.cc.o -MF CMakeFiles/physics_test.dir/timer.cc.o.d -o CMakeFiles/physics_test.dir/timer.cc.o -c /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/timer.cc

CMakeFiles/physics_test.dir/timer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/physics_test.dir/timer.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/timer.cc > CMakeFiles/physics_test.dir/timer.cc.i

CMakeFiles/physics_test.dir/timer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/physics_test.dir/timer.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/timer.cc -o CMakeFiles/physics_test.dir/timer.cc.s

# Object files for target physics_test
physics_test_OBJECTS = \
"CMakeFiles/physics_test.dir/physics_test.cc.o" \
"CMakeFiles/physics_test.dir/physics.cc.o" \
"CMakeFiles/physics_test.dir/geometry.cc.o" \
"CMakeFiles/physics_test.dir/math.cc.o" \
"CMakeFiles/physics_test.dir/timer.cc.o"

# External object files for target physics_test
physics_test_EXTERNAL_OBJECTS =

physics_test: CMakeFiles/physics_test.dir/physics_test.cc.o
physics_test: CMakeFiles/physics_test.dir/physics.cc.o
physics_test: CMakeFiles/physics_test.dir/geometry.cc.o
physics_test: CMakeFiles/physics_test.dir/math.cc.o
physics_test: CMakeFiles/physics_test.dir/timer.cc.o
physics_test: CMakeFiles/physics_test.dir/build.make
physics_test: CMakeFiles/physics_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable physics_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/physics_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/physics_test.dir/build: physics_test
.PHONY : CMakeFiles/physics_test.dir/build

CMakeFiles/physics_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/physics_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/physics_test.dir/clean

CMakeFiles/physics_test.dir/depend:
	cd /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/CMakeFiles/physics_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/physics_test.dir/depend
