################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_f32.c" \
"../Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q15.c" \
"../Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q31.c" \
"../Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_f32.c" \
"../Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q15.c" \
"../Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q31.c" \
"../Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q15.c" \
"../Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q31.c" \

C_SRCS += \
../Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_f32.c \
../Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q15.c \
../Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q31.c \
../Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_f32.c \
../Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q15.c \
../Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q31.c \
../Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q15.c \
../Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q31.c \

OBJS += \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_f32.o \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q15.o \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q31.o \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_f32.o \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q15.o \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q31.o \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q15.o \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q31.o \

C_DEPS += \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_f32.d \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q15.d \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q31.d \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_f32.d \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q15.d \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q31.d \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q15.d \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q31.d \

OBJS_QUOTED += \
"./Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_f32.o" \
"./Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q15.o" \
"./Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q31.o" \
"./Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_f32.o" \
"./Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q15.o" \
"./Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q31.o" \
"./Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q15.o" \
"./Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q31.o" \

C_DEPS_QUOTED += \
"./Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_f32.d" \
"./Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q15.d" \
"./Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q31.d" \
"./Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_f32.d" \
"./Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q15.d" \
"./Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q31.d" \
"./Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q15.d" \
"./Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q31.d" \

OBJS_OS_FORMAT += \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_f32.o \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q15.o \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q31.o \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_f32.o \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q15.o \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q31.o \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q15.o \
./Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q31.o \


# Each subdirectory must supply rules for building sources it contributes
Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_f32.o: ../Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #192 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q15.o: ../Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #193 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q31.o: ../Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #194 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/FastMathFunctions/arm_cos_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_f32.o: ../Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #195 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q15.o: ../Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #196 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q31.o: ../Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #197 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/FastMathFunctions/arm_sin_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q15.o: ../Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #198 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q31.o: ../Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #199 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/FastMathFunctions/arm_sqrt_q31.o"
	@echo 'Finished building: $<'
	@echo ' '


