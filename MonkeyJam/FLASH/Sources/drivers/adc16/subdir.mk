################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/drivers/adc16/adc16.c" \

C_SRCS += \
../Sources/drivers/adc16/adc16.c \

OBJS += \
./Sources/drivers/adc16/adc16.o \

OBJS_QUOTED += \
"./Sources/drivers/adc16/adc16.o" \

C_DEPS += \
./Sources/drivers/adc16/adc16.d \

OBJS_OS_FORMAT += \
./Sources/drivers/adc16/adc16.o \

C_DEPS_QUOTED += \
"./Sources/drivers/adc16/adc16.d" \


# Each subdirectory must supply rules for building sources it contributes
Sources/drivers/adc16/adc16.o: ../Sources/drivers/adc16/adc16.c
	@echo 'Building file: $<'
	@echo 'Executing target #8 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/drivers/adc16/adc16.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/drivers/adc16/adc16.o"
	@echo 'Finished building: $<'
	@echo ' '


