/******************************************************************************/
/*WAKE UP BODY RTC.C                                                          */ 
/*s4 projet udes                                                              */
/*                                                                            */
/******************************************************************************/

#include "RTC.h"

static bool alarm_enable = false;
static bool alarm_initialised = false;
static bool rtc_initialised = false;
bool let_the_game_begin = false;
static bool Alarm_init(void);

void __ISR(_RTCC_VECTOR, ipl3) _RTCCInterrupt(void)
{
    IFS0bits.RTCCIF = 0;//Clear flag // be sure to clear RTCC interrupt flag
    LED_SetValue(7,true);
    let_the_game_begin = true;
}

bool RTC_init(void)
{
    bool res = false;
    unsigned long time=0x0000;// set time to 00:00:00
    unsigned long date=0x21071504;// set date to Jeudi 15 Juillet 2021
    SYSKEY = 0x0;
    SYSKEY = 0xAA996655;
    SYSKEY = 0x556699AA;
    OSCCONSET = 0x2; 
    RTCCONSET = 0x8; // set RTCWREN in RTCCONSET
    SYSKEY = 0x0;
    
    RTCCONCLR=0x8000; // turn off the RTCC
    while(RTCCON&0x40); // wait for clock to be turned off
    
    IEC0bits.RTCCIE = 0;//disable interrupt
    IFS0bits.RTCCIF = 0;//Clear flag
    IPC6bits.RTCCIS = 0x01;
    IPC6bits.RTCCIP = 0x03;//Set priority to 3
    IEC0bits.RTCCIE = 1;//enable interrupt

    RTCTIME=time; // safe to update the time
    RTCDATE=date; // update the date
    
    RTCALRMbits.ALRMEN = 0; // alarm is disable 
    res = Alarm_init();
    if(!(RTCCON&0x8000))
    {
        RTCCONSET=0x8000; // turn on the RTCC
        while(!(RTCCON&0x40)); // wait for clock to be turned on
    }
    rtc_initialised = true;
    return res;
}

static bool Alarm_init(void)//private function
{
    bool res = false;
    unsigned long alTime=0x00001300;// set Alarm time to 16:15:33
    unsigned long alDate=0x21071504;// set alarm date to Jeudi 15 Juillet 2021
    
    RTCCONCLR=0x8000; // turn off the RTCC
    while(RTCALRM&0x1000); // wait ALRMSYNC to be off
    RTCALRMCLR=0xCFFF; // clear ALRMEN, CHIME, AMASK and ARPT; #15-14 + 11-0
    ALRMTIME=alTime;
    ALRMDATE=alDate; // update the alarm time and date

    //RTCALRMbits.CHIME = 1;  //rollover the ARPT values to get infinite alarms
    //RTCALRMbits.PIV = 0;
    //RTCALRMbits.AMASK = 0x06; //Alarm every Day
    //RTCALRMbits.ARPT = 0xFF;  //Set 256 alarm
    RTCALRMSET=0x8000|0x00000601;
    if(rtc_initialised)
    {
        RTCCONSET=0x8000; // turn on the RTCC
        while(!(RTCCON&0x40)); // wait for clock to be turned on
    }
    
    res = true;
    alarm_initialised = res;
    return res;
}

bool Alarm_enable(bool enable)
{
    bool res = false;
    
    
    if(alarm_initialised)
    {
        if(RTCCON&0x8000)//Disable RTC to enable or disable the alarm
        {
            RTCCONCLR=0x8000; // turn off the RTCC
        }
        while(RTCALRM&0x1000); // wait ALRMSYNC to be off
        RTCALRMbits.ALRMEN = enable; //Can enable and disable the alarm
        res = true;
        if(rtc_initialised)RTCCONSET=0x8000; // turn on the RTCC
        while(!(RTCCON&0x40)); // wait for clock to be turned on
    }
    return res;
}

bool RTC_SetTime(Time time)
{
    bool res = false;
    if(time.sec > 59)res = false;
    else if(time.min > 59)res = false;
    else if(time.hour > 23)res = false;
    else if(rtc_initialised)
    {
        RTCCONCLR=0x8000; // turn off the RTCC
        while(RTCCON&0x40); // wait for clock to be turned off
        uint32_t NewTime = 0;
        NewTime |= (time.sec % 10)<<8;
        NewTime |= (time.sec / 10)<<12;
        NewTime |= (time.min % 10)<<16;
        NewTime |= (time.min / 10)<<20;
        NewTime |= (time.hour % 10)<<24;
        NewTime |= (time.hour / 10)<<28;
        /*
        RTCTIMEbits.SEC01   = time.sec % 10;  
        RTCTIMEbits.SEC10   = time.sec / 10;
        RTCTIMEbits.MIN01   = time.min  % 10;
        RTCTIMEbits.MIN10   = time.min / 10;
        RTCTIMEbits.HR01    = time.hour %10;
        RTCTIMEbits.HR10    = time.hour / 10;*/
        RTCTIME = NewTime;
        RTCCONSET=0x8000; // turn on the RTCC
        while(!(RTCCON&0x40)); // wait for clock to be turned on
        res = true;
    }

    return res;
}

bool RTC_SetDate(Date date)
{
    bool res = false;
    if(date.wday > 6)res = false;
    else if(date.day > 31)res = false;
    else if(date.month > 11)res = false;
    else if(date.year > 99)res = false;
    else if(rtc_initialised)
    {
        RTCDATEbits.DAY01   = date.day   % 10;
        RTCDATEbits.DAY10   = date.day   / 10;
        RTCDATEbits.MONTH01 = date.month % 10;
        RTCDATEbits.MONTH10 = date.month / 10;
        RTCDATEbits.YEAR01  = date.year  % 10;
        RTCDATEbits.YEAR10  = date.year  % 100 / 10;
        RTCDATEbits.w       = date.wday;
        res = true;
    }
    return res;
}

Time RTC_GetTime(void)
{
    Time time;
    time.hour = RTCTIMEbits.HR10*10 + RTCTIMEbits.HR01;
    time.min = RTCTIMEbits.MIN10*10 + RTCTIMEbits.MIN01;
    time.sec = RTCTIMEbits.SEC10*10 + RTCTIMEbits.SEC01;
            
    return time;    
}

Date RTC_GetDate(void)
{
    Date date;
    date.wday = RTCDATEbits.w;
    date.day = RTCDATEbits.DAY10*10 + RTCDATEbits.DAY01;
    date.month = RTCDATEbits.MONTH10*10 + RTCDATEbits.MONTH01;
    date.year = RTCDATEbits.YEAR10*10 + RTCDATEbits.YEAR01;
    return date;
}

bool Alarm_SetTime(Time time)
{
    bool res = false;
    if(time.sec > 59)res = false;
    else if(time.min > 59)res = false;
    else if(time.hour > 23)res = false;
    else if(alarm_initialised)
    {
        RTCCONCLR=0x8000; // turn off the RTCC
        while(RTCCON&0x40); // wait for clock to be turned off
        ALRMTIMEbits.HR10  = time.hour / 10;
        ALRMTIMEbits.HR01  = time.hour % 10;
        ALRMTIMEbits.MIN10 = time.min / 10;
        ALRMTIMEbits.MIN01 = time.min % 10;
        ALRMTIMEbits.SEC10 = time.sec / 10;
        ALRMTIMEbits.SEC01 = time.sec % 10;
        RTCCONSET=0x8000; // turn on the RTCC
        while(!(RTCCON&0x40)); // wait for clock to be turned on
        res = true;
    }
    return res;
}

bool Alarm_SetDate(Date date)
{
    bool res = false;
    if(date.wday > 6)res = false;
    else if(date.day > 31)res = false;
    else if(date.month > 11)res = false;
    else if(date.year > 99)res = false;
    else if(alarm_initialised)
    {
        ALRMDATEbits.DAY01   = date.day   % 10;
        ALRMDATEbits.DAY10   = date.day   / 10;
        ALRMDATEbits.MONTH01 = date.month % 10;
        ALRMDATEbits.MONTH10 = date.month / 10;
        ALRMDATEbits.w       = date.wday;
        res = true;
    }
    return res;
}

Time Alarm_GetTime(void)
{
    Time time;
    time.hour = ALRMTIMEbits.HR10*10 + ALRMTIMEbits.HR01;
    time.min = ALRMTIMEbits.MIN10*10 + ALRMTIMEbits.MIN01;
    time.sec = ALRMTIMEbits.SEC10*10 + ALRMTIMEbits.SEC01;
    return time;  
}

Date Alarm_GetDate(void)
{
    Date date;
    date.wday = ALRMDATEbits.w;
    date.day = ALRMDATEbits.DAY10*10 + ALRMDATEbits.DAY01;
    date.month = ALRMDATEbits.MONTH10*10 + ALRMDATEbits.MONTH01;
    date.year = 0;
    return date;
}

#ifdef gtest
bool RTC_uninit(void)
{
    bool res = false;
    alarm_enable = false;
    alarm_initialised = false;
    rtc_initialised = false;
    res = true;
    return res;
}
#endif


