################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/drivers/uart/uart.c" \

C_SRCS += \
../Sources/drivers/uart/uart.c \

OBJS += \
./Sources/drivers/uart/uart.o \

OBJS_QUOTED += \
"./Sources/drivers/uart/uart.o" \

C_DEPS += \
./Sources/drivers/uart/uart.d \

OBJS_OS_FORMAT += \
./Sources/drivers/uart/uart.o \

C_DEPS_QUOTED += \
"./Sources/drivers/uart/uart.d" \


# Each subdirectory must supply rules for building sources it contributes
Sources/drivers/uart/uart.o: ../Sources/drivers/uart/uart.c
	@echo 'Building file: $<'
	@echo 'Executing target #2 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/drivers/uart/uart.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/drivers/uart/uart.o"
	@echo 'Finished building: $<'
	@echo ' '


