set(inclist ../../BareMetal/L0Types
			../../BareMetal/L1Portability
			../../BareMetal/L2Objects
			../../BareMetal/L3Streams
			../../BareMetal/L4Messages
			../../BareMetal/L4Logger
			../../BareMetal/L4Configuration
			../../BareMetal/L5GAMs
			../../Scheduler/L1Portability
			../../Scheduler/L3Services
			../../Scheduler/L4Messages
			../../Scheduler/L4LoggerService
			../../FileSystem/L1Portability
			../../FileSystem/L3Streams
			.)

BUILD_STATIC_LIB("${inclist}" ${FILESYSTEM_SUFFIX})