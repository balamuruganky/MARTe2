set(inclist ../../BareMetal/L0Types
			../../BareMetal/L1Portability
			../../BareMetal/L2Objects
			../../BareMetal/L3Streams
			../../BareMetal/L4Configuration
			../../BareMetal/L4Messages
			../../BareMetal/L5GAMs
			../../Scheduler/L1Portability
			../../Scheduler/L3Services
			../../Scheduler/L4Messages
			.)

BUILD_STATIC_LIB("${inclist}" ${SCHEDULER_SUFFIX})
