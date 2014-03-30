################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_f32.c" \
"../Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q15.c" \
"../Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q31.c" \
"../Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_f32.c" \
"../Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q15.c" \
"../Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q31.c" \
"../Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_f32.c" \
"../Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_q31.c" \

C_SRCS += \
../Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_f32.c \
../Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q15.c \
../Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q31.c \
../Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_f32.c \
../Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q15.c \
../Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q31.c \
../Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_f32.c \
../Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_q31.c \

OBJS += \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_f32.o \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q15.o \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q31.o \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_f32.o \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q15.o \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q31.o \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_f32.o \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_q31.o \

C_DEPS += \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_f32.d \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q15.d \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q31.d \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_f32.d \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q15.d \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q31.d \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_f32.d \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_q31.d \

OBJS_QUOTED += \
"./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_f32.o" \
"./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q15.o" \
"./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q31.o" \
"./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_f32.o" \
"./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q15.o" \
"./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q31.o" \
"./Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_f32.o" \
"./Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_q31.o" \

C_DEPS_QUOTED += \
"./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_f32.d" \
"./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q15.d" \
"./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q31.d" \
"./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_f32.d" \
"./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q15.d" \
"./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q31.d" \
"./Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_f32.d" \
"./Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_q31.d" \

OBJS_OS_FORMAT += \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_f32.o \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q15.o \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q31.o \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_f32.o \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q15.o \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q31.o \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_f32.o \
./Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_q31.o \


# Each subdirectory must supply rules for building sources it contributes
Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_f32.o: ../Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #200 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q15.o: ../Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #201 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q31.o: ../Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #202 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_f32.o: ../Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #203 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q15.o: ../Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #204 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q31.o: ../Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #205 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_f32.o: ../Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #206 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_q31.o: ../Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #207 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_q31.o"
	@echo 'Finished building: $<'
	@echo ' '


