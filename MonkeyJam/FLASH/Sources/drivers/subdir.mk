################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/drivers/IO.c" \
"../Sources/drivers/QSPI.c" \
"../Sources/drivers/frdm-k20-def.c" \

C_SRCS += \
../Sources/drivers/IO.c \
../Sources/drivers/QSPI.c \
../Sources/drivers/frdm-k20-def.c \

OBJS += \
./Sources/drivers/IO.o \
./Sources/drivers/QSPI.o \
./Sources/drivers/frdm-k20-def.o \

OBJS_QUOTED += \
"./Sources/drivers/IO.o" \
"./Sources/drivers/QSPI.o" \
"./Sources/drivers/frdm-k20-def.o" \

C_DEPS += \
./Sources/drivers/IO.d \
./Sources/drivers/QSPI.d \
./Sources/drivers/frdm-k20-def.d \

OBJS_OS_FORMAT += \
./Sources/drivers/IO.o \
./Sources/drivers/QSPI.o \
./Sources/drivers/frdm-k20-def.o \

C_DEPS_QUOTED += \
"./Sources/drivers/IO.d" \
"./Sources/drivers/QSPI.d" \
"./Sources/drivers/frdm-k20-def.d" \


# Each subdirectory must supply rules for building sources it contributes
Sources/drivers/IO.o: ../Sources/drivers/IO.c
	@echo 'Building file: $<'
	@echo 'Executing target #5 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/drivers/IO.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/drivers/IO.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/drivers/QSPI.o: ../Sources/drivers/QSPI.c
	@echo 'Building file: $<'
	@echo 'Executing target #6 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/drivers/QSPI.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/drivers/QSPI.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/drivers/frdm-k20-def.o: ../Sources/drivers/frdm-k20-def.c
	@echo 'Building file: $<'
	@echo 'Executing target #7 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/drivers/frdm-k20-def.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/drivers/frdm-k20-def.o"
	@echo 'Finished building: $<'
	@echo ' '


