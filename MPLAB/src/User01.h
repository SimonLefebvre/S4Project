


#ifndef USER01_H    /* Guard against multiple inclusion */
#define USER01_H


#include "main.h"

typedef struct 
{
    uint32_t amp;
    uint32_t freq;
}SinusInfo;


SinusInfo GetSinusInfo(int moyX,int moyY,int moyZ,int jeu);
void ItISGameTime(int moyX,int moyY,int moyZ,int jeu, SinusInfo s);
#endif