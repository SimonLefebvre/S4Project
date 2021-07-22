/******************************************************************************/
/*MAIN                                                                        */
/*Auteur: Simon Lefebvre                                                      */
/*Créer le 7 juin 2021                                                        */
/*                                                                            */
/******************************************************************************/

#include "WUB.h"

extern bool Flag_1ms;

void Timer1Init(void)
{
  T1CONbits.TCKPS = 3;                //    256 prescaler value
  T1CONbits.TGATE = 0;                //    not gated input (the default)
  T1CONbits.TCS = 0;                  //    PCBLK input (the default)
  //PR1 = 188;
  PR1 = (int)(((float)(TMR_TIME * PB_FRQ) / 256) + 0.5);   //set period register, generates one interrupt every 1 ms
                                      //    48 kHz * 1 ms / 256 = 188
  TMR1 = 0;                           //    initialize count to 0
  IPC1bits.T1IP = 2;                  //    INT step 4: priority
  IPC1bits.T1IS = 0;                  //    subpriority
  IFS0bits.T1IF = 0;                  //    clear interrupt flag
  IEC0bits.T1IE = 1;                  //    enable interrupt
  T1CONbits.ON = 1;                   //    turn on Timer5 
    
}

void __ISR(_TIMER_1_VECTOR, IPL2AUTO) Timer1ISR(void) 
{  
   Flag_1ms = 1;           //    Indique à la boucle principale qu'on doit traiter

   IFS0bits.T1IF = 0;     //    clear interrupt flag
}
