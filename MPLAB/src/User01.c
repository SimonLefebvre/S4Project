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
