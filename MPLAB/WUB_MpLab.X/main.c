/******************************************************************************/
/*WAKE UP BODY MAIN.C                                                         */ 
/*s4 projet udes                                                              */
/*                                                                            */
/******************************************************************************/
#include "WUB.h"

#pragma config FSOSCEN = ON //ON for Sosc enable
#pragma config FNOSC = FRCPLL
#pragma config POSCMOD = XT
//#pragma config OSCIOFNC = ON
//#pragma config FNOSC = SOSC
//#pragma config SOSCEN = ON

//FREQ MAX => 80MHz
#pragma config FPBDIV = DIV_1       //Peripheral Bus Clock Divisor Default Value bits // DIV_1
#pragma config FPLLIDIV = DIV_2     //PLL Input Divider bits //The System Phase-Locked Loop (PLL)
#pragma config FPLLMUL = MUL_20     //PLL Multiplier bits = 4MHZ * 20 = 80MHz
#pragma config FPLLODIV = DIV_1     //Default PLL Output Divisor bits => 80Mhz

void main(void)
{
    macro_disable_interrupts;
    RTC_init();
    macro_enable_interrupts();
    //Alarm_enable(true);
    
    LED_Init();
    LCD_Init();
    LCD_WriteStringAtPos("HELLO WORLD", 0, 0);

    Time t;
    char outbuf[80] = {0};

    while(1)
    {
        t = RTC_GetTime();
        sprintf(outbuf,"%2d:%2d:%2d",t.hour,t.min,t.sec);
        LCD_WriteStringAtPos(outbuf, 1, 0);
        uint32_t i =0;
        for(;i<115200;i++);//~100ms delay with 80Mhz main clock
    }
}