get_filename_component(LIB_NAME ${CMAKE_CURRENT_SOURCE_DIR} NAME)

# Optionally glob, but only for CMake 3.12 or later:
file(GLOB ${LIB_NAME}_SOURCE_LIST CONFIGURE_DEPENDS "*.cpp")

file(GLOB GENERIC_SOURCE_LIST CONFIGURE_DEPENDS "./Environment/Generic/*.cpp")
include_directories(./Environment/Generic)

if(${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
    file(GLOB PLATFORM_SOURCE_LIST CONFIGURE_DEPENDS "./Environment/Linux/*.cpp")
	include_directories(../L1Portability
						../L3Streams
						../../BareMetal/L0Types
						../../BareMetal/L1Portability
						../../BareMetal/L2Objects
						../../BareMetal/L3Streams
						../../BareMetal/L4Configuration
						../../BareMetal/L4Logger
						../../BareMetal/L4Messages
						../../BareMetal/L5GAMs
						../../BareMetal/L6App
						./Environment/Linux
						../..
						.)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "ARTOS")
	file(GLOB PLATFORM_SOURCE_LIST CONFIGURE_DEPENDS "./Environment/FreeRTOS/*.cpp")
	include_directories(../L1Portability
						../../BareMetal/L0Types
						../../BareMetal/L1Portability
						../../BareMetal/L2Objects
						../../BareMetal/L3Streams
						../../BareMetal/L4Configuration
						../../BareMetal/L4Logger
						../../BareMetal/L4Messages
						../../BareMetal/L5GAMs
						../../BareMetal/L6App
						./Environment/FreeRTOS
						../..
						.)
else()
	file(GLOB PLATFORM_SOURCE_LIST CONFIGURE_DEPENDS "./Environment/BareUS/*.cpp")
	include_directories(../L1Portability
						../../BareMetal/L0Types
						../../BareMetal/L1Portability
						../../BareMetal/L2Objects
						../../BareMetal/L3Streams
						../../BareMetal/L4Configuration
						../../BareMetal/L4Logger
						../../BareMetal/L4Messages
						../../BareMetal/L5GAMs
						../../BareMetal/L6App
						../../FileSystem/L1Portability
						../../FileSystem/L3Streams
						../../FileSystem/L6App
						./Environment/BareUS
						../..
						.)
endif()

include_directories(../../Scheduler/L1Portability
					../../Scheduler/L3Services)

# Make an automatic library - will be static or dynamic based on user setting
add_library(${LIB_NAME}${FILESYSTEM_SUFFIX} ${${LIB_NAME}_SOURCE_LIST} ${GENERIC_SOURCE_LIST} ${PLATFORM_SOURCE_LIST})

# If library needed add here
target_link_libraries(${LIB_NAME}${FILESYSTEM_SUFFIX})