set(inclist ../../../Core/BareMetal/L0Types
			../../../Core/BareMetal/L1Portability
			../../../Core/BareMetal/L2Objects
			../../../Core/BareMetal/L3Streams
			../../../Core/BareMetal/L4Logger
			../../../Core/BareMetal/L4HttpService
			../../../../Source/Core/BareMetal/L0Types
			../../../../Source/Core/BareMetal/L1Portability
			../../../../Source/Core/BareMetal/L2Objects
			../../../../Source/Core/BareMetal/L3Streams
			../../../../Source/Core/BareMetal/L4Logger
			../../../../Source/Core/BareMetal/L4HttpService
			../../..)

BUILD_STATIC_LIB("${inclist}" ${GTEST_BAREMETAL_SUFFIX})