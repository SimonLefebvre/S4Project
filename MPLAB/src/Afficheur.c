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

void LCD_Menu(void)
{
    unsigned char sw;
    sw = SWT_GetGroupValue();
    
    if(sw & 1)  //Mode Set Time
    {
        
    }
    else if(sw & 2)//Mode Set Alarm
    {
        
    }
    else//Mode Show Time
    {
        t = RTC_GetTime();
        if(oldt.sec != t.sec)afficher_heures(t.hour,t.min,t.sec);
        oldt = t;
    }
}

