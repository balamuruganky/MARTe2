cmake_minimum_required(VERSION 3.14...3.29)

project(
  MARTe2
  VERSION 0.1
  DESCRIPTION "MARTe2"
  LANGUAGES CXX)

set(ENVIRONMENT Linux)
set(ARCHITECTURE x86_gcc)

set(BAREMETAL_SUFFIX  B)
set(FILESYSTEM_SUFFIX F)
set(SCHEDULER_SUFFIX  S)
set(GTEST_BAREMETAL_SUFFIX  B_GTest)
set(GTEST_FILESYSTEM_SUFFIX F_GTest)
set(GTEST_SCHEDULER_SUFFIX  S_GTest)
set(TEST_BAREMETAL_SUFFIX  B_Test)
set(TEST_FILESYSTEM_SUFFIX F_Test)
set(TEST_SCHEDULER_SUFFIX  S_Test)

set(MARTe2_TEST_ENVIRONMENT GTest)
set(EXECUTABLE_SUFFIX .ex)

#
# Include platform related toolchains
#
include (${CMAKE_HOME_DIRECTORY}/cmake/compiler/gcc.cmake)
include (${CMAKE_HOME_DIRECTORY}/cmake/platform/x86-64_linux.cmake)

#
# Include common macros
#
include (${CMAKE_HOME_DIRECTORY}/cmake/common/bundle_libraries.macro)
include (${CMAKE_HOME_DIRECTORY}/cmake/common/add_subdirectories.macro)
include (${CMAKE_HOME_DIRECTORY}/cmake/common/build_static_library.macro)

#
# VCPKG bootstrap and installation
#
include(cmake/common/automate-vcpkg.cmake)
vcpkg_bootstrap()
vcpkg_install_packages(gtest)

#
# Library specific settings
#
set (
    CMAKE_RUNTIME_OUTPUT_DIRECTORY
    ${CMAKE_HOME_DIRECTORY}/${CMAKE_SYSTEM_PROCESSOR}-${CMAKE_HOST_SYSTEM_NAME}/${CMAKE_GENERATOR_PLATFORM}/bin
    )

set (
    CMAKE_LIBRARY_OUTPUT_DIRECTORY
    ${CMAKE_HOME_DIRECTORY}/${CMAKE_SYSTEM_PROCESSOR}-${CMAKE_HOST_SYSTEM_NAME}/${CMAKE_GENERATOR_PLATFORM}/lib
    )

set (
    CMAKE_ARCHIVE_OUTPUT_DIRECTORY
    ${CMAKE_HOME_DIRECTORY}/${CMAKE_SYSTEM_PROCESSOR}-${CMAKE_HOST_SYSTEM_NAME}/${CMAKE_GENERATOR_PLATFORM}/lib
    )

add_subdirectory (Source)
add_subdirectory (Test)