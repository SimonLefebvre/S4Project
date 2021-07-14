/******************************************************************************/
/*WAKE UP BODY MAIN.C                                                         */ 
/*s4 projet udes                                                              */
/*                                                                            */
/******************************************************************************/


#include "WUB.h"
#include "thermistor.h"
#include "pmods.h"
#include "uart.h"




void main(void)
{
    
    //PMODS_InitPin(0, 4, 1, 0, 0); //vin pin16
     //gnd
    
    
    UART_Init(9600);
    LCD_Init();  
    I2C_Init(400000);
    int32_t adc_T;
    while (1)
    {   
        init_sensor();
        temperature();
    }
    
}