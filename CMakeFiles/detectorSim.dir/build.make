# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/ycc/Geant4/Carbon_sim

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ycc/Geant4/Carbon_sim

# Include any dependencies generated for this target.
include CMakeFiles/detectorSim.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/detectorSim.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/detectorSim.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/detectorSim.dir/flags.make

CMakeFiles/detectorSim.dir/detectorSim.cc.o: CMakeFiles/detectorSim.dir/flags.make
CMakeFiles/detectorSim.dir/detectorSim.cc.o: detectorSim.cc
CMakeFiles/detectorSim.dir/detectorSim.cc.o: CMakeFiles/detectorSim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ycc/Geant4/Carbon_sim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/detectorSim.dir/detectorSim.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/detectorSim.dir/detectorSim.cc.o -MF CMakeFiles/detectorSim.dir/detectorSim.cc.o.d -o CMakeFiles/detectorSim.dir/detectorSim.cc.o -c /home/ycc/Geant4/Carbon_sim/detectorSim.cc

CMakeFiles/detectorSim.dir/detectorSim.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectorSim.dir/detectorSim.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ycc/Geant4/Carbon_sim/detectorSim.cc > CMakeFiles/detectorSim.dir/detectorSim.cc.i

CMakeFiles/detectorSim.dir/detectorSim.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectorSim.dir/detectorSim.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ycc/Geant4/Carbon_sim/detectorSim.cc -o CMakeFiles/detectorSim.dir/detectorSim.cc.s

CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o: CMakeFiles/detectorSim.dir/flags.make
CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o: src/ActionInitialization.cc
CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o: CMakeFiles/detectorSim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ycc/Geant4/Carbon_sim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o -MF CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o.d -o CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o -c /home/ycc/Geant4/Carbon_sim/src/ActionInitialization.cc

CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ycc/Geant4/Carbon_sim/src/ActionInitialization.cc > CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.i

CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ycc/Geant4/Carbon_sim/src/ActionInitialization.cc -o CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.s

CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o: CMakeFiles/detectorSim.dir/flags.make
CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o: src/DetectorConstruction.cc
CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o: CMakeFiles/detectorSim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ycc/Geant4/Carbon_sim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o -MF CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o.d -o CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o -c /home/ycc/Geant4/Carbon_sim/src/DetectorConstruction.cc

CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ycc/Geant4/Carbon_sim/src/DetectorConstruction.cc > CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.i

CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ycc/Geant4/Carbon_sim/src/DetectorConstruction.cc -o CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.s

CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o: CMakeFiles/detectorSim.dir/flags.make
CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o: src/PhysicsList.cc
CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o: CMakeFiles/detectorSim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ycc/Geant4/Carbon_sim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o -MF CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o.d -o CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o -c /home/ycc/Geant4/Carbon_sim/src/PhysicsList.cc

CMakeFiles/detectorSim.dir/src/PhysicsList.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectorSim.dir/src/PhysicsList.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ycc/Geant4/Carbon_sim/src/PhysicsList.cc > CMakeFiles/detectorSim.dir/src/PhysicsList.cc.i

CMakeFiles/detectorSim.dir/src/PhysicsList.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectorSim.dir/src/PhysicsList.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ycc/Geant4/Carbon_sim/src/PhysicsList.cc -o CMakeFiles/detectorSim.dir/src/PhysicsList.cc.s

CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/detectorSim.dir/flags.make
CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o: src/PrimaryGeneratorAction.cc
CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/detectorSim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ycc/Geant4/Carbon_sim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o -MF CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o.d -o CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o -c /home/ycc/Geant4/Carbon_sim/src/PrimaryGeneratorAction.cc

CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ycc/Geant4/Carbon_sim/src/PrimaryGeneratorAction.cc > CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.i

CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ycc/Geant4/Carbon_sim/src/PrimaryGeneratorAction.cc -o CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.s

CMakeFiles/detectorSim.dir/src/Run.cc.o: CMakeFiles/detectorSim.dir/flags.make
CMakeFiles/detectorSim.dir/src/Run.cc.o: src/Run.cc
CMakeFiles/detectorSim.dir/src/Run.cc.o: CMakeFiles/detectorSim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ycc/Geant4/Carbon_sim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/detectorSim.dir/src/Run.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/detectorSim.dir/src/Run.cc.o -MF CMakeFiles/detectorSim.dir/src/Run.cc.o.d -o CMakeFiles/detectorSim.dir/src/Run.cc.o -c /home/ycc/Geant4/Carbon_sim/src/Run.cc

CMakeFiles/detectorSim.dir/src/Run.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectorSim.dir/src/Run.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ycc/Geant4/Carbon_sim/src/Run.cc > CMakeFiles/detectorSim.dir/src/Run.cc.i

CMakeFiles/detectorSim.dir/src/Run.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectorSim.dir/src/Run.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ycc/Geant4/Carbon_sim/src/Run.cc -o CMakeFiles/detectorSim.dir/src/Run.cc.s

CMakeFiles/detectorSim.dir/src/RunAction.cc.o: CMakeFiles/detectorSim.dir/flags.make
CMakeFiles/detectorSim.dir/src/RunAction.cc.o: src/RunAction.cc
CMakeFiles/detectorSim.dir/src/RunAction.cc.o: CMakeFiles/detectorSim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ycc/Geant4/Carbon_sim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/detectorSim.dir/src/RunAction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/detectorSim.dir/src/RunAction.cc.o -MF CMakeFiles/detectorSim.dir/src/RunAction.cc.o.d -o CMakeFiles/detectorSim.dir/src/RunAction.cc.o -c /home/ycc/Geant4/Carbon_sim/src/RunAction.cc

CMakeFiles/detectorSim.dir/src/RunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectorSim.dir/src/RunAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ycc/Geant4/Carbon_sim/src/RunAction.cc > CMakeFiles/detectorSim.dir/src/RunAction.cc.i

CMakeFiles/detectorSim.dir/src/RunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectorSim.dir/src/RunAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ycc/Geant4/Carbon_sim/src/RunAction.cc -o CMakeFiles/detectorSim.dir/src/RunAction.cc.s

CMakeFiles/detectorSim.dir/src/SDHit.cc.o: CMakeFiles/detectorSim.dir/flags.make
CMakeFiles/detectorSim.dir/src/SDHit.cc.o: src/SDHit.cc
CMakeFiles/detectorSim.dir/src/SDHit.cc.o: CMakeFiles/detectorSim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ycc/Geant4/Carbon_sim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/detectorSim.dir/src/SDHit.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/detectorSim.dir/src/SDHit.cc.o -MF CMakeFiles/detectorSim.dir/src/SDHit.cc.o.d -o CMakeFiles/detectorSim.dir/src/SDHit.cc.o -c /home/ycc/Geant4/Carbon_sim/src/SDHit.cc

CMakeFiles/detectorSim.dir/src/SDHit.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectorSim.dir/src/SDHit.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ycc/Geant4/Carbon_sim/src/SDHit.cc > CMakeFiles/detectorSim.dir/src/SDHit.cc.i

CMakeFiles/detectorSim.dir/src/SDHit.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectorSim.dir/src/SDHit.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ycc/Geant4/Carbon_sim/src/SDHit.cc -o CMakeFiles/detectorSim.dir/src/SDHit.cc.s

CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o: CMakeFiles/detectorSim.dir/flags.make
CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o: src/SensitiveDetector.cc
CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o: CMakeFiles/detectorSim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ycc/Geant4/Carbon_sim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o -MF CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o.d -o CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o -c /home/ycc/Geant4/Carbon_sim/src/SensitiveDetector.cc

CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ycc/Geant4/Carbon_sim/src/SensitiveDetector.cc > CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.i

CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ycc/Geant4/Carbon_sim/src/SensitiveDetector.cc -o CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.s

# Object files for target detectorSim
detectorSim_OBJECTS = \
"CMakeFiles/detectorSim.dir/detectorSim.cc.o" \
"CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o" \
"CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o" \
"CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o" \
"CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o" \
"CMakeFiles/detectorSim.dir/src/Run.cc.o" \
"CMakeFiles/detectorSim.dir/src/RunAction.cc.o" \
"CMakeFiles/detectorSim.dir/src/SDHit.cc.o" \
"CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o"

# External object files for target detectorSim
detectorSim_EXTERNAL_OBJECTS =

detectorSim: CMakeFiles/detectorSim.dir/detectorSim.cc.o
detectorSim: CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o
detectorSim: CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o
detectorSim: CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o
detectorSim: CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o
detectorSim: CMakeFiles/detectorSim.dir/src/Run.cc.o
detectorSim: CMakeFiles/detectorSim.dir/src/RunAction.cc.o
detectorSim: CMakeFiles/detectorSim.dir/src/SDHit.cc.o
detectorSim: CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o
detectorSim: CMakeFiles/detectorSim.dir/build.make
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4Tree.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4FR.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4GMocren.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4visHepRep.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4RayTracer.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4VRML.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4ToolsSG.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4OpenGL.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4visQt3D.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4vis_management.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4modeling.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4interfaces.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4persistency.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4error_propagation.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4readout.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4physicslists.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4run.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4event.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4tracking.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4parmodels.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4processes.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4digits_hits.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4track.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4particles.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4geometry.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4materials.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4graphics_reps.so
detectorSim: /usr/lib/x86_64-linux-gnu/libGL.so
detectorSim: /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so.5.15.3
detectorSim: /usr/lib/x86_64-linux-gnu/libQt5PrintSupport.so.5.15.3
detectorSim: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.15.3
detectorSim: /usr/lib/x86_64-linux-gnu/libQt53DExtras.so.5.15.3
detectorSim: /usr/lib/x86_64-linux-gnu/libQt53DInput.so.5.15.3
detectorSim: /usr/lib/x86_64-linux-gnu/libQt53DLogic.so.5.15.3
detectorSim: /usr/lib/x86_64-linux-gnu/libQt53DRender.so.5.15.3
detectorSim: /usr/lib/x86_64-linux-gnu/libQt53DCore.so.5.15.3
detectorSim: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.15.3
detectorSim: /usr/lib/x86_64-linux-gnu/libQt5Network.so.5.15.3
detectorSim: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.15.3
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4analysis.so
detectorSim: /usr/lib/x86_64-linux-gnu/libexpat.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4zlib.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4intercoms.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4global.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4clhep.so
detectorSim: /home/ycc/background/geant4-v11.1.1/install/lib/libG4ptl.so.2.3.3
detectorSim: CMakeFiles/detectorSim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ycc/Geant4/Carbon_sim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable detectorSim"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/detectorSim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/detectorSim.dir/build: detectorSim
.PHONY : CMakeFiles/detectorSim.dir/build

CMakeFiles/detectorSim.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/detectorSim.dir/cmake_clean.cmake
.PHONY : CMakeFiles/detectorSim.dir/clean

CMakeFiles/detectorSim.dir/depend:
	cd /home/ycc/Geant4/Carbon_sim && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ycc/Geant4/Carbon_sim /home/ycc/Geant4/Carbon_sim /home/ycc/Geant4/Carbon_sim /home/ycc/Geant4/Carbon_sim /home/ycc/Geant4/Carbon_sim/CMakeFiles/detectorSim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/detectorSim.dir/depend

