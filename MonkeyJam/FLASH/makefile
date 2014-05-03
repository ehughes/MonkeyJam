################################################################################
# Automatically-generated file. Do not edit!
################################################################################

#Progress monitor hint: 16
first : all
-include ../makefile.init

# This file contains definitions of environment variables used in the makefiles and .args files if exist.
-include makefile.local

RM := "$(GNU_Make_Install_DirEnv)/rm" -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include Sources/subdir.mk
-include Sources/drivers/uart/subdir.mk
-include Sources/drivers/sai/subdir.mk
-include Sources/drivers/mcg/subdir.mk
-include Sources/drivers/subdir.mk
-include Sources/drivers/adc16/subdir.mk
-include Sources/cpu/subdir.mk
-include Sources/DSP/subdir.mk
-include Project_Settings/Startup_Code/subdir.mk
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
EXECUTABLES += \
JAM_TEST.elf \

EXECUTABLES_QUOTED += \
"JAM_TEST.elf" \

EXECUTABLES_OS_FORMAT += \
JAM_TEST.elf \

SECONDARY_FLASH += \
JAM_TEST.hex \

SECONDARY_FLASH_QUOTED += \
"JAM_TEST.hex" \

SECONDARY_FLASH_OS_FORMAT += \
JAM_TEST.hex \

SECONDARY_LIST += \
JAM_TEST.lst \

SECONDARY_LIST_QUOTED += \
"JAM_TEST.lst" \

SECONDARY_LIST_OS_FORMAT += \
JAM_TEST.lst \

SECONDARY_SIZE += \
JAM_TEST.siz \

SECONDARY_SIZE_QUOTED += \
"JAM_TEST.siz" \

SECONDARY_SIZE_OS_FORMAT += \
JAM_TEST.siz \


# All Target
all: warning-messages explicit-dependencies JAM_TEST.elf secondary-outputs

# Tool invocations
JAM_TEST.elf: $(OBJS) $(USER_OBJS) ../Project_Settings/Linker_Files/MK20DX128_flash.ld
	@echo 'Building target: $@'
	@echo 'Executing target #17 $@'
	@echo 'Invoking: ARM Ltd Windows GCC C Linker'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc"  $(USER_OBJS_QUOTED)  @"JAM_TEST.args" -o"JAM_TEST.elf"
	@echo 'Finished building target: $@'
	@echo ' '

JAM_TEST.hex: JAM_TEST.elf
	@echo 'Executing target #18 $@'
	@echo 'Invoking: ARM Ltd Windows GNU Create Flash Image'
	"$(ARMSourceryDirEnv)/arm-none-eabi-objcopy"  -O ihex -j .text -j .data JAM_TEST.elf "JAM_TEST.hex"
	@echo 'Finished building: $@'
	@echo ' '

JAM_TEST.lst: JAM_TEST.elf
	@echo 'Executing target #19 $@'
	@echo 'Invoking: ARM Ltd Windows GNU Create Listing'
	"$(ARMSourceryDirEnv)/arm-none-eabi-objdump"  -h -S JAM_TEST.elf >"JAM_TEST.lst"
	@echo 'Finished building: $@'
	@echo ' '

JAM_TEST.siz: JAM_TEST.elf
	@echo 'Executing target #20 $@'
	@echo 'Invoking: ARM Ltd Windows GNU Print Size'
	"$(ARMSourceryDirEnv)/arm-none-eabi-size"  --format=berkeley -x -t JAM_TEST.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(S_DEPS_QUOTED) $(SECONDARY_LIST_QUOTED) $(SECONDARY_FLASH_QUOTED) "./*/*/*.o" "./*/*/*/*.o" "./*/*.o"  $(S_UPPER_DEPS_QUOTED) $(ASM_DEPS_QUOTED) $(SECONDARY_SIZE_QUOTED) $(ASM_UPPER_DEPS_QUOTED) $(SX_DEPS_QUOTED) $(EXECUTABLES_QUOTED) "./*/*/*.d" "./*/*/*/*.d" "./*/*.d"  $(ProjDirPath)/FLASH/JAM_TEST.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents explicit-dependencies warning-messages
.SECONDARY:

-include ../makefile.targets

explicit-dependencies: ../Project_Settings/Linker_Files/MK20DX128_flash.ld JAM_TEST.elf JAM_TEST.elf JAM_TEST.elf 

warning-messages: 

