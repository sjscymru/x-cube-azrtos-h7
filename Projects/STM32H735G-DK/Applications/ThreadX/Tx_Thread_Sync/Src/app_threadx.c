/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    app_threadx.c
  * @author  MCD Application Team
  * @brief   ThreadX applicative file
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "app_threadx.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stdio.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#ifdef __GNUC__
/* With GCC, small printf (option LD Linker->Libraries->Small printf
   set to 'Yes') calls __io_putchar() */
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif /* __GNUC__ */
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN PV */
TX_THREAD ThreadOne;
TX_THREAD ThreadTwo;
TX_BYTE_POOL BytePool;
APP_SYNC_TYPE SyncObject;

extern UART_HandleTypeDef huart4;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */
VOID ThreadOne_Entry(ULONG thread_input);
VOID ThreadTwo_Entry(ULONG thread_input);
static VOID Led_Toggle(Led_TypeDef led, UINT iter);
static VOID App_Delay(ULONG Delay);
/* USER CODE END PFP */

/* Global user code ---------------------------------------------------------*/
/* USER CODE BEGIN Global user code */

/* USER CODE END Global user code */

/**
  * @brief  Application ThreadX Initialization.
  * @param memory_ptr: memory pointer
  * @retval int
  */
UINT App_ThreadX_Init(VOID *memory_ptr)
{
    UINT ret = TX_SUCCESS;
    /* USER CODE BEGIN  App_ThreadX_Init */
  CHAR *pointer;

  /* Create a byte memory pool from which to allocate the thread stacks.  */
  if (tx_byte_pool_create(&BytePool, "Byte Pool", memory_ptr, APP_BYTE_POOL_SIZE) != TX_SUCCESS)
  {
    ret = TX_POOL_ERROR;
  }

  /* Allocate the stack for ThreadOne.  */
  if (tx_byte_allocate(&BytePool, (VOID **) &pointer, APP_STACK_SIZE, TX_NO_WAIT) != TX_SUCCESS)
  {
    ret = TX_POOL_ERROR;
  }

  /* Create ThreadOne.  */
  if (tx_thread_create(&ThreadOne, "Thread One", ThreadOne_Entry, 0, pointer, APP_STACK_SIZE, THREAD_ONE_PRIO,
                       THREAD_ONE_PREEMPTION_THRESHOLD, DEFAULT_TIME_SLICE, TX_AUTO_START) != TX_SUCCESS)
  {
    ret = TX_THREAD_ERROR;
  }

  /* Allocate the stack for ThreadTwo.  */
  if (tx_byte_allocate(&BytePool, (VOID **) &pointer, APP_STACK_SIZE, TX_NO_WAIT) != TX_SUCCESS)
  {
    ret = TX_POOL_ERROR;
  }

  /* Create ThreadTwo.  */
  if (tx_thread_create(&ThreadTwo, "Thread Two", ThreadTwo_Entry, 0, pointer, APP_STACK_SIZE, THREAD_TWO_PRIO,
                       THREAD_TWO_PREEMPTION_THRESHOLD, DEFAULT_TIME_SLICE, TX_AUTO_START) != TX_SUCCESS)
  {
    ret = TX_THREAD_ERROR;
  }

  /* Create the Synchronization API used by ThreadOne and ThreadTwo.*/
  if (APP_SYNC_CREATE(&SyncObject) != TX_SUCCESS)
  {
    ret = TX_SYNC_ERROR;
  }
    /* USER CODE END  App_ThreadX_Init */

    return ret;
}

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN Private user code */

/* USER CODE END Private user code */

/* USER CODE BEGIN 1 */
/**
  * @brief  Function implementing the ThreadOne thread.
  * @param  thread_input: Not used
  * @retval None
  */
void ThreadOne_Entry(ULONG thread_input)
{
  UNUSED(thread_input);
  ULONG iteration = 0;

  /* Infinite loop */
  while(1)
  {
    /* try to acquire the sync object without waiting */
    if (APP_SYNC_GET(&SyncObject, TX_NO_WAIT) == TX_SUCCESS)
    {
      printf("** ThreadOne : SyncObject acquired ** \r\n");
      
      /*sync object acquired, toggle the LED_GREEN each 500ms for 5s */
      Led_Toggle(LED_GREEN, 10);
      

      /*release the sync object */
      APP_SYNC_PUT(&SyncObject);
      
      printf("** ThreadOne : SyncObject released ** \r\n");

      tx_thread_sleep(10);
    }
    else
    {

      if ((iteration % 2000000) == 0)
      {
        printf("** ThreadOne : waiting for SyncObject !! **\r\n");
      }
    }
    iteration++;
  }
}

/**
  * @brief  Function implementing the ThreadTwo thread.
  * @param  thread_input: Not used
  * @retval None
  */
void ThreadTwo_Entry(ULONG thread_input)
{
  UNUSED(thread_input);
  ULONG iteration = 0;

  /* Infinite loop */
  while(1)
  {
    /* try to acquire the sync object without waiting */
    if (APP_SYNC_GET(&SyncObject, TX_NO_WAIT) == TX_SUCCESS)
    {
      printf("** ThreadTwo : SyncObject acquired ** \r\n");
      
      /*Sync object acquired toggle the LED_RED each 500ms for 5s*/
      Led_Toggle(LED_RED, 10);
      
      /*release the sync object*/
      APP_SYNC_PUT(&SyncObject);
      
      printf("** ThreadTwo : SyncObject released ** \r\n");

      tx_thread_sleep(10);

    }
    else
    {
      if ((iteration % 2000000) == 0)
      {
        printf("** ThreadTwo : waiting for SyncObject !! **\r\n");
      }
    }
    iteration++;
  }
}

/**
  * @brief Critical section function that needs acquiring SyncObject.
  * @param  led: LED to toggle
  * @param  iter: Number of iterations
  * @retval None
  */
static VOID Led_Toggle(Led_TypeDef led, UINT iter)
{
  UINT i;

  BSP_LED_Off(led);

  for (i =0; i < iter; i++)
  {
    BSP_LED_Toggle(led);
    App_Delay(500);
  }

  BSP_LED_Off(led);
}

/**
  * @brief  Application Delay function.
  * @param  Delay : number of ticks to wait
  * @retval None
  */
void App_Delay(ULONG Delay)
{
  ULONG initial_time = tx_time_get();
  while ((tx_time_get() - initial_time) < Delay);
}

/**
  * @brief  Retargets the C library printf function to the USART.
  * @param  None
  * @retval None
  */
PUTCHAR_PROTOTYPE
{
  /* Place your implementation of fputc here */
  /* e.g. write a character to the USART1 and Loop until the end of transmission */
  HAL_UART_Transmit(&huart4, (uint8_t *)&ch, 1, 0xFFFF);

  return ch;
}

/* USER CODE END 1 */
