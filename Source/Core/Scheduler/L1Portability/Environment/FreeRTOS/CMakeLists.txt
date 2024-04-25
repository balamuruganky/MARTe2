get_filename_component(LIB_NAME ${CMAKE_CURRENT_SOURCE_DIR} NAME)
set(SUFFIX _s_p)

# Optionally glob, but only for CMake 3.12 or later:
file(GLOB ${LIB_NAME}_SOURCE_LIST CONFIGURE_DEPENDS "*.cpp")
file(GLOB GENERIC_SOURCE_LIST CONFIGURE_DEPENDS "../Generic/*.cpp")

include_directories(../../../../FileSystem/L1Portability
					../../../../FileSystem/L3Streams
					../../../../FileSystem/L6App
					../../../../BareMetal/L0Types
					../../../../BareMetal/L1Portability
					../../../../BareMetal/L2Objects
					../../../../BareMetal/L3Streams
					../../../../BareMetal/L4Configuration
					../../../../BareMetal/L4Logger
					../../../../BareMetal/L4Messages
					../../../../BareMetal/L5GAMs
					../../../../BareMetal/L6App
					../../../../Scheduler/L1Portability)

# Make an automatic library - will be static or dynamic based on user setting
add_library(${LIB_NAME}${SUFFIX} ${${LIB_NAME}_SOURCE_LIST})

# If library needed add here
target_link_libraries(${LIB_NAME}${SUFFIX})

# All users of this library will need at least C++11
target_compile_features(${LIB_NAME}${SUFFIX} PUBLIC cxx_std_11)
