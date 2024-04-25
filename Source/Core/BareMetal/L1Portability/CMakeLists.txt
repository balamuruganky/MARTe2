get_filename_component(LIB_NAME ${CMAKE_CURRENT_SOURCE_DIR} NAME)

set(MARTe2_TIER  BareMetal)
set(MARTe2_LEVEL L0Types)
add_definitions(-DMARTe2_TIER=${MARTe2_TIER})
add_definitions(-DMARTe2_LEVEL=${MARTe2_LEVEL})

# Optionally glob, but only for CMake 3.12 or later:
file(GLOB ${LIB_NAME}_SOURCE_LIST CONFIGURE_DEPENDS "*.cpp")
file(GLOB GENERIC_SOURCE_LIST CONFIGURE_DEPENDS "Environment/Generic/*.cpp")
list(REMOVE_ITEM GENERIC_SOURCE_LIST ${CMAKE_CURRENT_SOURCE_DIR}/Environment/Generic/StringHelper_Portable_Generic.cpp)

if(${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
    file(GLOB PLATFORM_SOURCE_LIST CONFIGURE_DEPENDS "Environment/Linux/*.cpp")
    include_directories(./Environment/Linux)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")
	file(GLOB PLATFORM_SOURCE_LIST CONFIGURE_DEPENDS "Environment/Windows/*.cpp")
	include_directories(./Environment/Windows)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "ARTOS")
	file(GLOB PLATFORM_SOURCE_LIST CONFIGURE_DEPENDS "Environment/FreeRTOS/*.cpp")
	include_directories(./Environment/FreeRTOS)
else()
	file(GLOB PLATFORM_SOURCE_LIST CONFIGURE_DEPENDS "Environment/BareUS/*.cpp")
	include_directories(./Environment/BareUS)
endif()

include_directories(../L0Types
					./Environment/Generic
					../..
					.)

# Make an automatic library - will be static or dynamic based on user setting
add_library(${LIB_NAME}${BAREMETAL_SUFFIX} ${${LIB_NAME}_SOURCE_LIST} ${GENERIC_SOURCE_LIST} ${PLATFORM_SOURCE_LIST})

# If library needed add here
target_link_libraries(${LIB_NAME}${BAREMETAL_SUFFIX})