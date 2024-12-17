cmake_minimum_required(VERSION 3.10)

project(LabWorkOS LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)

add_library(library1 SHARED library1.cpp)
set_target_properties(library1 PROPERTIES OUTPUT_NAME "library1")

add_library(library2 SHARED library2.cpp)
set_target_properties(library2 PROPERTIES OUTPUT_NAME "library2")

add_executable(program1 program1.cpp)
target_link_libraries(program1 PRIVATE library1) 
target_include_directories(program1 PRIVATE ${CMAKE_SOURCE_DIR}) 

add_executable(program2 program2.cpp)

set_target_properties(
    program1 program2 library1 library2
    PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin
)