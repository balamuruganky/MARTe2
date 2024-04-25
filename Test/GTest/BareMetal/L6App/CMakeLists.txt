set(inclist ../../../Core/BareMetal/L0Types
			../../../Core/BareMetal/L1Portability
			../../../Core/BareMetal/L2Objects
			../../../Core/BareMetal/L3Streams
			../../../Core/BareMetal/L4Configuration
			../../../Core/BareMetal/L4Messages
			../../../Core/BareMetal/L5GAMs
			../../../Core/BareMetal/L6App
			../../../Core/Scheduler/L1Portability
			../../../Core/FileSystem/L1Portability
			../../../../Source/Core/BareMetal/L0Types
			../../../../Source/Core/BareMetal/L1Portability
			../../../../Source/Core/BareMetal/L2Objects
			../../../../Source/Core/BareMetal/L3Streams
			../../../../Source/Core/BareMetal/L4Configuration
			../../../../Source/Core/BareMetal/L4Messages
			../../../../Source/Core/BareMetal/L5GAMs
			../../../../Source/Core/Scheduler/L1Portability
			../../../../Source/Core/FileSystem/L1Portability
			../../..)

BUILD_STATIC_LIB("${inclist}" ${GTEST_BAREMETAL_SUFFIX})