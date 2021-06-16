//
// Created by mimon on 2021-06-15.
//

#include <gtest/gtest.h>
extern "C"{
#include "../MPLAB/WUB_MpLab.X/RTC.h"
}

class testRTC:public testing::Test{
    void SetUp() override{

    }
    void TearDown() override{
        EXPECT_TRUE(RTC_uninit())<<"Erreur du RTC uninit";
    }
};


TEST_F(testRTC,testRtcSetTime){
    Time time;
    time.min = 3;
    time.sec = 2;
    time.hour = 2;
    EXPECT_FALSE(RTC_SetTime(time)) <<"Erreur d'initialisation RTC non détecté";
    EXPECT_TRUE(RTC_init())<<"Erreur du RTC init";
    EXPECT_TRUE(RTC_SetTime(time)) <<"Erreur global du fonctionnement du RTC";
    time.sec = 60;
    EXPECT_FALSE(RTC_SetTime(time)) <<"Erreur des seconde non détecté / non respecté";
    time.sec = 0;
    time.min = 60;
    EXPECT_FALSE(RTC_SetTime(time)) <<"Erreur des minute non détecté / non respecté";
    time.min = 0;
    time.hour = 24;
    EXPECT_FALSE(RTC_SetTime(time)) <<"Erreur des heures non détecté / non respecté";
    time.hour = 23;
    EXPECT_TRUE(RTC_SetTime(time)) <<"Erreur global#2 du fonctionnement du RTC";
}


TEST_F(testRTC,testRtcSetDate) {
    Date date;
    date.wday = 0;
    date.day = 0;
    date.month = 0;
    date.year = 0;
    EXPECT_FALSE(RTC_SetDate(date)) << "Erreur d'initialisation RTC non détecté";
    EXPECT_TRUE(RTC_init())<<"Erreur du RTC init";
    EXPECT_TRUE(RTC_SetDate(date)) << "Erreur global du fonctionnement du RTC";
    date.wday = 7;
    EXPECT_FALSE(RTC_SetDate(date)) << "Erreur des week day non détecté / non respecté";
    date.wday = 6;
    date.day = 32;
    EXPECT_FALSE(RTC_SetDate(date)) << "Erreur des day non détecté / non respecté";
    date.day = 31;
    date.month = 12;
    EXPECT_FALSE(RTC_SetDate(date)) << "Erreur des mois non détecté / non respecté";
    date.month = 11;
    date.year = 100;
    EXPECT_FALSE(RTC_SetDate(date)) << "Erreur des années non détecté / non respecté";
    date.year = 99;
    EXPECT_TRUE(RTC_SetDate(date)) << "Erreur global#2 du fonctionnement du RTC";
}

TEST_F(testRTC,testAlarmSetTime)
{
    Time time;
    time.min = 0;
    time.sec = 0;
    time.hour = 0;
    EXPECT_FALSE(Alarm_SetTime(time)) << "Erreur d'initialisation RTC non détecté";
    EXPECT_TRUE(RTC_init())<<"Erreur du RTC init";
    time.sec = 60;
    EXPECT_FALSE(Alarm_SetTime(time)) << "Erreur des seconde non détecté / non respecté";
    time.sec = 59;
    time.min = 60;
    EXPECT_FALSE(Alarm_SetTime(time)) << "Erreur des minutes non détecté / non respecté";
    time.min = 59;
    time.hour = 24;
    EXPECT_FALSE(Alarm_SetTime(time)) << "Erreur des heures non détecté / non respecté";
    time.hour = 23;
    EXPECT_TRUE(Alarm_SetTime(time)) << "Erreur global#2 du fonctionnement du RTC";


}

TEST_F(testRTC,testAlarmSetDate)
{
    Date date;
    date.wday = 0;
    date.day = 0;
    date.month = 0;
    date.year = 0;
    EXPECT_FALSE(Alarm_SetDate(date)) << "Erreur d'initialisation RTC non détecté";
    EXPECT_TRUE(RTC_init())<<"Erreur du RTC init";
    date.wday = 7;
    EXPECT_FALSE(Alarm_SetDate(date)) << "Erreur des week day non détecté / non respecté";
    date.wday = 6;
    date.day = 32;
    EXPECT_FALSE(Alarm_SetDate(date)) << "Erreur des day non détecté / non respecté";
    date.day = 31;
    date.month = 12;
    EXPECT_FALSE(Alarm_SetDate(date)) << "Erreur des mois non détecté / non respecté";
    date.month = 11;
    date.year = 100;
    EXPECT_FALSE(Alarm_SetDate(date)) << "Erreur des années non détecté / non respecté";
    date.year = 99;
    EXPECT_TRUE(Alarm_SetDate(date)) << "Erreur global#2 du fonctionnement du RTC";
}

TEST_F(testRTC,testRtcGetTime){
    Time time;
    Time time2;
    time.sec = 0;
    time.min = 0;
    time.hour = 0;
    EXPECT_TRUE(RTC_init())<<"Erreur du RTC init";
    EXPECT_TRUE(RTC_SetTime(time))<<"Erreur de Set Time";
    time2 = RTC_GetTime();
    EXPECT_EQ(time2.sec,time.sec)<<"Erreur de lecture de sec";
    EXPECT_EQ(time2.min,time.min)<<"Erreur de lecture de min";
    EXPECT_EQ(time2.hour,time.hour)<<"Erreur de lecture de heures";
    time.sec = 2;
    time.min = 3;
    time.hour = 4;
    EXPECT_TRUE(RTC_SetTime(time))<<"Erreur de Set Time";
    time2 = RTC_GetTime();
    EXPECT_EQ(time2.sec,time.sec)<<"Erreur de lecture de sec";
    EXPECT_EQ(time2.min,time.min)<<"Erreur de lecture de min";
    EXPECT_EQ(time2.hour,time.hour)<<"Erreur de lecture de heures";
}

TEST_F(testRTC,testRtcGetDate){
    Date date;
    Date date2;
    date.wday = 0;
    date.day = 0;
    date.month = 0;
    date.year = 0;
    EXPECT_TRUE(RTC_init())<<"Erreur du RTC init";
    EXPECT_TRUE(RTC_SetDate(date))<<"Erreur de Set Date";
    date2 = RTC_GetDate();
    EXPECT_EQ(date2.wday,date.wday);
    EXPECT_EQ(date2.day,date.day);
    EXPECT_EQ(date2.month,date.month);
    EXPECT_EQ(date2.year,date.year);
}