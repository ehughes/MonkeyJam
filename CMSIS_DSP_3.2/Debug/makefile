################################################################################
# Automatically-generated file. Do not edit!
################################################################################

#Progress monitor hint: 262
first : all
-include ../makefile.init

# This file contains definitions of environment variables used in the makefiles and .args files if exist.
-include makefile.local

RM := "$(GNU_Make_Install_DirEnv)/rm" -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include Sources/DSP_Lib/Source/TransformFunctions/subdir.mk
-include Sources/DSP_Lib/Source/SupportFunctions/subdir.mk
-include Sources/DSP_Lib/Source/StatisticsFunctions/subdir.mk
-include Sources/DSP_Lib/Source/MatrixFunctions/subdir.mk
-include Sources/DSP_Lib/Source/FilteringFunctions/subdir.mk
-include Sources/DSP_Lib/Source/FastMathFunctions/subdir.mk
-include Sources/DSP_Lib/Source/ControllerFunctions/subdir.mk
-include Sources/DSP_Lib/Source/ComplexMathFunctions/subdir.mk
-include Sources/DSP_Lib/Source/CommonTables/subdir.mk
-include Sources/DSP_Lib/Source/BasicMathFunctions/subdir.mk
-include Lib/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(SX_DEPS)),)
-include $(SX_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ARCHIVES += \
libCMSIS_DSP_3.2.a \

ARCHIVES_QUOTED += \
"libCMSIS_DSP_3.2.a" \

ARCHIVES_OS_FORMAT += \
libCMSIS_DSP_3.2.a \


# All Target
all: warning-messages explicit-dependencies libCMSIS_DSP_3.2.a

# Tool invocations
libCMSIS_DSP_3.2.a: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Executing target #263 $@'
	@echo 'Invoking: ARM Ltd Windows GCC Archiver'
	"$(ARMSourceryDirEnv)/arm-none-eabi-ar" -r "libCMSIS_DSP_3.2.a" @"CMSIS_DSP_3.args"  $(USER_OBJS_QUOTED) $(LIBS_QUOTED)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(S_DEPS_QUOTED) $(ARCHIVES_QUOTED) "./*/*.o" "./*/*/*/*/*.o"  "./*/*/*/*/*.d"  $(ASM_DEPS_QUOTED) $(ASM_UPPER_DEPS_QUOTED) $(SX_DEPS_QUOTED) "./*/*.d" "./*/*/*/*/*.d"  $(ProjDirPath)/Debug/libCMSIS_DSP_3.2.a
	-@echo ' '

.PHONY: all clean dependents explicit-dependencies warning-messages
.SECONDARY:

-include ../makefile.targets

explicit-dependencies: 

warning-messages: 

