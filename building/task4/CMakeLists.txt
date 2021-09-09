cmake_minimum_required(VERSION 3.16)
project(task4)

set(CMAKE_CXX_STANDARD 14)

find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )

add_executable(task4 main.cpp)
target_link_libraries( task4 ${OpenCV_LIBS} )