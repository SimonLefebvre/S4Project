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
    ADC_Init();
    PMODS_InitPin(0, 4, 1, 1, 0);
    PMODS_InitPin(0, 5, 1, 0, 0);
    
    while (1)
    {
        
        analogread();
        //thermistor();
    }
    
}