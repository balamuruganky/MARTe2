set(inclist ./
			../../../../Source/Core/BareMetal/L0Types
			../../../../Source/Core/BareMetal/L1Portability
			../../../../Source/Core/BareMetal/L2Objects
			../../../../Source/Core/BareMetal/L3Streams
			../../../../Source/Core/BareMetal/L4Logger
			../../../../Source/Core/BareMetal/L4Messages
			../../../../Source/Core/BareMetal/L4Configuration)

BUILD_STATIC_LIB("${inclist}" ${TEST_BAREMETAL_SUFFIX})
