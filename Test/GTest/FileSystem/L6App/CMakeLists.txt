set(inclist ../../../Core/BareMetal/L0Types
			../../../Core/BareMetal/L1Portability
			../../../Core/BareMetal/L2Objects
			../../../Core/BareMetal/L3Streams
			../../../Core/BareMetal/L4Configuration
			../../../Core/BareMetal/L6App
			../../../Core/Scheduler/L1Portability
			../../../Core/FileSystem/L1Portability
			../../../Core/FileSystem/L3Streams
			../../../Core/FileSystem/L4LoggerService
			../../../Core/FileSystem/L6App
			../../../../Source/Core/BareMetal/L0Types
			../../../../Source/Core/BareMetal/L1Portability
			../../../../Source/Core/BareMetal/L2Objects
			../../../../Source/Core/BareMetal/L3Streams
			../../../../Source/Core/BareMetal/L4Configuration
			../../../../Source/Core/BareMetal/L6App
			../../../../Source/Core/Scheduler/L1Portability
			../../../../Source/Core/FileSystem/L1Portability
			../../../../Source/Core/FileSystem/L3Streams
			../../../../Source/Core/FileSystem/L4LoggerService
			../../../../Source/Core/FileSystem/L6App
			../../..)

BUILD_STATIC_LIB("${inclist}" ${GTEST_FILESYSTEM_SUFFIX})