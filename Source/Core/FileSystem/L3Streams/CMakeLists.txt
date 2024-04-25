set(inclist ../../BareMetal/L0Types
			../../BareMetal/L1Portability
			../../BareMetal/L2Objects
			../../BareMetal/L3Streams
			../L1Portability
			.)

BUILD_STATIC_LIB("${inclist}" ${FILESYSTEM_SUFFIX})