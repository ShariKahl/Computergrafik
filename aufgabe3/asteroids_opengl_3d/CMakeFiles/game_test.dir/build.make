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
CMAKE_SOURCE_DIR = /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d

# Include any dependencies generated for this target.
include CMakeFiles/game_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/game_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/game_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/game_test.dir/flags.make

CMakeFiles/game_test.dir/game_test.cc.o: CMakeFiles/game_test.dir/flags.make
CMakeFiles/game_test.dir/game_test.cc.o: game_test.cc
CMakeFiles/game_test.dir/game_test.cc.o: CMakeFiles/game_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/game_test.dir/game_test.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game_test.dir/game_test.cc.o -MF CMakeFiles/game_test.dir/game_test.cc.o.d -o CMakeFiles/game_test.dir/game_test.cc.o -c /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/game_test.cc

CMakeFiles/game_test.dir/game_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game_test.dir/game_test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/game_test.cc > CMakeFiles/game_test.dir/game_test.cc.i

CMakeFiles/game_test.dir/game_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game_test.dir/game_test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/game_test.cc -o CMakeFiles/game_test.dir/game_test.cc.s

CMakeFiles/game_test.dir/game.cc.o: CMakeFiles/game_test.dir/flags.make
CMakeFiles/game_test.dir/game.cc.o: game.cc
CMakeFiles/game_test.dir/game.cc.o: CMakeFiles/game_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/game_test.dir/game.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game_test.dir/game.cc.o -MF CMakeFiles/game_test.dir/game.cc.o.d -o CMakeFiles/game_test.dir/game.cc.o -c /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/game.cc

CMakeFiles/game_test.dir/game.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game_test.dir/game.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/game.cc > CMakeFiles/game_test.dir/game.cc.i

CMakeFiles/game_test.dir/game.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game_test.dir/game.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/game.cc -o CMakeFiles/game_test.dir/game.cc.s

CMakeFiles/game_test.dir/physics.cc.o: CMakeFiles/game_test.dir/flags.make
CMakeFiles/game_test.dir/physics.cc.o: physics.cc
CMakeFiles/game_test.dir/physics.cc.o: CMakeFiles/game_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/game_test.dir/physics.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game_test.dir/physics.cc.o -MF CMakeFiles/game_test.dir/physics.cc.o.d -o CMakeFiles/game_test.dir/physics.cc.o -c /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/physics.cc

CMakeFiles/game_test.dir/physics.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game_test.dir/physics.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/physics.cc > CMakeFiles/game_test.dir/physics.cc.i

CMakeFiles/game_test.dir/physics.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game_test.dir/physics.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/physics.cc -o CMakeFiles/game_test.dir/physics.cc.s

CMakeFiles/game_test.dir/geometry.cc.o: CMakeFiles/game_test.dir/flags.make
CMakeFiles/game_test.dir/geometry.cc.o: geometry.cc
CMakeFiles/game_test.dir/geometry.cc.o: CMakeFiles/game_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/game_test.dir/geometry.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game_test.dir/geometry.cc.o -MF CMakeFiles/game_test.dir/geometry.cc.o.d -o CMakeFiles/game_test.dir/geometry.cc.o -c /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/geometry.cc

CMakeFiles/game_test.dir/geometry.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game_test.dir/geometry.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/geometry.cc > CMakeFiles/game_test.dir/geometry.cc.i

CMakeFiles/game_test.dir/geometry.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game_test.dir/geometry.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/geometry.cc -o CMakeFiles/game_test.dir/geometry.cc.s

CMakeFiles/game_test.dir/math.cc.o: CMakeFiles/game_test.dir/flags.make
CMakeFiles/game_test.dir/math.cc.o: math.cc
CMakeFiles/game_test.dir/math.cc.o: CMakeFiles/game_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/game_test.dir/math.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game_test.dir/math.cc.o -MF CMakeFiles/game_test.dir/math.cc.o.d -o CMakeFiles/game_test.dir/math.cc.o -c /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/math.cc

CMakeFiles/game_test.dir/math.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game_test.dir/math.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/math.cc > CMakeFiles/game_test.dir/math.cc.i

CMakeFiles/game_test.dir/math.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game_test.dir/math.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/math.cc -o CMakeFiles/game_test.dir/math.cc.s

CMakeFiles/game_test.dir/timer.cc.o: CMakeFiles/game_test.dir/flags.make
CMakeFiles/game_test.dir/timer.cc.o: timer.cc
CMakeFiles/game_test.dir/timer.cc.o: CMakeFiles/game_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/game_test.dir/timer.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game_test.dir/timer.cc.o -MF CMakeFiles/game_test.dir/timer.cc.o.d -o CMakeFiles/game_test.dir/timer.cc.o -c /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/timer.cc

CMakeFiles/game_test.dir/timer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game_test.dir/timer.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/timer.cc > CMakeFiles/game_test.dir/timer.cc.i

CMakeFiles/game_test.dir/timer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game_test.dir/timer.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/timer.cc -o CMakeFiles/game_test.dir/timer.cc.s

# Object files for target game_test
game_test_OBJECTS = \
"CMakeFiles/game_test.dir/game_test.cc.o" \
"CMakeFiles/game_test.dir/game.cc.o" \
"CMakeFiles/game_test.dir/physics.cc.o" \
"CMakeFiles/game_test.dir/geometry.cc.o" \
"CMakeFiles/game_test.dir/math.cc.o" \
"CMakeFiles/game_test.dir/timer.cc.o"

# External object files for target game_test
game_test_EXTERNAL_OBJECTS =

game_test: CMakeFiles/game_test.dir/game_test.cc.o
game_test: CMakeFiles/game_test.dir/game.cc.o
game_test: CMakeFiles/game_test.dir/physics.cc.o
game_test: CMakeFiles/game_test.dir/geometry.cc.o
game_test: CMakeFiles/game_test.dir/math.cc.o
game_test: CMakeFiles/game_test.dir/timer.cc.o
game_test: CMakeFiles/game_test.dir/build.make
game_test: CMakeFiles/game_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable game_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/game_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/game_test.dir/build: game_test
.PHONY : CMakeFiles/game_test.dir/build

CMakeFiles/game_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/game_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/game_test.dir/clean

CMakeFiles/game_test.dir/depend:
	cd /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d /home/shari/CLionProjects/Computergrafik/aufgabe3/asteroids_opengl_3d/CMakeFiles/game_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/game_test.dir/depend

