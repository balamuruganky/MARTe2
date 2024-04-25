set(inclist ../L0Types
			../L1Portability
			../L2Objects
			../L3Streams
			.)

BUILD_STATIC_LIB("${inclist}" ${BAREMETAL_SUFFIX})