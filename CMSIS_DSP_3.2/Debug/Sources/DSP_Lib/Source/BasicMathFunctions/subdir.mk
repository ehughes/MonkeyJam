################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_f32.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q15.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q31.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q7.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_f32.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q15.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q31.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q7.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_f32.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q15.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q31.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q7.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_f32.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q15.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q31.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q7.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_f32.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q15.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q31.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q7.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_f32.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q15.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q31.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q7.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_f32.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q15.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q31.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q7.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q15.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q31.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q7.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_f32.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q15.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q31.c" \
"../Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q7.c" \

C_SRCS += \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_f32.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q15.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q31.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q7.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_f32.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q15.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q31.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q7.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_f32.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q15.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q31.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q7.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_f32.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q15.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q31.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q7.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_f32.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q15.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q31.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q7.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_f32.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q15.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q31.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q7.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_f32.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q15.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q31.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q7.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q15.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q31.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q7.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_f32.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q15.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q31.c \
../Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q7.c \

OBJS += \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_f32.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q15.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q31.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q7.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_f32.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q15.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q31.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q7.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_f32.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q15.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q31.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q7.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_f32.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q15.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q31.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q7.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_f32.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q15.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q31.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q7.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_f32.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q15.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q31.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q7.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_f32.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q15.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q31.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q7.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q15.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q31.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q7.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_f32.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q15.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q31.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q7.o \

C_DEPS += \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_f32.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q15.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q31.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q7.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_f32.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q15.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q31.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q7.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_f32.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q15.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q31.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q7.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_f32.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q15.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q31.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q7.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_f32.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q15.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q31.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q7.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_f32.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q15.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q31.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q7.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_f32.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q15.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q31.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q7.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q15.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q31.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q7.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_f32.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q15.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q31.d \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q7.d \

OBJS_QUOTED += \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_f32.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q15.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q31.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q7.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_f32.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q15.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q31.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q7.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_f32.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q15.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q31.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q7.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_f32.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q15.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q31.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q7.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_f32.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q15.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q31.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q7.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_f32.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q15.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q31.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q7.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_f32.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q15.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q31.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q7.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q15.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q31.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q7.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_f32.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q15.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q31.o" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q7.o" \

C_DEPS_QUOTED += \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_f32.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q15.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q31.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q7.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_f32.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q15.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q31.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q7.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_f32.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q15.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q31.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q7.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_f32.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q15.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q31.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q7.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_f32.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q15.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q31.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q7.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_f32.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q15.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q31.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q7.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_f32.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q15.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q31.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q7.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q15.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q31.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q7.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_f32.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q15.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q31.d" \
"./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q7.d" \

OBJS_OS_FORMAT += \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_f32.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q15.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q31.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q7.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_f32.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q15.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q31.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q7.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_f32.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q15.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q31.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q7.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_f32.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q15.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q31.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q7.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_f32.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q15.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q31.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q7.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_f32.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q15.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q31.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q7.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_f32.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q15.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q31.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q7.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q15.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q31.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q7.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_f32.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q15.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q31.o \
./Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q7.o \


# Each subdirectory must supply rules for building sources it contributes
Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_f32.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #227 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q15.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #228 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q31.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #229 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q7.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #230 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q7.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_abs_q7.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_f32.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #231 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q15.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #232 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q31.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #233 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q7.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #234 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q7.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_add_q7.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_f32.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #235 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q15.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #236 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q31.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #237 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q7.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #238 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q7.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_dot_prod_q7.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_f32.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #239 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q15.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #240 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q31.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #241 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q7.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #242 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q7.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_mult_q7.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_f32.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #243 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q15.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #244 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q31.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #245 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q7.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #246 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q7.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_negate_q7.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_f32.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #247 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q15.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #248 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q31.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #249 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q7.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #250 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q7.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_offset_q7.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_f32.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #251 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q15.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #252 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q31.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #253 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q7.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #254 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q7.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_scale_q7.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q15.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #255 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q31.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #256 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q7.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #257 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q7.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_shift_q7.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_f32.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #258 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q15.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #259 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q31.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #260 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q7.o: ../Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #261 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q7.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/BasicMathFunctions/arm_sub_q7.o"
	@echo 'Finished building: $<'
	@echo ' '


