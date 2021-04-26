cmake_minimum_required(VERSION 3.8)
project(dtest)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
include_directories(. "./third_part/include")
link_directories(. "./third_part/lib")

#aux_source_directory(. src_files)
#add_library(smncpp ${src_files})

add_executable(dtest main.cpp)

target_link_libraries(dtest smncpp)

