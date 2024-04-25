set(inclist ../L0Types
			../L1Portability
			../L2Objects
			.)

BUILD_STATIC_LIB("${inclist}" ${BAREMETAL_SUFFIX})