################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_endpoint.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_g.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_hw.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_intr.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_sinit.c 

OBJS += \
./PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_endpoint.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_g.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_hw.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_intr.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_sinit.o 

C_DEPS += \
./PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_endpoint.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_g.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_hw.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_intr.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/%.o: ../PRO3_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


