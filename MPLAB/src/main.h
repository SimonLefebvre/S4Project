
#ifndef _MAIN_H
#define _MAIN_H

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "system_config.h"
#include "system_definitions.h"
#include "system_config.h"
#include "system/common/sys_module.h"   // SYS function prototypes
#include "driver/spi/src/dynamic/drv_spi_internal.h"
#include "UDP_app.h"
#include "led.h"
#include "ssd.h"
#include "accel.h"
#include "lcd.h"
#include "app_commands.h"
#include "RTC.h"
#include "acl_gyro.h"
#include "thermistor.h"
#include "swt.h"
#include "btn.h"
#include "rgbled.h"
#include <math.h>
#include "Afficheur.h"
#include "User01.h"



typedef enum
{
	/* Application's state machine's initial state. */
	MAIN_STATE_INIT=0,
	MAIN_STATE_SERVICE_TASKS,

	/* TODO: Define states used by the application state machine. */

} MAIN_STATES;


typedef struct
{
    /* The application's current state */
    MAIN_STATES state;

    /* TODO: Define any additional data used by the application. */
/*
   USART Read/Write model variables used by the application:
   
    handleUSART0 : the USART driver handle returned by DRV_USART_Open
*/
    DRV_HANDLE handleUSART0;

} MAIN_DATA;



void MAIN_Initialize ( void );
void MAIN_Tasks( void );


#endif /* _MAIN_H */
