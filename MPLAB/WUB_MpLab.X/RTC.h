/******************************************************************************/
/*WAKE UP BODY RTC.h                                                          */ 
/*s4 projet udes                                                              */
/*                                                                            */
/******************************************************************************/

#include <xc.h>
#include <stdbool.h>
#include <sys/attribs.h>

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


/** @brief
 * Initialize the Real time clock of the PIC32
 *
 * @return
 * true if ok, false otherwise
 */
bool RTC_init(void);

/** @brief RTC_SetTime
 * Set the time of the Real Time Clock
 *
 * @param time ==>struct
 * - 0 <= sec  < 60
 * - 0 <= min  < 60
 * - 0 <= hour < 24
 * @return
 * true if ok, false otherwise
 */
bool RTC_SetTime(Time time);    //returns error = 1 if error encounterd

/** @brief RTC_SetDate
 * Set the Date of the Real Time Clock
 *
 * @param date ==>struct
 * - 0 <= wday  < 7
 * - 0 <= day   < 32
 * - 0 <= month < 12
 * - 0 <= year  < 100
 * @return
 * true if ok, false otherwise
 */
bool RTC_SetDate(Date date);    //returns error = 1 if error encounterd

/** @brief RTC_GetTime
 *  Returns the current values of the time in the RTC register
 * @return Time ==>structun
 */
Time RTC_GetTime(void);

/** @brief RTC_GetDate
 *  Returns the current values of the dates in the RTC register
 * @return Date ==>struct
 */
Date RTC_GetDate(void);

/** @brief Alarm_enable
 *  Enables or Disables the Alarm in the RTC
 * @param enable
 * True to enable, False to disable
 * @return
 * true if ok, false otherwise
 */
bool Alarm_enable(bool enable);

/** @brief Alarm_SetTime
 *  Set the time of the Alarm in the RTC module
 * @param time ==>struct
 * - 0 <= sec  < 60
 * - 0 <= min  < 60
 * - 0 <= hour < 24
 * @return
 * true if ok, false otherwise
 */
bool Alarm_SetTime(Time time);  //returns error = 1 if error encounterd

/** @brief Alarm_SetDate
 * Set the Date of the Alarm in the RTC module
 * @param date ==>struct
 * - 0 <= wday  < 7
 * - 0 <= day   < 32
 * - 0 <= month < 12
 * - 0 <= year  < 100
 * @return
 * true if ok, false otherwise
 */
bool Alarm_SetDate(Date date);  //returns error = 1 if error encounterd

/** @brief Alarm_GetTime
 * Returns the current values of the Alarm time in the RTC register
 * @return Time ==>struct
 */
Time Alarm_GetTime(void);

/** @brief Alarm_GetDate
 * Returns the current values of the Alarm Date in the RTC register
 * @return Date ==>struct
 */
Date Alarm_GetDate(void);



/** @brief
 * Uninitialize the Real time clock of the PIC32
 *
 * @return
 * true if ok, false otherwise
 */
#ifdef gtest
bool RTC_uninit(void);
#endif