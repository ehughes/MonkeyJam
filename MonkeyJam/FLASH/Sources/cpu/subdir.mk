################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/cpu/arm_cm4.c" \

C_SRCS += \
../Sources/cpu/arm_cm4.c \

OBJS += \
./Sources/cpu/arm_cm4.o \

OBJS_QUOTED += \
"./Sources/cpu/arm_cm4.o" \

C_DEPS += \
./Sources/cpu/arm_cm4.d \

OBJS_OS_FORMAT += \
./Sources/cpu/arm_cm4.o \

C_DEPS_QUOTED += \
"./Sources/cpu/arm_cm4.d" \


# Each subdirectory must supply rules for building sources it contributes
Sources/cpu/arm_cm4.o: ../Sources/cpu/arm_cm4.c
	@echo 'Building file: $<'
	@echo 'Executing target #9 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/cpu/arm_cm4.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/cpu/arm_cm4.o"
	@echo 'Finished building: $<'
	@echo ' '


