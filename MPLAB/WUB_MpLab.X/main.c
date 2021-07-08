/******************************************************************************/
/*WAKE UP BODY MAIN.C                                                         */ 
/*s4 projet udes                                                              */
/*                                                                            */
/******************************************************************************/


#include "WUB.h"
#include "lcd.h"
#include "RTC.h"


#pragma config FSOSCEN = OFF //ON for Sosc enable

/*
#pragma config FNOSC = FRCPLL
#pragma config POSCMOD = XT
#pragma config OSCIOFNC = ON
#pragma config FPBDIV = DIV_1
#pragma config FPLLIDIV = DIV_2
#pragma config FPLLMUL = MUL_20
#pragma config FPLLODIV = DIV_1
*/

void main(void)
{
    LCD_Init();
    //RTC_init();
    LCD_WriteStringAtPos("HELLO WORLD", 0, 0);

    
    uint32_t test = DEVCFG1;
    uint32_t test2 = OSCCON;
   /**************   Sosc init    *******************************/
   //SOSCI sur PORTC->JB10 //RPC13
   //SOSCO sur PORTC->JB7 //RPC14
    
    //OSCCON |= 0x02;//Sosc enable
    //DEVCFG1 |= 0x20;//Sosc enable
    
    /************************************************************/
    RTC_init();
    Time t;
    char outbuf[80] = {0};

    
    
    while(1)
    {
        test = RTCCON;
        t = RTC_GetTime();
        sprintf(outbuf,"%d:%d:%d",t.hour,t.min,t.sec);
        LCD_WriteStringAtPos(outbuf, 1, 0);
        int i =0;
        for(;i<1000000;i++);
    }
    
    
}