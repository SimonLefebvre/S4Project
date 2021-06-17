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
    
    while (1)
    {
        
        analogread();
        //thermistor();
    }
    
}