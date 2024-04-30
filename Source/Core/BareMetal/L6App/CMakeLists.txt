get_filename_component(LIB_NAME ${CMAKE_CURRENT_SOURCE_DIR} NAME)

# Optionally glob, but only for CMake 3.12 or later:
file(GLOB ${LIB_NAME}_SOURCE_LIST CONFIGURE_DEPENDS "*.cpp")

if(${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
    file(GLOB PLATFORM_SOURCE_LIST CONFIGURE_DEPENDS "./Environment/Linux/*.cpp")
    include_directories(./Environment/Linux)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "ARTOS")
	file(GLOB PLATFORM_SOURCE_LIST CONFIGURE_DEPENDS "./Environment/FreeRTOS/*.cpp")
	include_directories(./Environment/FreeRTOS)
else()
	file(GLOB PLATFORM_SOURCE_LIST CONFIGURE_DEPENDS "./Environment/BareUS/*.cpp")
	include_directories(./Environment/BareUS)
endif()

include_directories(../L0Types
					../L1Portability
					../L2Objects
					../L3Streams
					../L4Configuration
					../L4Messages
					../L5GAMs
					./L4Messages
					.)

# Make an automatic library - will be static or dynamic based on user setting
add_library(${LIB_NAME}${BAREMETAL_SUFFIX} ${${LIB_NAME}_SOURCE_LIST} ${GENERIC_SOURCE_LIST} ${PLATFORM_SOURCE_LIST})

# If library needed add here
target_link_libraries(${LIB_NAME}${BAREMETAL_SUFFIX})