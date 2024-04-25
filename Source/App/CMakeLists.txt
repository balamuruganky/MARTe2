set (EXECUTABLE_NAME MARTeApp)

include_directories(../Core/BareMetal/L0Types
                    ../Core/BareMetal/L1Portability
                    ../Core/BareMetal/L2Objects
                    ../Core/BareMetal/L3Streams
                    ../Core/BareMetal/L4Configuration
                    ../Core/BareMetal/L4Logger
                    ../Core/BareMetal/L4Messages
                    ../Core/BareMetal/L5GAMs
                    ../Core/BareMetal/L6App
                    ../Core/FileSystem/L1Portability
                    ../Core/FileSystem/L3Streams
                    ../Core/FileSystem/L4LoggerService
                    ../Core/FileSystem/L6App
                    ../Core/Scheduler/L1Portability
                    ../Core/Scheduler/L3Services
                    ../Core/Scheduler/L4LoggerService
                    ../Core/Scheduler/L4Messages
                    ../Core/Scheduler/L4StateMachine
                    ../Core/Scheduler/L5GAMs
                    .)

add_executable(
    ${EXECUTABLE_NAME}${EXECUTABLE_SUFFIX} ${EXECUTABLE_NAME}.cpp
    )

target_link_libraries(${EXECUTABLE_NAME}${EXECUTABLE_SUFFIX} ${PROJECT_NAME} -lm -lstdc++ -lgcc_s -lc -lrt -ldl -lpthread)