################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/drivers/sai/sai.c" \

C_SRCS += \
../Sources/drivers/sai/sai.c \

OBJS += \
./Sources/drivers/sai/sai.o \

OBJS_QUOTED += \
"./Sources/drivers/sai/sai.o" \

C_DEPS += \
./Sources/drivers/sai/sai.d \

OBJS_OS_FORMAT += \
./Sources/drivers/sai/sai.o \

C_DEPS_QUOTED += \
"./Sources/drivers/sai/sai.d" \


# Each subdirectory must supply rules for building sources it contributes
Sources/drivers/sai/sai.o: ../Sources/drivers/sai/sai.c
	@echo 'Building file: $<'
	@echo 'Executing target #3 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/drivers/sai/sai.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/drivers/sai/sai.o"
	@echo 'Finished building: $<'
	@echo ' '


