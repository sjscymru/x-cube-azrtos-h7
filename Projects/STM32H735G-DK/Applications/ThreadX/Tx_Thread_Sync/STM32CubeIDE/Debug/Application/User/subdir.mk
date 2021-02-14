################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
C:/Users/T3S\ Solutions\ Ltd/source/repos/sjscymru/stm32/x-cube-azrtos-h7/Projects/STM32H735G-DK/Applications/ThreadX/Tx_Thread_Sync/Src/tx_initialize_low_level.s 

C_SRCS += \
C:/Users/T3S\ Solutions\ Ltd/source/repos/sjscymru/stm32/x-cube-azrtos-h7/Projects/STM32H735G-DK/Applications/ThreadX/Tx_Thread_Sync/Src/app_azure_rtos.c \
C:/Users/T3S\ Solutions\ Ltd/source/repos/sjscymru/stm32/x-cube-azrtos-h7/Projects/STM32H735G-DK/Applications/ThreadX/Tx_Thread_Sync/Src/app_threadx.c \
C:/Users/T3S\ Solutions\ Ltd/source/repos/sjscymru/stm32/x-cube-azrtos-h7/Projects/STM32H735G-DK/Applications/ThreadX/Tx_Thread_Sync/Src/main.c \
C:/Users/T3S\ Solutions\ Ltd/source/repos/sjscymru/stm32/x-cube-azrtos-h7/Projects/STM32H735G-DK/Applications/ThreadX/Tx_Thread_Sync/Src/stm32h7xx_hal_msp.c \
C:/Users/T3S\ Solutions\ Ltd/source/repos/sjscymru/stm32/x-cube-azrtos-h7/Projects/STM32H735G-DK/Applications/ThreadX/Tx_Thread_Sync/Src/stm32h7xx_hal_timebase_tim.c \
C:/Users/T3S\ Solutions\ Ltd/source/repos/sjscymru/stm32/x-cube-azrtos-h7/Projects/STM32H735G-DK/Applications/ThreadX/Tx_Thread_Sync/Src/stm32h7xx_it.c \
../Application/User/syscalls.c \
../Application/User/sysmem.c 

OBJS += \
./Application/User/app_azure_rtos.o \
./Application/User/app_threadx.o \
./Application/User/main.o \
./Application/User/stm32h7xx_hal_msp.o \
./Application/User/stm32h7xx_hal_timebase_tim.o \
./Application/User/stm32h7xx_it.o \
./Application/User/syscalls.o \
./Application/User/sysmem.o \
./Application/User/tx_initialize_low_level.o 

S_DEPS += \
./Application/User/tx_initialize_low_level.d 

C_DEPS += \
./Application/User/app_azure_rtos.d \
./Application/User/app_threadx.d \
./Application/User/main.d \
./Application/User/stm32h7xx_hal_msp.d \
./Application/User/stm32h7xx_hal_timebase_tim.d \
./Application/User/stm32h7xx_it.d \
./Application/User/syscalls.d \
./Application/User/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/app_azure_rtos.o: C:/Users/T3S\ Solutions\ Ltd/source/repos/sjscymru/stm32/x-cube-azrtos-h7/Projects/STM32H735G-DK/Applications/ThreadX/Tx_Thread_Sync/Src/app_azure_rtos.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DSTM32H743xx -c -I../../Inc -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/threadx/common/inc -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc -I../../../../../../../Drivers/BSP/STM32H735G-DK -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/app_azure_rtos.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/app_threadx.o: C:/Users/T3S\ Solutions\ Ltd/source/repos/sjscymru/stm32/x-cube-azrtos-h7/Projects/STM32H735G-DK/Applications/ThreadX/Tx_Thread_Sync/Src/app_threadx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DSTM32H743xx -c -I../../Inc -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/threadx/common/inc -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc -I../../../../../../../Drivers/BSP/STM32H735G-DK -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/app_threadx.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/main.o: C:/Users/T3S\ Solutions\ Ltd/source/repos/sjscymru/stm32/x-cube-azrtos-h7/Projects/STM32H735G-DK/Applications/ThreadX/Tx_Thread_Sync/Src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DSTM32H743xx -c -I../../Inc -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/threadx/common/inc -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc -I../../../../../../../Drivers/BSP/STM32H735G-DK -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32h7xx_hal_msp.o: C:/Users/T3S\ Solutions\ Ltd/source/repos/sjscymru/stm32/x-cube-azrtos-h7/Projects/STM32H735G-DK/Applications/ThreadX/Tx_Thread_Sync/Src/stm32h7xx_hal_msp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DSTM32H743xx -c -I../../Inc -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/threadx/common/inc -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc -I../../../../../../../Drivers/BSP/STM32H735G-DK -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/stm32h7xx_hal_msp.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32h7xx_hal_timebase_tim.o: C:/Users/T3S\ Solutions\ Ltd/source/repos/sjscymru/stm32/x-cube-azrtos-h7/Projects/STM32H735G-DK/Applications/ThreadX/Tx_Thread_Sync/Src/stm32h7xx_hal_timebase_tim.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DSTM32H743xx -c -I../../Inc -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/threadx/common/inc -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc -I../../../../../../../Drivers/BSP/STM32H735G-DK -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/stm32h7xx_hal_timebase_tim.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32h7xx_it.o: C:/Users/T3S\ Solutions\ Ltd/source/repos/sjscymru/stm32/x-cube-azrtos-h7/Projects/STM32H735G-DK/Applications/ThreadX/Tx_Thread_Sync/Src/stm32h7xx_it.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DSTM32H743xx -c -I../../Inc -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/threadx/common/inc -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc -I../../../../../../../Drivers/BSP/STM32H735G-DK -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/stm32h7xx_it.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/syscalls.o: ../Application/User/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DSTM32H743xx -c -I../../Inc -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/threadx/common/inc -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc -I../../../../../../../Drivers/BSP/STM32H735G-DK -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/syscalls.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/sysmem.o: ../Application/User/sysmem.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DSTM32H743xx -c -I../../Inc -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Middlewares/ST/threadx/common/inc -I../../../../../../../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc -I../../../../../../../Drivers/BSP/STM32H735G-DK -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/sysmem.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/tx_initialize_low_level.o: C:/Users/T3S\ Solutions\ Ltd/source/repos/sjscymru/stm32/x-cube-azrtos-h7/Projects/STM32H735G-DK/Applications/ThreadX/Tx_Thread_Sync/Src/tx_initialize_low_level.s
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Application/User/tx_initialize_low_level.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

