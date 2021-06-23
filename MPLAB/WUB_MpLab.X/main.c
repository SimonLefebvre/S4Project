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
    
    
   
    LCD_Init();  
    I2C_Init(400000);
    
    while (1)
    {
        init_sensor();
        temperature();
    }
    
}