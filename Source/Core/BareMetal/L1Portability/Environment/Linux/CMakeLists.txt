file(GLOB SOURCE_LIST CONFIGURE_DEPENDS "*.cpp")
file(GLOB GENERIC_SOURCE_LIST CONFIGURE_DEPENDS "../Generic/*.cpp")
list(REMOVE_ITEM GENERIC_SOURCE_LIST ${CMAKE_CURRENT_SOURCE_DIR}/Environment/Generic/StringHelper_Portable_Generic.cpp)
file(GLOB srclist ${SOURCE_LIST} ${GENERIC_SOURCE_LIST})

#FOREACH( sourcefile ${srclist} )
	# Cut off the directory path
#	get_filename_component( testname ${sourcefile} NAME )
#	message(STATUS "${testname}")
#ENDFOREACH()

set(inclist ../..
			../../../L0Types
			../BareUS
			../Generic
			../)
message(STATUS "${srclist} ${inclist} ${BAREMETAL_PORTABILILITY_SUFFIX}")

BUILD_PLATFORM_SPECIFIC_STATIC_LIB("${srclist}" "${inclist}" ${BAREMETAL_PORTABILILITY_SUFFIX})