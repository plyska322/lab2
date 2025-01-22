cmake_minimum_required(VERSION 3.10)
project(Calculator)

set(CMAKE_CXX_STANDARD 11)
include_directories(include)

add_library(calculator SHARED src/calculator.cpp)
add_executable(main src/main.cpp)
target_link_libraries(main calculator)