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
CMAKE_SOURCE_DIR = /home/geant4/itrs/Geant4/DetectorSim

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/geant4/itrs/Geant4/DetectorSim

# Include any dependencies generated for this target.
include CMakeFiles/detectorSim.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/detectorSim.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/detectorSim.dir/flags.make

CMakeFiles/detectorSim.dir/detectorSim.cc.o: CMakeFiles/detectorSim.dir/flags.make
CMakeFiles/detectorSim.dir/detectorSim.cc.o: detectorSim.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/geant4/itrs/Geant4/DetectorSim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/detectorSim.dir/detectorSim.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/detectorSim.dir/detectorSim.cc.o -c /home/geant4/itrs/Geant4/DetectorSim/detectorSim.cc

CMakeFiles/detectorSim.dir/detectorSim.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectorSim.dir/detectorSim.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/geant4/itrs/Geant4/DetectorSim/detectorSim.cc > CMakeFiles/detectorSim.dir/detectorSim.cc.i

CMakeFiles/detectorSim.dir/detectorSim.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectorSim.dir/detectorSim.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/geant4/itrs/Geant4/DetectorSim/detectorSim.cc -o CMakeFiles/detectorSim.dir/detectorSim.cc.s

CMakeFiles/detectorSim.dir/detectorSim.cc.o.requires:

.PHONY : CMakeFiles/detectorSim.dir/detectorSim.cc.o.requires

CMakeFiles/detectorSim.dir/detectorSim.cc.o.provides: CMakeFiles/detectorSim.dir/detectorSim.cc.o.requires
	$(MAKE) -f CMakeFiles/detectorSim.dir/build.make CMakeFiles/detectorSim.dir/detectorSim.cc.o.provides.build
.PHONY : CMakeFiles/detectorSim.dir/detectorSim.cc.o.provides

CMakeFiles/detectorSim.dir/detectorSim.cc.o.provides.build: CMakeFiles/detectorSim.dir/detectorSim.cc.o


CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o: CMakeFiles/detectorSim.dir/flags.make
CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o: src/ActionInitialization.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/geant4/itrs/Geant4/DetectorSim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o -c /home/geant4/itrs/Geant4/DetectorSim/src/ActionInitialization.cc

CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/geant4/itrs/Geant4/DetectorSim/src/ActionInitialization.cc > CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.i

CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/geant4/itrs/Geant4/DetectorSim/src/ActionInitialization.cc -o CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.s

CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o.requires:

.PHONY : CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o.requires

CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o.provides: CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o.requires
	$(MAKE) -f CMakeFiles/detectorSim.dir/build.make CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o.provides.build
.PHONY : CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o.provides

CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o.provides.build: CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o


CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o: CMakeFiles/detectorSim.dir/flags.make
CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o: src/DetectorConstruction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/geant4/itrs/Geant4/DetectorSim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o -c /home/geant4/itrs/Geant4/DetectorSim/src/DetectorConstruction.cc

CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/geant4/itrs/Geant4/DetectorSim/src/DetectorConstruction.cc > CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.i

CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/geant4/itrs/Geant4/DetectorSim/src/DetectorConstruction.cc -o CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.s

CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o.requires:

.PHONY : CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o.requires

CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o.provides: CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o.requires
	$(MAKE) -f CMakeFiles/detectorSim.dir/build.make CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o.provides.build
.PHONY : CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o.provides

CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o.provides.build: CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o


CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o: CMakeFiles/detectorSim.dir/flags.make
CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o: src/PhysicsList.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/geant4/itrs/Geant4/DetectorSim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o -c /home/geant4/itrs/Geant4/DetectorSim/src/PhysicsList.cc

CMakeFiles/detectorSim.dir/src/PhysicsList.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectorSim.dir/src/PhysicsList.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/geant4/itrs/Geant4/DetectorSim/src/PhysicsList.cc > CMakeFiles/detectorSim.dir/src/PhysicsList.cc.i

CMakeFiles/detectorSim.dir/src/PhysicsList.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectorSim.dir/src/PhysicsList.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/geant4/itrs/Geant4/DetectorSim/src/PhysicsList.cc -o CMakeFiles/detectorSim.dir/src/PhysicsList.cc.s

CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o.requires:

.PHONY : CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o.requires

CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o.provides: CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o.requires
	$(MAKE) -f CMakeFiles/detectorSim.dir/build.make CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o.provides.build
.PHONY : CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o.provides

CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o.provides.build: CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o


CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/detectorSim.dir/flags.make
CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o: src/PrimaryGeneratorAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/geant4/itrs/Geant4/DetectorSim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o -c /home/geant4/itrs/Geant4/DetectorSim/src/PrimaryGeneratorAction.cc

CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/geant4/itrs/Geant4/DetectorSim/src/PrimaryGeneratorAction.cc > CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.i

CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/geant4/itrs/Geant4/DetectorSim/src/PrimaryGeneratorAction.cc -o CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.s

CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o.requires:

.PHONY : CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o.requires

CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o.provides: CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o.requires
	$(MAKE) -f CMakeFiles/detectorSim.dir/build.make CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o.provides.build
.PHONY : CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o.provides

CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o.provides.build: CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o


CMakeFiles/detectorSim.dir/src/Run.cc.o: CMakeFiles/detectorSim.dir/flags.make
CMakeFiles/detectorSim.dir/src/Run.cc.o: src/Run.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/geant4/itrs/Geant4/DetectorSim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/detectorSim.dir/src/Run.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/detectorSim.dir/src/Run.cc.o -c /home/geant4/itrs/Geant4/DetectorSim/src/Run.cc

CMakeFiles/detectorSim.dir/src/Run.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectorSim.dir/src/Run.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/geant4/itrs/Geant4/DetectorSim/src/Run.cc > CMakeFiles/detectorSim.dir/src/Run.cc.i

CMakeFiles/detectorSim.dir/src/Run.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectorSim.dir/src/Run.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/geant4/itrs/Geant4/DetectorSim/src/Run.cc -o CMakeFiles/detectorSim.dir/src/Run.cc.s

CMakeFiles/detectorSim.dir/src/Run.cc.o.requires:

.PHONY : CMakeFiles/detectorSim.dir/src/Run.cc.o.requires

CMakeFiles/detectorSim.dir/src/Run.cc.o.provides: CMakeFiles/detectorSim.dir/src/Run.cc.o.requires
	$(MAKE) -f CMakeFiles/detectorSim.dir/build.make CMakeFiles/detectorSim.dir/src/Run.cc.o.provides.build
.PHONY : CMakeFiles/detectorSim.dir/src/Run.cc.o.provides

CMakeFiles/detectorSim.dir/src/Run.cc.o.provides.build: CMakeFiles/detectorSim.dir/src/Run.cc.o


CMakeFiles/detectorSim.dir/src/RunAction.cc.o: CMakeFiles/detectorSim.dir/flags.make
CMakeFiles/detectorSim.dir/src/RunAction.cc.o: src/RunAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/geant4/itrs/Geant4/DetectorSim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/detectorSim.dir/src/RunAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/detectorSim.dir/src/RunAction.cc.o -c /home/geant4/itrs/Geant4/DetectorSim/src/RunAction.cc

CMakeFiles/detectorSim.dir/src/RunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectorSim.dir/src/RunAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/geant4/itrs/Geant4/DetectorSim/src/RunAction.cc > CMakeFiles/detectorSim.dir/src/RunAction.cc.i

CMakeFiles/detectorSim.dir/src/RunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectorSim.dir/src/RunAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/geant4/itrs/Geant4/DetectorSim/src/RunAction.cc -o CMakeFiles/detectorSim.dir/src/RunAction.cc.s

CMakeFiles/detectorSim.dir/src/RunAction.cc.o.requires:

.PHONY : CMakeFiles/detectorSim.dir/src/RunAction.cc.o.requires

CMakeFiles/detectorSim.dir/src/RunAction.cc.o.provides: CMakeFiles/detectorSim.dir/src/RunAction.cc.o.requires
	$(MAKE) -f CMakeFiles/detectorSim.dir/build.make CMakeFiles/detectorSim.dir/src/RunAction.cc.o.provides.build
.PHONY : CMakeFiles/detectorSim.dir/src/RunAction.cc.o.provides

CMakeFiles/detectorSim.dir/src/RunAction.cc.o.provides.build: CMakeFiles/detectorSim.dir/src/RunAction.cc.o


CMakeFiles/detectorSim.dir/src/SDHit.cc.o: CMakeFiles/detectorSim.dir/flags.make
CMakeFiles/detectorSim.dir/src/SDHit.cc.o: src/SDHit.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/geant4/itrs/Geant4/DetectorSim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/detectorSim.dir/src/SDHit.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/detectorSim.dir/src/SDHit.cc.o -c /home/geant4/itrs/Geant4/DetectorSim/src/SDHit.cc

CMakeFiles/detectorSim.dir/src/SDHit.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectorSim.dir/src/SDHit.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/geant4/itrs/Geant4/DetectorSim/src/SDHit.cc > CMakeFiles/detectorSim.dir/src/SDHit.cc.i

CMakeFiles/detectorSim.dir/src/SDHit.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectorSim.dir/src/SDHit.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/geant4/itrs/Geant4/DetectorSim/src/SDHit.cc -o CMakeFiles/detectorSim.dir/src/SDHit.cc.s

CMakeFiles/detectorSim.dir/src/SDHit.cc.o.requires:

.PHONY : CMakeFiles/detectorSim.dir/src/SDHit.cc.o.requires

CMakeFiles/detectorSim.dir/src/SDHit.cc.o.provides: CMakeFiles/detectorSim.dir/src/SDHit.cc.o.requires
	$(MAKE) -f CMakeFiles/detectorSim.dir/build.make CMakeFiles/detectorSim.dir/src/SDHit.cc.o.provides.build
.PHONY : CMakeFiles/detectorSim.dir/src/SDHit.cc.o.provides

CMakeFiles/detectorSim.dir/src/SDHit.cc.o.provides.build: CMakeFiles/detectorSim.dir/src/SDHit.cc.o


CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o: CMakeFiles/detectorSim.dir/flags.make
CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o: src/SensitiveDetector.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/geant4/itrs/Geant4/DetectorSim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o -c /home/geant4/itrs/Geant4/DetectorSim/src/SensitiveDetector.cc

CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/geant4/itrs/Geant4/DetectorSim/src/SensitiveDetector.cc > CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.i

CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/geant4/itrs/Geant4/DetectorSim/src/SensitiveDetector.cc -o CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.s

CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o.requires:

.PHONY : CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o.requires

CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o.provides: CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o.requires
	$(MAKE) -f CMakeFiles/detectorSim.dir/build.make CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o.provides.build
.PHONY : CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o.provides

CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o.provides.build: CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o


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
detectorSim: /usr/local/Geant4/lib/libG4Tree.so
detectorSim: /usr/local/Geant4/lib/libG4GMocren.so
detectorSim: /usr/local/Geant4/lib/libG4visHepRep.so
detectorSim: /usr/local/Geant4/lib/libG4RayTracer.so
detectorSim: /usr/local/Geant4/lib/libG4VRML.so
detectorSim: /usr/local/Geant4/lib/libG4OpenGL.so
detectorSim: /usr/local/Geant4/lib/libG4OpenInventor.so
detectorSim: /usr/local/Geant4/lib/libG4interfaces.so
detectorSim: /usr/local/Geant4/lib/libG4persistency.so
detectorSim: /usr/local/Geant4/lib/libG4error_propagation.so
detectorSim: /usr/local/Geant4/lib/libG4readout.so
detectorSim: /usr/local/Geant4/lib/libG4physicslists.so
detectorSim: /usr/local/Geant4/lib/libG4parmodels.so
detectorSim: /usr/local/Geant4/lib/libG4FR.so
detectorSim: /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so.5.9.5
detectorSim: /usr/local/Geant4/lib/libG4gl2ps.so
detectorSim: /usr/lib/x86_64-linux-gnu/libGLU.so
detectorSim: /usr/lib/x86_64-linux-gnu/libGL.so
detectorSim: /usr/local/Geant4/lib/libG4vis_management.so
detectorSim: /usr/local/Geant4/lib/libG4modeling.so
detectorSim: /usr/lib/x86_64-linux-gnu/libXmu.so
detectorSim: /usr/lib/x86_64-linux-gnu/libXext.so
detectorSim: /usr/lib/x86_64-linux-gnu/libXm.so
detectorSim: /usr/lib/x86_64-linux-gnu/libQt5PrintSupport.so.5.9.5
detectorSim: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.9.5
detectorSim: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.9.5
detectorSim: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.9.5
detectorSim: /usr/lib/x86_64-linux-gnu/libXt.so
detectorSim: /usr/lib/x86_64-linux-gnu/libSM.so
detectorSim: /usr/lib/x86_64-linux-gnu/libICE.so
detectorSim: /usr/lib/x86_64-linux-gnu/libX11.so
detectorSim: /usr/lib/x86_64-linux-gnu/libCoin.so
detectorSim: /usr/lib/x86_64-linux-gnu/libGL.so
detectorSim: /usr/lib/x86_64-linux-gnu/libGLU.so
detectorSim: /usr/local/lib/libSoXt.so
detectorSim: /usr/lib/x86_64-linux-gnu/libXm.so
detectorSim: /usr/lib/x86_64-linux-gnu/libSM.so
detectorSim: /usr/lib/x86_64-linux-gnu/libICE.so
detectorSim: /usr/lib/x86_64-linux-gnu/libX11.so
detectorSim: /usr/lib/x86_64-linux-gnu/libXext.so
detectorSim: /usr/lib/x86_64-linux-gnu/libXpm.so
detectorSim: /usr/lib/x86_64-linux-gnu/libxerces-c.so
detectorSim: /usr/local/Geant4/lib/libG4run.so
detectorSim: /usr/local/Geant4/lib/libG4event.so
detectorSim: /usr/local/Geant4/lib/libG4tracking.so
detectorSim: /usr/local/Geant4/lib/libG4processes.so
detectorSim: /usr/local/Geant4/lib/libG4analysis.so
detectorSim: /usr/lib/x86_64-linux-gnu/libz.so
detectorSim: /usr/lib/x86_64-linux-gnu/libexpat.so
detectorSim: /usr/local/Geant4/lib/libG4digits_hits.so
detectorSim: /usr/local/Geant4/lib/libG4track.so
detectorSim: /usr/local/Geant4/lib/libG4particles.so
detectorSim: /usr/local/Geant4/lib/libG4geometry.so
detectorSim: /usr/local/Geant4/lib/libG4materials.so
detectorSim: /usr/local/Geant4/lib/libG4graphics_reps.so
detectorSim: /usr/local/Geant4/lib/libG4intercoms.so
detectorSim: /usr/local/Geant4/lib/libG4global.so
detectorSim: /usr/local/lib/libCLHEP-2.4.1.3.so
detectorSim: CMakeFiles/detectorSim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/geant4/itrs/Geant4/DetectorSim/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable detectorSim"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/detectorSim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/detectorSim.dir/build: detectorSim

.PHONY : CMakeFiles/detectorSim.dir/build

CMakeFiles/detectorSim.dir/requires: CMakeFiles/detectorSim.dir/detectorSim.cc.o.requires
CMakeFiles/detectorSim.dir/requires: CMakeFiles/detectorSim.dir/src/ActionInitialization.cc.o.requires
CMakeFiles/detectorSim.dir/requires: CMakeFiles/detectorSim.dir/src/DetectorConstruction.cc.o.requires
CMakeFiles/detectorSim.dir/requires: CMakeFiles/detectorSim.dir/src/PhysicsList.cc.o.requires
CMakeFiles/detectorSim.dir/requires: CMakeFiles/detectorSim.dir/src/PrimaryGeneratorAction.cc.o.requires
CMakeFiles/detectorSim.dir/requires: CMakeFiles/detectorSim.dir/src/Run.cc.o.requires
CMakeFiles/detectorSim.dir/requires: CMakeFiles/detectorSim.dir/src/RunAction.cc.o.requires
CMakeFiles/detectorSim.dir/requires: CMakeFiles/detectorSim.dir/src/SDHit.cc.o.requires
CMakeFiles/detectorSim.dir/requires: CMakeFiles/detectorSim.dir/src/SensitiveDetector.cc.o.requires

.PHONY : CMakeFiles/detectorSim.dir/requires

CMakeFiles/detectorSim.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/detectorSim.dir/cmake_clean.cmake
.PHONY : CMakeFiles/detectorSim.dir/clean

CMakeFiles/detectorSim.dir/depend:
	cd /home/geant4/itrs/Geant4/DetectorSim && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/geant4/itrs/Geant4/DetectorSim /home/geant4/itrs/Geant4/DetectorSim /home/geant4/itrs/Geant4/DetectorSim /home/geant4/itrs/Geant4/DetectorSim /home/geant4/itrs/Geant4/DetectorSim/CMakeFiles/detectorSim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/detectorSim.dir/depend

