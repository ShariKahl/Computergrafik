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
include CMakeFiles/main_game.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/main_game.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/main_game.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main_game.dir/flags.make

CMakeFiles/main_game.dir/game.cc.o: CMakeFiles/main_game.dir/flags.make
CMakeFiles/main_game.dir/game.cc.o: game.cc
CMakeFiles/main_game.dir/game.cc.o: CMakeFiles/main_game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main_game.dir/game.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main_game.dir/game.cc.o -MF CMakeFiles/main_game.dir/game.cc.o.d -o CMakeFiles/main_game.dir/game.cc.o -c /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/game.cc

CMakeFiles/main_game.dir/game.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main_game.dir/game.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/game.cc > CMakeFiles/main_game.dir/game.cc.i

CMakeFiles/main_game.dir/game.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main_game.dir/game.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/game.cc -o CMakeFiles/main_game.dir/game.cc.s

CMakeFiles/main_game.dir/math.cc.o: CMakeFiles/main_game.dir/flags.make
CMakeFiles/main_game.dir/math.cc.o: math.cc
CMakeFiles/main_game.dir/math.cc.o: CMakeFiles/main_game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/main_game.dir/math.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main_game.dir/math.cc.o -MF CMakeFiles/main_game.dir/math.cc.o.d -o CMakeFiles/main_game.dir/math.cc.o -c /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/math.cc

CMakeFiles/main_game.dir/math.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main_game.dir/math.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/math.cc > CMakeFiles/main_game.dir/math.cc.i

CMakeFiles/main_game.dir/math.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main_game.dir/math.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/math.cc -o CMakeFiles/main_game.dir/math.cc.s

CMakeFiles/main_game.dir/geometry.cc.o: CMakeFiles/main_game.dir/flags.make
CMakeFiles/main_game.dir/geometry.cc.o: geometry.cc
CMakeFiles/main_game.dir/geometry.cc.o: CMakeFiles/main_game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/main_game.dir/geometry.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main_game.dir/geometry.cc.o -MF CMakeFiles/main_game.dir/geometry.cc.o.d -o CMakeFiles/main_game.dir/geometry.cc.o -c /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/geometry.cc

CMakeFiles/main_game.dir/geometry.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main_game.dir/geometry.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/geometry.cc > CMakeFiles/main_game.dir/geometry.cc.i

CMakeFiles/main_game.dir/geometry.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main_game.dir/geometry.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/geometry.cc -o CMakeFiles/main_game.dir/geometry.cc.s

CMakeFiles/main_game.dir/sdl2_renderer.cc.o: CMakeFiles/main_game.dir/flags.make
CMakeFiles/main_game.dir/sdl2_renderer.cc.o: sdl2_renderer.cc
CMakeFiles/main_game.dir/sdl2_renderer.cc.o: CMakeFiles/main_game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/main_game.dir/sdl2_renderer.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main_game.dir/sdl2_renderer.cc.o -MF CMakeFiles/main_game.dir/sdl2_renderer.cc.o.d -o CMakeFiles/main_game.dir/sdl2_renderer.cc.o -c /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/sdl2_renderer.cc

CMakeFiles/main_game.dir/sdl2_renderer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main_game.dir/sdl2_renderer.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/sdl2_renderer.cc > CMakeFiles/main_game.dir/sdl2_renderer.cc.i

CMakeFiles/main_game.dir/sdl2_renderer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main_game.dir/sdl2_renderer.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/sdl2_renderer.cc -o CMakeFiles/main_game.dir/sdl2_renderer.cc.s

CMakeFiles/main_game.dir/sound.cc.o: CMakeFiles/main_game.dir/flags.make
CMakeFiles/main_game.dir/sound.cc.o: sound.cc
CMakeFiles/main_game.dir/sound.cc.o: CMakeFiles/main_game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/main_game.dir/sound.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main_game.dir/sound.cc.o -MF CMakeFiles/main_game.dir/sound.cc.o.d -o CMakeFiles/main_game.dir/sound.cc.o -c /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/sound.cc

CMakeFiles/main_game.dir/sound.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main_game.dir/sound.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/sound.cc > CMakeFiles/main_game.dir/sound.cc.i

CMakeFiles/main_game.dir/sound.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main_game.dir/sound.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/sound.cc -o CMakeFiles/main_game.dir/sound.cc.s

CMakeFiles/main_game.dir/main_game.cc.o: CMakeFiles/main_game.dir/flags.make
CMakeFiles/main_game.dir/main_game.cc.o: main_game.cc
CMakeFiles/main_game.dir/main_game.cc.o: CMakeFiles/main_game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/main_game.dir/main_game.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main_game.dir/main_game.cc.o -MF CMakeFiles/main_game.dir/main_game.cc.o.d -o CMakeFiles/main_game.dir/main_game.cc.o -c /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/main_game.cc

CMakeFiles/main_game.dir/main_game.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main_game.dir/main_game.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/main_game.cc > CMakeFiles/main_game.dir/main_game.cc.i

CMakeFiles/main_game.dir/main_game.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main_game.dir/main_game.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/main_game.cc -o CMakeFiles/main_game.dir/main_game.cc.s

CMakeFiles/main_game.dir/physics.cc.o: CMakeFiles/main_game.dir/flags.make
CMakeFiles/main_game.dir/physics.cc.o: physics.cc
CMakeFiles/main_game.dir/physics.cc.o: CMakeFiles/main_game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/main_game.dir/physics.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main_game.dir/physics.cc.o -MF CMakeFiles/main_game.dir/physics.cc.o.d -o CMakeFiles/main_game.dir/physics.cc.o -c /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/physics.cc

CMakeFiles/main_game.dir/physics.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main_game.dir/physics.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/physics.cc > CMakeFiles/main_game.dir/physics.cc.i

CMakeFiles/main_game.dir/physics.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main_game.dir/physics.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/physics.cc -o CMakeFiles/main_game.dir/physics.cc.s

CMakeFiles/main_game.dir/sdl2_game_controller.cc.o: CMakeFiles/main_game.dir/flags.make
CMakeFiles/main_game.dir/sdl2_game_controller.cc.o: sdl2_game_controller.cc
CMakeFiles/main_game.dir/sdl2_game_controller.cc.o: CMakeFiles/main_game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/main_game.dir/sdl2_game_controller.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main_game.dir/sdl2_game_controller.cc.o -MF CMakeFiles/main_game.dir/sdl2_game_controller.cc.o.d -o CMakeFiles/main_game.dir/sdl2_game_controller.cc.o -c /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/sdl2_game_controller.cc

CMakeFiles/main_game.dir/sdl2_game_controller.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main_game.dir/sdl2_game_controller.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/sdl2_game_controller.cc > CMakeFiles/main_game.dir/sdl2_game_controller.cc.i

CMakeFiles/main_game.dir/sdl2_game_controller.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main_game.dir/sdl2_game_controller.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/sdl2_game_controller.cc -o CMakeFiles/main_game.dir/sdl2_game_controller.cc.s

CMakeFiles/main_game.dir/timer.cc.o: CMakeFiles/main_game.dir/flags.make
CMakeFiles/main_game.dir/timer.cc.o: timer.cc
CMakeFiles/main_game.dir/timer.cc.o: CMakeFiles/main_game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/main_game.dir/timer.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main_game.dir/timer.cc.o -MF CMakeFiles/main_game.dir/timer.cc.o.d -o CMakeFiles/main_game.dir/timer.cc.o -c /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/timer.cc

CMakeFiles/main_game.dir/timer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main_game.dir/timer.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/timer.cc > CMakeFiles/main_game.dir/timer.cc.i

CMakeFiles/main_game.dir/timer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main_game.dir/timer.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/timer.cc -o CMakeFiles/main_game.dir/timer.cc.s

# Object files for target main_game
main_game_OBJECTS = \
"CMakeFiles/main_game.dir/game.cc.o" \
"CMakeFiles/main_game.dir/math.cc.o" \
"CMakeFiles/main_game.dir/geometry.cc.o" \
"CMakeFiles/main_game.dir/sdl2_renderer.cc.o" \
"CMakeFiles/main_game.dir/sound.cc.o" \
"CMakeFiles/main_game.dir/main_game.cc.o" \
"CMakeFiles/main_game.dir/physics.cc.o" \
"CMakeFiles/main_game.dir/sdl2_game_controller.cc.o" \
"CMakeFiles/main_game.dir/timer.cc.o"

# External object files for target main_game
main_game_EXTERNAL_OBJECTS =

main_game: CMakeFiles/main_game.dir/game.cc.o
main_game: CMakeFiles/main_game.dir/math.cc.o
main_game: CMakeFiles/main_game.dir/geometry.cc.o
main_game: CMakeFiles/main_game.dir/sdl2_renderer.cc.o
main_game: CMakeFiles/main_game.dir/sound.cc.o
main_game: CMakeFiles/main_game.dir/main_game.cc.o
main_game: CMakeFiles/main_game.dir/physics.cc.o
main_game: CMakeFiles/main_game.dir/sdl2_game_controller.cc.o
main_game: CMakeFiles/main_game.dir/timer.cc.o
main_game: CMakeFiles/main_game.dir/build.make
main_game: CMakeFiles/main_game.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable main_game"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main_game.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main_game.dir/build: main_game
.PHONY : CMakeFiles/main_game.dir/build

CMakeFiles/main_game.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main_game.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main_game.dir/clean

CMakeFiles/main_game.dir/depend:
	cd /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids /home/kash1012/Documents/Computergrafik/aufgabe1/asteroids/CMakeFiles/main_game.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/main_game.dir/depend
