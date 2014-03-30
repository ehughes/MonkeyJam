################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Lib/mylibrary.c" \

C_SRCS += \
../Lib/mylibrary.c \

OBJS += \
./Lib/mylibrary.o \

C_DEPS += \
./Lib/mylibrary.d \

OBJS_QUOTED += \
"./Lib/mylibrary.o" \

C_DEPS_QUOTED += \
"./Lib/mylibrary.d" \

OBJS_OS_FORMAT += \
./Lib/mylibrary.o \


# Each subdirectory must supply rules for building sources it contributes
Lib/mylibrary.o: ../Lib/mylibrary.c
	@echo 'Building file: $<'
	@echo 'Executing target #262 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Lib/mylibrary.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Lib/mylibrary.o"
	@echo 'Finished building: $<'
	@echo ' '


