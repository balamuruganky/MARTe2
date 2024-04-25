#set(MARTe2_TIER  BareMetal)
#set(MARTe2_LEVEL L0Types)
#add_definitions(-DMARTe2_TIER=${MARTe2_TIER})
#add_definitions(-DMARTe2_LEVEL=${MARTe2_LEVEL})

set(inclist .)
BUILD_STATIC_LIB("${inclist}" ${BAREMETAL_SUFFIX})