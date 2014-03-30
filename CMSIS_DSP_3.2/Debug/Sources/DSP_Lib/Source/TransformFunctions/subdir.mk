################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS_QUOTED += \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal2.S" \

S_UPPER_SRCS += \
../Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal2.S \

C_SRCS_QUOTED += \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_f32.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_f32.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_f32.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q15.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q31.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q15.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q31.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_f32.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_f32.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q15.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q31.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q15.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q31.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix8_f32.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_f32.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_f32.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q15.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q31.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q15.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q31.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_f32.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_f32.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_init_f32.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_f32.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q15.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q31.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q15.c" \
"../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q31.c" \

C_SRCS += \
../Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_f32.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_f32.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_f32.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q15.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q31.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q15.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q31.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_f32.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_f32.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q15.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q31.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q15.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q31.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix8_f32.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_f32.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_f32.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q15.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q31.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q15.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q31.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_f32.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_f32.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_init_f32.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_f32.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q15.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q31.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q15.c \
../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q31.c \

OBJS += \
./Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal2.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q15.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q31.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q15.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q31.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q15.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q31.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q15.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q31.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix8_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q15.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q31.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q15.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q31.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_init_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q15.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q31.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q15.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q31.o \

C_DEPS += \
./Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_f32.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_f32.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_f32.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q15.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q31.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q15.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q31.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_f32.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_f32.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q15.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q31.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q15.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q31.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix8_f32.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_f32.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_f32.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q15.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q31.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q15.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q31.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_f32.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_f32.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_init_f32.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_f32.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q15.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q31.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q15.d \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q31.d \

S_UPPER_DEPS += \
./Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal2.d \

OBJS_QUOTED += \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal2.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_f32.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_f32.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_f32.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q15.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q31.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q15.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q31.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_f32.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_f32.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q15.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q31.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q15.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q31.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix8_f32.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_f32.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_f32.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q15.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q31.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q15.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q31.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_f32.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_f32.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_init_f32.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_f32.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q15.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q31.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q15.o" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q31.o" \

S_UPPER_DEPS_QUOTED += \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal2.d" \

C_DEPS_QUOTED += \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_f32.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_f32.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_f32.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q15.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q31.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q15.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q31.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_f32.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_f32.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q15.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q31.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q15.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q31.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix8_f32.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_f32.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_f32.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q15.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q31.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q15.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q31.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_f32.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_f32.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_init_f32.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_f32.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q15.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q31.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q15.d" \
"./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q31.d" \

OBJS_OS_FORMAT += \
./Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal2.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q15.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q31.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q15.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q31.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q15.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q31.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q15.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q31.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix8_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q15.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q31.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q15.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q31.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_init_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_f32.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q15.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q31.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q15.o \
./Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q31.o \


# Each subdirectory must supply rules for building sources it contributes
Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal.c
	@echo 'Building file: $<'
	@echo 'Executing target #1 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal2.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal2.S
	@echo 'Building file: $<'
	@echo 'Executing target #2 $<'
	@echo 'Invoking: ARM Ltd Windows GCC Assembler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal2.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_bitreversal2.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_f32.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #3 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_f32.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #4 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_f32.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #5 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q15.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #6 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q31.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #7 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_init_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q15.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #8 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q31.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #9 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix2_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_f32.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #10 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_f32.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #11 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q15.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #12 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q31.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #13 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_init_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q15.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #14 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q31.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #15 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix4_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix8_f32.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix8_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #16 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix8_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_cfft_radix8_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_f32.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #17 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_f32.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #18 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q15.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #19 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q31.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #20 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_init_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q15.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #21 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q31.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #22 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_dct4_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_f32.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #23 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_f32.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #24 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_init_f32.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_init_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #25 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_init_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_fast_init_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_f32.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #26 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q15.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #27 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q31.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #28 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_init_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q15.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #29 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q31.o: ../Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #30 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/TransformFunctions/arm_rfft_q31.o"
	@echo 'Finished building: $<'
	@echo ' '


