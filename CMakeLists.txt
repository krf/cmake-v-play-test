cmake_minimum_required(VERSION 3.9)
project(app VERSION 1.0 LANGUAGES C CXX)

set(CMAKE_AUTOMOC ON) 
set(CMAKE_AUTORCC ON) 
set(CMAKE_INCLUDE_CURRENT_DIR ON) 

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

option(BUILD_SHARED_LIBS "Build all libraries as shared libraries instead of static" OFF)

find_package(Qt5 CONFIG REQUIRED COMPONENTS Widgets Quick Core Qml)

include(vplay.cmake)

add_executable(app
    main.cpp

    resources.qrc
)
target_link_libraries(app
    PRIVATE
        Qt5::Widgets Qt5::Quick Qt5::Qml ThirdParty::VPlay
)

