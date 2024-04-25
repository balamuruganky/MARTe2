set(inclist ./
			../../BareMetal/L5GAMs
			../../../../Source/Core/BareMetal/L0Types
			../../../../Source/Core/BareMetal/L1Portability
			../../../../Source/Core/BareMetal/L2Objects
			../../../../Source/Core/BareMetal/L3Streams
			../../../../Source/Core/BareMetal/L4Configuration
			../../../../Source/Core/BareMetal/L4Messages
			../../../../Source/Core/BareMetal/L5GAMs
			../../../../Source/Core/FileSystem/L1Portability
			../../../../Source/Core/Scheduler/L1Portability
			../../../../Source/Core/Scheduler/L3Services
			../../../../Source/Core/Scheduler/L4Messages
			../../../../Source/Core/Scheduler/L4StateMachine
			../../../../Source/Core/Scheduler/L5GAMs)

BUILD_STATIC_LIB("${inclist}" ${TEST_SCHEDULER_SUFFIX})
