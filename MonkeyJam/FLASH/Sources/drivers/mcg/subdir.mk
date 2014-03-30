################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/drivers/mcg/mcg.c" \

C_SRCS += \
../Sources/drivers/mcg/mcg.c \

OBJS += \
./Sources/drivers/mcg/mcg.o \

OBJS_QUOTED += \
"./Sources/drivers/mcg/mcg.o" \

C_DEPS += \
./Sources/drivers/mcg/mcg.d \

OBJS_OS_FORMAT += \
./Sources/drivers/mcg/mcg.o \

C_DEPS_QUOTED += \
"./Sources/drivers/mcg/mcg.d" \


# Each subdirectory must supply rules for building sources it contributes
Sources/drivers/mcg/mcg.o: ../Sources/drivers/mcg/mcg.c
	@echo 'Building file: $<'
	@echo 'Executing target #4 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/drivers/mcg/mcg.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/drivers/mcg/mcg.o"
	@echo 'Finished building: $<'
	@echo ' '


