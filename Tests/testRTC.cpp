//
// Created by mimon on 2021-06-15.
//

#include <gtest/gtest.h>
extern "C"{
#include "../MPLAB/WUB_MpLab.X/RTC.h"
}




TEST(testRTC,testRtcSetTime){
    Time time;
    time.min = 3;
    time.sec = 2;
    time.hour = 2;
    EXPECT_FALSE(RTC_SetTime(time)) <<"Erreur d'initialisation RTC non détecté";
    RTC_init();
    EXPECT_TRUE(RTC_SetTime(time)) <<"Erreur global du fonctionnement du RTC";
    time.sec = 60;
    EXPECT_FALSE(RTC_SetTime(time)) <<"Erreur des seconde non détecté / non respecté";
    time.sec = 0;
    time.min = 60;
    EXPECT_FALSE(RTC_SetTime(time)) <<"Erreur des minute non détecté / non respecté";
    time.min = 0;
    time.hour = 24;
    EXPECT_FALSE(RTC_SetTime(time)) <<"Erreur des heures non détecté / non respecté";
}

/*
TEST(testRTC,testRtcSetDate){


}

TEST(testRTC,testAlarmSetTime){


}

TEST(testRTC,testAlarmSetDate){


}*/