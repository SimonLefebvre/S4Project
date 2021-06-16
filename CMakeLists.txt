cmake_minimum_required(VERSION 3.0)

if (POLICY CMP0048)
    cmake_policy(SET CMP0048 NEW)
endif (POLICY CMP0048)

# 'Google_test' is the subproject name
project(S4Project)

# 'lib' is the folder with Google Test sources
add_subdirectory(googletest)
include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})
include_directories(Tests)
# 'Google_Tests_run' is the target name
add_executable(Google_Tests_run
        Tests/test01.cpp Bank.cpp Bank.h Tests/testRTC.cpp
        Tests/xc.h
        MPLAB/WUB_MpLab.X/RTC.h
        MPLAB/WUB_MpLab.X/RTC.c
        Tests/p32mx370f512l.h)
target_link_libraries(Google_Tests_run gtest gtest_main)

add_definitions(-Dgtest)
