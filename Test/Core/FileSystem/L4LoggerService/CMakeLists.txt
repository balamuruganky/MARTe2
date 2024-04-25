set(inclist ./
			../../../../Source/Core/BareMetal/L0Types
			../../../../Source/Core/BareMetal/L1Portability
			../../../../Source/Core/BareMetal/L2Objects
			../../../../Source/Core/BareMetal/L3Streams
			../../../../Source/Core/BareMetal/L4Configuration
			../../../../Source/Core/BareMetal/L4Logger
			../../../../Source/Core/FileSystem/L1Portability
			../../../../Source/Core/FileSystem/L3Streams
			../../../../Source/Core/FileSystem/L4LoggerService
			../../../../Source/Core/Scheduler/L1Portability
			../../../../Source/Core/Scheduler/L3Services
			../../../../Source/Core/Scheduler/L4LoggerService)

BUILD_STATIC_LIB("${inclist}" ${TEST_FILESYSTEM_SUFFIX})
