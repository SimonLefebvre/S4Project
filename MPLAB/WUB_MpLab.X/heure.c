/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.c

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

#include "heure.h"
/* TODO:  Include other files here if needed. */


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: File Scope or Global Data                                         */
/* ************************************************************************** */
/* ************************************************************************** */

extern bool Flag_1ms;
char heures[2] = {0};
char minutes[2] = {0};
char secondes[2] = {0};
int count = 0;

enum
{
    BtnU,
    BtnL,
    BtnC,
    BtnR,
    BtnD
}Button_e;

typedef enum
{
    Clock,
    Config
}FSM_Clock_e;

typedef enum
{
    NoButtonPressed,
    ButtonPressed
}FSM_Button_e;

FSM_Clock_e clkState = Clock;
FSM_Button_e btnState = NoButtonPressed;

char* currentDigitSelected = &secondes[0];

static void updateDisplay()
{
    if(secondes[0] > 9){secondes[0] = 0; secondes[1] ++;}
    if(secondes[1] > 5){secondes[1] = 0; minutes[0] ++;}
    if(minutes[0] > 9){minutes[0] = 0; minutes[1] ++;}
    if(minutes[1] > 5){minutes[1] = 0; heures[0] ++;}
    if(heures[0] > 9){heures[0] = 0; heures[1] ++;}
    if(heures[0] > 3 && heures[1] > 1){heures[0] = 0; heures[1] =0;}
    if(heures[1] > 2){ heures[1] = 0;}
    
    char stringToSend[9] = {heures[1]+48,heures[0]+48,':',minutes[1]+48,minutes[0]+48,':',secondes[1]+48,secondes[0]+48,'\0'};
    LCD_WriteStringAtPos(stringToSend, 1, 0);
}

bool heure()
{
    bool second_elapsed = false;
    
    if(Flag_1ms)// Flag d'interruption à chaque 1 ms
    {
        Flag_1ms = 0;
        
        /*if(BTN_GetValue(BtnC) == ButtonPressed && btnState == NoButtonPressed)
        {
            btnState = ButtonPressed;
            clkState = !clkState;
        }
        if(!BTN_GetGroupValue())
        {
            btnState = NoButtonPressed;
        }

        if(clkState == Config)
        {
            if(btnState == NoButtonPressed && BTN_GetGroupValue())
            {
                btnState = ButtonPressed;
                if(BTN_GetValue(BtnU))
                {
                    (*currentDigitSelected)++;
                }
                else if(BTN_GetValue(BtnD))
                {
                    if(*currentDigitSelected > 0)
                        (*currentDigitSelected)--;
                }
                else if(BTN_GetValue(BtnL))
                {
                    if(currentDigitSelected == &secondes[0]) currentDigitSelected = &secondes[1];
                    else if(currentDigitSelected == &secondes[1]) currentDigitSelected = &minutes[0];
                    else if(currentDigitSelected == &minutes[0]) currentDigitSelected = &minutes[1];
                    else if(currentDigitSelected == &minutes[1]) currentDigitSelected = &heures[0];
                    else if(currentDigitSelected == &heures[0]) currentDigitSelected = &heures[1];
                    else if(currentDigitSelected == &heures[1]) currentDigitSelected = &secondes[0];
                }
                else if(BTN_GetValue(BtnR))
                {
                    if(currentDigitSelected == &secondes[0]) currentDigitSelected = &heures[1];
                    else if(currentDigitSelected == &secondes[1]) currentDigitSelected = &secondes[0];
                    else if(currentDigitSelected == &minutes[0]) currentDigitSelected = &secondes[1];
                    else if(currentDigitSelected == &minutes[1]) currentDigitSelected = &minutes[0];
                    else if(currentDigitSelected == &heures[0]) currentDigitSelected = &minutes[1];
                    else if(currentDigitSelected == &heures[1]) currentDigitSelected = &heures[0];
                }
                updateDisplay();
            }
        }
        else
        {
            if (++count >= 1000) 
            {
                count = 0;
                secondes[0]++;
                updateDisplay();
                second_elapsed = true;
            }
        }*/
        if (++count >= 1000) 
        {
            count = 0;
            secondes[0]++;
            //updateDisplay();
            second_elapsed = true;
        }
    }
    return second_elapsed;
}


/* *****************************************************************************
 End of File
 */
