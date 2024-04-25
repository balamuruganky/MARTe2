set (EXECUTABLE_NAME MARTe2UTest)

#set (MARTe2_TEST_ENVIRONMENT Portable)
#add_definitions(-DMARTe2_TEST_ENVIRONMENT=${MARTe2_TEST_ENVIRONMENT})

# Optionally glob, but only for CMake 3.12 or later:
file(GLOB ${EXECUTABLE_NAME}_SOURCE_LIST CONFIGURE_DEPENDS "*.cpp")

include_directories(../../Source/Core/BareMetal/L0Types
                    ../../Source/Core/BareMetal/L1Portability
                    ../../Source/Core/BareMetal/L2Objects
                    ../../Source/Core/BareMetal/L3Streams
                    ../../Source/Core/BareMetal/L4Configuration
                    ../../Source/Core/BareMetal/L5GAMs
                    ../../Source/Core/FileSystem/L1Portability
                    ../../Source/Core/Scheduler/L1Portability
                    ..
                    .)

#add_executable(
#    ${EXECUTABLE_NAME}${EXECUTABLE_SUFFIX} ${${EXECUTABLE_NAME}_SOURCE_LIST}
#    )

#target_link_libraries(${EXECUTABLE_NAME}${EXECUTABLE_SUFFIX} ${PROJECT_NAME} -lc -lgcc_s -lstdc++)