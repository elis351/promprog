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
CMAKE_SOURCE_DIR = /tmp/tmp.GvCyO5vdo5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/tmp.GvCyO5vdo5/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/task4.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/task4.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/task4.dir/flags.make

CMakeFiles/task4.dir/main.cpp.o: CMakeFiles/task4.dir/flags.make
CMakeFiles/task4.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.GvCyO5vdo5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/task4.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/task4.dir/main.cpp.o -c /tmp/tmp.GvCyO5vdo5/main.cpp

CMakeFiles/task4.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/task4.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.GvCyO5vdo5/main.cpp > CMakeFiles/task4.dir/main.cpp.i

CMakeFiles/task4.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/task4.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.GvCyO5vdo5/main.cpp -o CMakeFiles/task4.dir/main.cpp.s

# Object files for target task4
task4_OBJECTS = \
"CMakeFiles/task4.dir/main.cpp.o"

# External object files for target task4
task4_EXTERNAL_OBJECTS =

task4: CMakeFiles/task4.dir/main.cpp.o
task4: CMakeFiles/task4.dir/build.make
task4: /usr/local/lib/libopencv_gapi.so.4.5.2
task4: /usr/local/lib/libopencv_highgui.so.4.5.2
task4: /usr/local/lib/libopencv_ml.so.4.5.2
task4: /usr/local/lib/libopencv_objdetect.so.4.5.2
task4: /usr/local/lib/libopencv_photo.so.4.5.2
task4: /usr/local/lib/libopencv_stitching.so.4.5.2
task4: /usr/local/lib/libopencv_video.so.4.5.2
task4: /usr/local/lib/libopencv_videoio.so.4.5.2
task4: /usr/local/lib/libopencv_dnn.so.4.5.2
task4: /usr/local/lib/libopencv_imgcodecs.so.4.5.2
task4: /usr/local/lib/libopencv_calib3d.so.4.5.2
task4: /usr/local/lib/libopencv_features2d.so.4.5.2
task4: /usr/local/lib/libopencv_flann.so.4.5.2
task4: /usr/local/lib/libopencv_imgproc.so.4.5.2
task4: /usr/local/lib/libopencv_core.so.4.5.2
task4: CMakeFiles/task4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.GvCyO5vdo5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable task4"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/task4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/task4.dir/build: task4

.PHONY : CMakeFiles/task4.dir/build

CMakeFiles/task4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/task4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/task4.dir/clean

CMakeFiles/task4.dir/depend:
	cd /tmp/tmp.GvCyO5vdo5/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.GvCyO5vdo5 /tmp/tmp.GvCyO5vdo5 /tmp/tmp.GvCyO5vdo5/cmake-build-debug /tmp/tmp.GvCyO5vdo5/cmake-build-debug /tmp/tmp.GvCyO5vdo5/cmake-build-debug/CMakeFiles/task4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/task4.dir/depend

