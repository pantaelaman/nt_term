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
CMAKE_SOURCE_DIR = /home/pantaelaman/Documents/nt_term

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pantaelaman/Documents/nt_term/build

# Include any dependencies generated for this target.
include CMakeFiles/ntterm.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ntterm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ntterm.dir/flags.make

CMakeFiles/ntterm.dir/src/main.cc.o: CMakeFiles/ntterm.dir/flags.make
CMakeFiles/ntterm.dir/src/main.cc.o: ../src/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pantaelaman/Documents/nt_term/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ntterm.dir/src/main.cc.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ntterm.dir/src/main.cc.o -c /home/pantaelaman/Documents/nt_term/src/main.cc

CMakeFiles/ntterm.dir/src/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ntterm.dir/src/main.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pantaelaman/Documents/nt_term/src/main.cc > CMakeFiles/ntterm.dir/src/main.cc.i

CMakeFiles/ntterm.dir/src/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ntterm.dir/src/main.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pantaelaman/Documents/nt_term/src/main.cc -o CMakeFiles/ntterm.dir/src/main.cc.s

CMakeFiles/ntterm.dir/src/nt.cc.o: CMakeFiles/ntterm.dir/flags.make
CMakeFiles/ntterm.dir/src/nt.cc.o: ../src/nt.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pantaelaman/Documents/nt_term/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ntterm.dir/src/nt.cc.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ntterm.dir/src/nt.cc.o -c /home/pantaelaman/Documents/nt_term/src/nt.cc

CMakeFiles/ntterm.dir/src/nt.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ntterm.dir/src/nt.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pantaelaman/Documents/nt_term/src/nt.cc > CMakeFiles/ntterm.dir/src/nt.cc.i

CMakeFiles/ntterm.dir/src/nt.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ntterm.dir/src/nt.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pantaelaman/Documents/nt_term/src/nt.cc -o CMakeFiles/ntterm.dir/src/nt.cc.s

CMakeFiles/ntterm.dir/src/util.cc.o: CMakeFiles/ntterm.dir/flags.make
CMakeFiles/ntterm.dir/src/util.cc.o: ../src/util.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pantaelaman/Documents/nt_term/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ntterm.dir/src/util.cc.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ntterm.dir/src/util.cc.o -c /home/pantaelaman/Documents/nt_term/src/util.cc

CMakeFiles/ntterm.dir/src/util.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ntterm.dir/src/util.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pantaelaman/Documents/nt_term/src/util.cc > CMakeFiles/ntterm.dir/src/util.cc.i

CMakeFiles/ntterm.dir/src/util.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ntterm.dir/src/util.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pantaelaman/Documents/nt_term/src/util.cc -o CMakeFiles/ntterm.dir/src/util.cc.s

# Object files for target ntterm
ntterm_OBJECTS = \
"CMakeFiles/ntterm.dir/src/main.cc.o" \
"CMakeFiles/ntterm.dir/src/nt.cc.o" \
"CMakeFiles/ntterm.dir/src/util.cc.o"

# External object files for target ntterm
ntterm_EXTERNAL_OBJECTS =

ntterm: CMakeFiles/ntterm.dir/src/main.cc.o
ntterm: CMakeFiles/ntterm.dir/src/nt.cc.o
ntterm: CMakeFiles/ntterm.dir/src/util.cc.o
ntterm: CMakeFiles/ntterm.dir/build.make
ntterm: /usr/local/lib/libtvision.a
ntterm: /usr/lib/x86_64-linux-gnu/libncursesw.so
ntterm: /usr/lib/x86_64-linux-gnu/libtinfo.so
ntterm: /usr/lib/x86_64-linux-gnu/libgpm.so
ntterm: CMakeFiles/ntterm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pantaelaman/Documents/nt_term/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ntterm"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ntterm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ntterm.dir/build: ntterm

.PHONY : CMakeFiles/ntterm.dir/build

CMakeFiles/ntterm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ntterm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ntterm.dir/clean

CMakeFiles/ntterm.dir/depend:
	cd /home/pantaelaman/Documents/nt_term/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pantaelaman/Documents/nt_term /home/pantaelaman/Documents/nt_term /home/pantaelaman/Documents/nt_term/build /home/pantaelaman/Documents/nt_term/build /home/pantaelaman/Documents/nt_term/build/CMakeFiles/ntterm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ntterm.dir/depend

