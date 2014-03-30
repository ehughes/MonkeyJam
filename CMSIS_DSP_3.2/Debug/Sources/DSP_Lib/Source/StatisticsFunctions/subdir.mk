################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_f32.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q15.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q31.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q7.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_f32.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q15.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q31.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q7.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_f32.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q15.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q31.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q7.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_f32.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q15.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q31.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q7.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_f32.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q15.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q31.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_f32.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q15.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q31.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_f32.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q15.c" \
"../Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q31.c" \

C_SRCS += \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_f32.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q15.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q31.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q7.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_f32.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q15.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q31.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q7.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_f32.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q15.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q31.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q7.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_f32.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q15.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q31.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q7.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_f32.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q15.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q31.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_f32.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q15.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q31.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_f32.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q15.c \
../Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q31.c \

OBJS += \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_f32.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q15.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q31.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q7.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_f32.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q15.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q31.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q7.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_f32.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q15.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q31.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q7.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_f32.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q15.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q31.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q7.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_f32.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q15.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q31.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_f32.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q15.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q31.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_f32.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q15.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q31.o \

C_DEPS += \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_f32.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q15.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q31.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q7.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_f32.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q15.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q31.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q7.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_f32.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q15.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q31.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q7.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_f32.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q15.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q31.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q7.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_f32.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q15.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q31.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_f32.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q15.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q31.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_f32.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q15.d \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q31.d \

OBJS_QUOTED += \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_f32.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q15.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q31.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q7.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_f32.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q15.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q31.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q7.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_f32.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q15.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q31.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q7.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_f32.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q15.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q31.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q7.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_f32.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q15.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q31.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_f32.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q15.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q31.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_f32.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q15.o" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q31.o" \

C_DEPS_QUOTED += \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_f32.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q15.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q31.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q7.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_f32.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q15.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q31.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q7.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_f32.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q15.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q31.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q7.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_f32.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q15.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q31.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q7.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_f32.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q15.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q31.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_f32.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q15.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q31.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_f32.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q15.d" \
"./Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q31.d" \

OBJS_OS_FORMAT += \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_f32.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q15.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q31.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q7.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_f32.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q15.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q31.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q7.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_f32.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q15.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q31.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q7.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_f32.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q15.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q31.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q7.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_f32.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q15.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q31.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_f32.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q15.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q31.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_f32.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q15.o \
./Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q31.o \


# Each subdirectory must supply rules for building sources it contributes
Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_f32.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #51 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q15.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #52 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q31.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #53 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q7.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #54 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q7.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_max_q7.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_f32.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #55 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q15.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #56 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q31.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #57 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q7.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #58 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q7.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_mean_q7.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_f32.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #59 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q15.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #60 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q31.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #61 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q7.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #62 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q7.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_min_q7.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_f32.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #63 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q15.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #64 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q31.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #65 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q7.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #66 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q7.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_power_q7.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_f32.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #67 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q15.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #68 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q31.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #69 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_rms_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_f32.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #70 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q15.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #71 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q31.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #72 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_std_q31.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_f32.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #73 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_f32.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_f32.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q15.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #74 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q15.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q15.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q31.o: ../Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #75 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q31.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP_Lib/Source/StatisticsFunctions/arm_var_q31.o"
	@echo 'Finished building: $<'
	@echo ' '


