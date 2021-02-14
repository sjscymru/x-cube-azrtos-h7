################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/T3S\ Solutions\ Ltd/source/repos/sjscymru/stm32/x-cube-azrtos-h7/Projects/STM32H735G-DK/Applications/ThreadX/Tx_Thread_Sync/Src/system_stm32h7xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32h7xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32h7xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32h7xx.o: C:/Users/T3S\ Solutions\ Ltd/source/repos/sjscymru/stm32/x-cube-azrtos-h7/Projects/STM32H735G-DK/Applications/ThreadX/Tx_Thread_Sync/Src/system_stm32h7xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DSTM32H743xx -c -I../../Inc -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/threadx/common/inc -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc -I../../../../../../../Drivers/BSP/STM32H735G-DK -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/system_stm32h7xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

