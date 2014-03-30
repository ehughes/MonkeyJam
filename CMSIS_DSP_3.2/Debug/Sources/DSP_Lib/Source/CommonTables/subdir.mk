################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/DSP_Lib/Source/CommonTables/arm_common_tables.c" \

C_SRCS += \
../Sources/DSP_Lib/Source/CommonTables/arm_common_tables.c \

OBJS += \
./Sources/DSP_Lib/Source/CommonTables/arm_common_tables.o \

C_DEPS += \
./Sources/DSP_Lib/Source/CommonTables/arm_common_tables.d \

OBJS_QUOTED += \
"./Sources/DSP_Lib/Source/CommonTables/arm_common_tables.o" \

C_DEPS_QUOTED += \
"./Sources/DSP_Lib/Source/CommonTables/arm_common_tables.d" \

OBJS_OS_FORMAT += \
./Sources/DSP_Lib/Source/CommonTables/arm_common_tables.o \


# Each subdirectory must supply rules for building sources it contributes
Sources/DSP_Lib/Source/CommonTables/arm_common_tables.o: ../Sources/DSP_Lib/Source/CommonTables/arm_common_tables.c
	@echo 'Building file: $<'
	@echo 'Executing target #226 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/CommonTables/arm_common_tables.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/CommonTables/arm_common_tables.o"
	@echo 'Finished building: $<'
	@echo ' '


