/******************************************************************************/
/*WAKE UP BODY RTC.h                                                          */ 
/*s4 projet udes                                                              */
/*                                                                            */
/******************************************************************************/

#include <xc.h>
#include <stdbool.h>

typedef struct 
{
    uint32_t sec;
    uint32_t min;
    uint32_t hour;
}Time;

typedef struct 
{
    uint32_t wday;
    uint32_t day;
    uint32_t month;
    uint32_t year;
}Date;

void RTC_init(void);

bool RTC_SetTime(Time time);    //returns error = 1 if error encounterd
bool RTC_SetDate(Date date);    //returns error = 1 if error encounterd
Time RTC_GetTime(void);
Date RTC_GetDate(void);

void Alarm_init(void);
void Alarm_enable(bool enable);
bool Alarm_SetTime(Time time);  //returns error = 1 if error encounterd
bool Alarm_SetDate(Date date);  //returns error = 1 if error encounterd
Time Alarm_GetTime(void);
Date Alarm_GetDate(void);
