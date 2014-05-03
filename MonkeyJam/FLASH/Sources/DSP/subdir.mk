################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/DSP/AudioIF.c" \
"../Sources/DSP/AudioProcess.c" \
"../Sources/DSP/IIR.c" \
"../Sources/DSP/MathTables.c" \

C_SRCS += \
../Sources/DSP/AudioIF.c \
../Sources/DSP/AudioProcess.c \
../Sources/DSP/IIR.c \
../Sources/DSP/MathTables.c \

OBJS += \
./Sources/DSP/AudioIF.o \
./Sources/DSP/AudioProcess.o \
./Sources/DSP/IIR.o \
./Sources/DSP/MathTables.o \

OBJS_QUOTED += \
"./Sources/DSP/AudioIF.o" \
"./Sources/DSP/AudioProcess.o" \
"./Sources/DSP/IIR.o" \
"./Sources/DSP/MathTables.o" \

C_DEPS += \
./Sources/DSP/AudioIF.d \
./Sources/DSP/AudioProcess.d \
./Sources/DSP/IIR.d \
./Sources/DSP/MathTables.d \

OBJS_OS_FORMAT += \
./Sources/DSP/AudioIF.o \
./Sources/DSP/AudioProcess.o \
./Sources/DSP/IIR.o \
./Sources/DSP/MathTables.o \

C_DEPS_QUOTED += \
"./Sources/DSP/AudioIF.d" \
"./Sources/DSP/AudioProcess.d" \
"./Sources/DSP/IIR.d" \
"./Sources/DSP/MathTables.d" \


# Each subdirectory must supply rules for building sources it contributes
Sources/DSP/AudioIF.o: ../Sources/DSP/AudioIF.c
	@echo 'Building file: $<'
	@echo 'Executing target #10 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP/AudioIF.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP/AudioIF.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP/AudioProcess.o: ../Sources/DSP/AudioProcess.c
	@echo 'Building file: $<'
	@echo 'Executing target #11 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP/AudioProcess.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP/AudioProcess.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP/IIR.o: ../Sources/DSP/IIR.c
	@echo 'Building file: $<'
	@echo 'Executing target #12 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP/IIR.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP/IIR.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/DSP/MathTables.o: ../Sources/DSP/MathTables.c
	@echo 'Building file: $<'
	@echo 'Executing target #13 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/DSP/MathTables.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/DSP/MathTables.o"
	@echo 'Finished building: $<'
	@echo ' '


