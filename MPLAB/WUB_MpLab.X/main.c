/******************************************************************************/
/*WAKE UP BODY MAIN.C                                                         */ 
/*s4 projet udes                                                              */
/*                                                                            */
/******************************************************************************/


#include "WUB.h"
#include "lcd.h"
#include "RTC.h"
#include "config.h"
#include "led.h"

//#include "definitions.h"

#pragma config FSOSCEN = ON //ON for Sosc enable
#pragma config FNOSC = FRCPLL
#pragma config POSCMOD = XT
//#pragma config OSCIOFNC = ON

//#pragma config FNOSC = SOSC
//#pragma config SOSCEN = ON

#pragma config FPBDIV = DIV_1
#pragma config FPLLIDIV = DIV_2
#pragma config FPLLMUL = MUL_20
#pragma config FPLLODIV = DIV_1





void main(void)
{
    //asm volatile (“di”);
    macro_disable_interrupts;
    RTC_init();
    macro_enable_interrupts();
    //Alarm_enable(true);
    //asm volatile (“ei”);
    LED_Init();
    LCD_Init();
    //RTC_init();
    LCD_WriteStringAtPos("HELLO WORLD", 0, 0);
    //OSCCON |= 0x02;
    
    uint32_t test = DEVCFG1;
    uint32_t test2 = OSCCON;
   /**************   Sosc init    *******************************/
   //SOSCI sur PORTC->JB10 //RPC13
   //SOSCO sur PORTC->JB7 //RPC14
    
    //OSCCON |= 0x02;//Sosc enable
    //DEVCFG1 |= 0x20;//Sosc enable
    
    /************************************************************/
    
    Time t;
    char outbuf[80] = {0};

    
    
    while(1)
    {
        test = RTCCON;
        t = RTC_GetTime();
        sprintf(outbuf,"%2d:%2d:%2d",t.hour,t.min,t.sec);
        LCD_WriteStringAtPos(outbuf, 1, 0);
        uint32_t i =0;
        for(;i<0x00010000;i++);
    }
    
    
}