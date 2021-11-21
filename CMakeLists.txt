cmake_minimum_required(VERSION 3.15)

project(qtempty VERSION 0.1 LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 COMPONENTS Core Quick REQUIRED)

add_subdirectory(examples/hello)
add_subdirectory(examples/color_block)
add_subdirectory(examples/cppobject)
add_subdirectory(examples/repeater)
add_subdirectory(examples/handle_key)
add_subdirectory(examples/color_maker)
add_subdirectory(examples/callQml)
add_subdirectory(examples/imageProcessor)
add_subdirectory(examples/canvas)