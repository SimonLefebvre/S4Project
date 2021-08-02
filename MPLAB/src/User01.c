/******************************************************************************/
/*Universite de Sherbrooke      -       Genie Electrique    -   S4Projet - P5 */
/*                             WAKE UP BODY                                   */
/*  Simon Lefebvre  -   Jeremy Chenard  -   Zacharie Servant Joncas           */
/*  Zachary Turcotte    -   Pierre-Olivier Marcoux  -   William Ward          */
/* Ete 2021                                                                   */
/******************************************************************************/

#include "User01.h"


SinusInfo GetSinusInfo(int moyX,int moyY,int moyZ,int jeu)
{
    SinusInfo s;
    if(moyX > moyY && moyX > moyZ && jeu ==0) // bon sens donc sons moins trash
    {
        if(s.freq >= 100)
        {
            s.freq = s.freq - 100;
        }
        if(s.amp >= 1)
        {
            s.amp = s.amp - 1;
        }
    }
    if(moyY > moyX && moyY > moyZ && jeu ==0) // pas bon sens donc sons trash
    {
        s.freq = s.freq + 10;
        s.amp = s.amp + 1;
    }
    if(moyZ > moyX && moyZ > moyY && jeu ==0) // pas bon sens donc sons trash
    {
        s.freq = s.freq + 10;
        s.amp = s.amp + 1;
    }
    // jeux 2 ------------------------------------------------------------------------------
    if(moyX > moyY && moyX > moyZ && jeu ==1) // pas bon sens donc sons trash
    {
        s.freq = s.freq + 10;
        s.amp = s.amp + 1;
    }
    if(moyY > moyX && moyY > moyZ && jeu ==1) // bon sens donc sons moins trash
    {
        if(s.freq >= 100)
        {
            s.freq = s.freq - 100;
        }
        if(s.amp >= 1)
        {
            s.amp = s.amp - 1;
        }
    }
    if(moyZ > moyX && moyZ > moyY && jeu ==1) // pas bon sens donc sons trash
    {
        s.freq = s.freq + 100;
        s.amp = s.amp + 1;
    }
    //jeux 3 --------------------------------------------------------------------------------
    if(moyX > moyY && moyX > moyZ && jeu ==2) // pas bon sens donc sons trash
    {
        s.freq = s.freq + 10;
        s.amp = s.amp + 1;
    }
    if(moyY > moyX && moyY > moyZ && jeu ==2) // pas bon sens donc sons trash
    {
        s.freq = s.freq + 10;
        s.amp = s.amp + 1;
    }
    if(moyZ > moyX && moyZ > moyY && jeu ==2) // bon sens donc sons moins trash
    {
        if(s.freq >= 100)
        {
            s.freq = s.freq - 100;
        }
        if(s.amp >= 1)
        {
            s.amp = s.amp - 1;
        }
    }

}


extern bool let_the_game_begin;
void ItISGameTime(int moyX,int moyY,int moyZ,int jeu, SinusInfo s)
{
static int number_pack = 0;    
static bool rouge = 0;
signed int paquet[4];
int longeur = 1024;

    if(SWT_GetValue(3) == 1)//If alarm is still Set
    {
        if(rouge == false)
        {
            RGBLED_SetValueGrouped(0xFF0000);
            rouge = true;
        }
        if (moyX > moyY && moyX > moyZ && jeu ==0)
        {
            jeu = 1;
            RGBLED_SetValueGrouped(0xFF3000);
            RGBLED_SetValueGrouped(0xFF3000);
            //LED_SetValue(6,true);
            number_pack++;
            paquet[0] = number_pack;
            paquet[1] = longeur;
            paquet[2] = s.freq;
            paquet[3] = s.amp;
            memcpy(UDP_Send_Buffer, paquet, 4*sizeof(signed int));
            UDP_Send_Packet = true;
        }
        if (moyY > moyX && moyY > moyZ && jeu == 1)
        {
            jeu = 2;
            RGBLED_SetValueGrouped(0xFF8000);
            RGBLED_SetValueGrouped(0xFF8000);
            //LED_SetValue(1,true);
            number_pack++;
            paquet[0] = number_pack;
            paquet[1] = longeur;
            paquet[2] = s.freq;
            paquet[3] = s.amp;
            memcpy(UDP_Send_Buffer, paquet, 4*sizeof(signed int));
            UDP_Send_Packet = true;
        }
        if (moyZ > moyY && moyZ > moyX && jeu == 2 )
        {
            //jeu = 3;
            RGBLED_SetValueGrouped(0x00FF00);
            LED_SetValue(2,true);
            rouge = 0;
            Alarm_enable(false);
            number_pack++;
            paquet[0] = number_pack;
            paquet[1] = longeur;
            paquet[2] = s.freq;
            paquet[3] = s.amp;
            memcpy(UDP_Send_Buffer, paquet, 4*sizeof(signed int));
            UDP_Send_Packet = true;
            let_the_game_begin = false;
            jeu =0;
        }
    }
}
