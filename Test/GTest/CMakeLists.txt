ADD_SUBDIRS()

#
# Build MARTe2GTest.so library
#
set(GTEST_EXEUTABLE_SUFFIX  GTest)
set (LIB_LIST ${PROJECT_NAME}${GTEST_SCHEDULER_SUFFIX}
              ${PROJECT_NAME}${GTEST_FILESYSTEM_SUFFIX}
              ${PROJECT_NAME}${GTEST_BAREMETAL_SUFFIX})
COMBINE_LIBS(${PROJECT_NAME}${GTEST_EXEUTABLE_SUFFIX} "${LIB_LIST}")

#
# GTest Executable
#
set (EXECUTABLE_NAME MARTe2GTest)

enable_testing()
find_package(GTest CONFIG REQUIRED)

# Optionally glob, but only for CMake 3.12 or later:
file(GLOB ${EXECUTABLE_NAME}_SOURCE_LIST CONFIGURE_DEPENDS "*.cpp")

include_directories(../../Source/Core/BareMetal/L0Types
                    ../../Source/Core/BareMetal/L1Portability
                    ../../Source/Core/BareMetal/L2Objects
                    ../../Source/Core/BareMetal/L3Streams
                    ../../Source/Core/BareMetal/L4Configuration
                    ../../Source/Core/BareMetal/L5GAMs
                    ../../Source/Core/BareMetal/L6App
                    ../../Source/Core/FileSystem/L1Portability
                    ../../Source/Core/Scheduler/L1Portability
                    ../../Test
                    .)

link_directories(${CMAKE_LIBRARY_OUTPUT_DIRECTORY})

add_executable(
    ${EXECUTABLE_NAME}App ${${EXECUTABLE_NAME}_SOURCE_LIST}
    )

target_link_libraries(${EXECUTABLE_NAME}App ${PROJECT_NAME} ${PROJECT_NAME}Test ${PROJECT_NAME}${GTEST_EXEUTABLE_SUFFIX} GTest::gtest GTest::gtest_main -lstdc++ -lgcc_s -lglib-2.0 -lm -lc -lrt -ldl -lpthread -Wl,--no-as-needed -fPIC)

#target_link_libraries(${EXECUTABLE_NAME}App PRIVATE GTest::gtest_main GTest::gtest lib${PROJECT_NAME}.a lib${PROJECT_NAME}Test.a lib${PROJECT_NAME}${GTEST_EXEUTABLE_SUFFIX}.a libL6AppB.a)
