/******************************************************************************/
/*Universite de Sherbrooke      -       Genie Electrique    -   S4Projet - P5 */
/*                             WAKE UP BODY                                   */
/*  Simon Lefebvre  -   Jeremy Chenard  -   Zacharie Servant Joncas           */
/*  Zachary Turcotte    -   Pierre-Olivier Marcoux  -   William Ward          */
/* Ete 2021                                                                   */
/******************************************************************************/


#include "Afficheur.h"


void afficher_heures(int heures, int minutes,int secondes)
{
    char msg[80];
    sprintf(msg, "%02d:%02d:%02d  ", heures,minutes,secondes ); 
    LCD_WriteStringAtPos(msg, 0, 0);
}


/*Menu des Switchs*/

//  !SW0 ==> Heure, température
//   SW0 ==> Mode SET TIME
//   SW1 ==> Set Alarme MODE
//   SW3 ==> Enable Alarme
//   SW6 ==> Reset RGB
//   SW7 ==> Fareinheit / Celius
Time t;
Time oldt;
Time AlarmT;
extern int counter2;//accel.c


void LCD_Menu(void)
{
    unsigned char sw;
    sw = SWT_GetGroupValue();
    static bool AlarmSetFlag = false;
    
    if(sw & 1)  //Mode Set Time
    {
        
    }
    else if(sw & 2)//Mode Set Alarm
    {
        char msg_swt1[80];
        if(AlarmSetFlag == false)AlarmT = Alarm_GetTime();
        AlarmSetFlag = true;
        sprintf(msg_swt1, "A:%02d:%02d:%02d", AlarmT.hour,AlarmT.min,AlarmT.sec);
        LCD_WriteStringAtPos(msg_swt1, 0, 0);
        if(counter2 >= 200)
        {
            counter2 =0;
            if(BTN_GetValue('U') == 1)
            {
                AlarmT.hour = AlarmT.hour + 1;
                if(AlarmT.hour >=23)
                {
                    AlarmT.hour =0;
                }
            }
            if(BTN_GetValue('D') == 1)
            {
                AlarmT.hour = AlarmT.hour - 1;
                if(AlarmT.hour <0)
                {
                    AlarmT.hour =23;
                }

            }
            if(BTN_GetValue('L') == 1)
            {
                AlarmT.min = AlarmT.min - 1;
                if(AlarmT.min >=59)
                {
                    AlarmT.min =0;
                }
            }
            if(BTN_GetValue('R') == 1)
            {
                AlarmT.min = AlarmT.min + 1;
                if(AlarmT.min <0)
                {
                    AlarmT.min =59;
                }
            }
        }
    }
    else//Mode Show Time
    {
        t = RTC_GetTime();
        if(oldt.sec != t.sec)afficher_heures(t.hour,t.min,t.sec);
        oldt = t;
        //thermometre();
    }
    
    if((sw & 2) == 0 && AlarmSetFlag == true)
    {
        Alarm_SetTime(AlarmT);
        AlarmSetFlag = false;
    }
}

