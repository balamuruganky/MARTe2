set(inclist ../L0Types
			../L1Portability 
			.)

BUILD_STATIC_LIB("${inclist}" ${BAREMETAL_SUFFIX})