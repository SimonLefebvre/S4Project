


#include "RTC.h"




void RTC_init(void)
{
    RTCCON.CAL = 0;//no adjustment
    RTCCON.SIDL = 0;// Continue clock on IDLE mode
    RTCCON.RTSECSEL = 1;//Seconds clock select
    RTCCON.RTCWREN = 1;//RTC can be modified
    RTCCON.RTCSYNC = 1;//Sync option for reading valid values
    RTCCON.RTCOE = 0;//disable RTCC pin
    RTCCON.ON = 1;//Enable RTC
    RTCCON.RTCCLKON = 1;//Enable clock
    
    RTCALRM.ALRMEN = 0; // alarm is disable 
    IEC0bits.RTCCIE = 1;//int enable = 1;
    IFS0bits.RTCCIF = 0;//Clear flag
}