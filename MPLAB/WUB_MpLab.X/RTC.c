/******************************************************************************/
/*WAKE UP BODY RTC.C                                                          */ 
/*s4 projet udes                                                              */
/*                                                                            */
/******************************************************************************/

#include "RTC.h"

static bool alarm_enable = false;
static bool alarm_initialised = false;
static bool rtc_initialised = false;

static bool Alarm_init(void);

bool RTC_init(void)
{
    bool res = false;
    RTCCONbits.CAL = 0;//no adjustment
    RTCCONbits.SIDL = 0;// Continue clock on IDLE mode
    RTCCONbits.RTSECSEL = 1;//Seconds clock select
    RTCCONbits.RTCWREN = 1;//RTC can be modified
    RTCCONbits.RTCSYNC = 1;//Sync option for reading valid values
    RTCCONbits.RTCOE = 0;//disable RTCC pin
    RTCCONbits.ON = 1;//Enable RTC
    RTCCONbits.RTCCLKON = 1;//Enable clock
    RTCALRMbits.ALRMEN = 0; // alarm is disable 
    IEC0bits.RTCCIE = 1;//int enable = 1;
    IFS0bits.RTCCIF = 0;//Clear flag
    res = Alarm_init();
    rtc_initialised = res;

    return res;
}

static bool Alarm_init(void)//private function
{
    bool res = false;
    RTCALRMbits.ALRMEN = 0; //Disable Alarm
    RTCALRMbits.CHIME = 0;
    RTCALRMbits.ALRMSYNC = 1; //Sync enable
    RTCALRMbits.AMASK = 0x06; //Alarm every Day

    res = true;
    alarm_initialised = res;
    return res;
}

bool Alarm_enable(bool enable)
{
    bool res = false;
    if(alarm_initialised)
    {
        RTCALRMbits.ALRMEN = enable; //Can enable and disable the alarm
        res = true;
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
        RTCTIMEbits.SEC01   = time.sec % 10;  
        RTCTIMEbits.SEC10   = time.sec / 10;
        RTCTIMEbits.MIN01   = time.min  % 10;
        RTCTIMEbits.MIN10   = time.min / 10;
        RTCTIMEbits.HR01    = time.hour % 10;
        RTCTIMEbits.HR10    = time.hour / 10;
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
        ALRMTIMEbits.HR10  = time.hour / 10;
        ALRMTIMEbits.HR01  = time.hour % 10;
        ALRMTIMEbits.MIN10 = time.min / 10;
        ALRMTIMEbits.MIN01 = time.min % 10;
        ALRMTIMEbits.SEC10 = time.sec / 10;
        ALRMTIMEbits.SEC01 = time.sec % 10;
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

