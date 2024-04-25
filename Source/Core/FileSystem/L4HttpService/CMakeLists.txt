set(inclist ../../BareMetal/L0Types
			../../BareMetal/L1Portability
			../../BareMetal/L2Objects
			../../BareMetal/L3Streams
			../../BareMetal/L4Messages
			../../BareMetal/L4Configuration
			../../BareMetal/L4HttpService
			../L1Portability
			../L3Streams
			../../Scheduler/L1Portability
			../../Scheduler/L3Services
			.)

BUILD_STATIC_LIB("${inclist}" ${FILESYSTEM_SUFFIX})