set(inclist ../L0Types
			../L1Portability
			../L2Objects
			../L3Streams
			../L4Configuration
			../L4Messages
			.)

BUILD_STATIC_LIB("${inclist}" ${BAREMETAL_SUFFIX})