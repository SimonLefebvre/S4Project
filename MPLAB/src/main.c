/******************************************************************************/
/*Universite de Sherbrooke      -       Genie Electrique    -   S4Projet - P5 */
/*                             WAKE UP BODY                                   */
/*  Simon Lefebvre  -   Jeremy Chenard  -   Zacharie Servant Joncas           */
/*  Zachary Turcotte    -   Pierre-Olivier Marcoux  -   William Ward          */
/* Ete 2021                                                                   */
/******************************************************************************/
#include "main.h"

/****************************VARIABLE GLOBALE**********************************/

MAIN_DATA mainData;
char outbuf[80];
int counter3 = 0;

extern float Gyro_xd;
extern float ACL_BufferX[100];
extern float ACL_BufferY[100];
extern float ACL_BufferZ[100];
extern bool data_ready;
extern bool let_the_game_begin;

/******************************************************************************/

void MAIN_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    macro_disable_interrupts;
    RTC_init();
    Alarm_enable(false);
    macro_enable_interrupts();
    mainData.state = MAIN_STATE_INIT;

    mainData.handleUSART0 = DRV_HANDLE_INVALID;
    
    UDP_Initialize();
    LCD_Init();
    RGBLED_Init();
    BTN_Init();
    ACL_Init();
    SWT_Init();
    //SSD_Init();
    init_AclGyro();
    init_thermo();
}

void MAIN_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( mainData.state )
    {
            /* Application's initial state. */
        case MAIN_STATE_INIT:
        {
            bool appInitialized = true;
            SYS_CONSOLE_MESSAGE("Init\r\n");
            if (mainData.handleUSART0 == DRV_HANDLE_INVALID)
            {
                mainData.handleUSART0 = DRV_USART_Open(MAIN_DRV_USART, DRV_IO_INTENT_READWRITE|DRV_IO_INTENT_NONBLOCKING);
                appInitialized &= (DRV_HANDLE_INVALID != mainData.handleUSART0);
            }


            if (appInitialized)
            {
                mainData.state = MAIN_STATE_SERVICE_TASKS;
            }
            break;
        }

        case MAIN_STATE_SERVICE_TASKS:
        {
            
            UDP_Tasks();
        	JB1Toggle();
            LED0Toggle();
            break;
        }

            /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}

int main(void) 
{
    
    SYS_Initialize(NULL);
    MAIN_Initialize();
    SYS_INT_Enable();
    Time t;
    Time SetTime;
    Time AlarmTime;
    SetTime.hour = 1;
    SetTime.min = 12;
    SetTime.sec = 01;
    AlarmTime.hour = 1;
    AlarmTime.min = 12;
    AlarmTime.sec = 5;
    int32_t rgbled = 0x00FF00; //couleur cyan 0x00FF00
    bool rgb = true;
    int moyX = 0;
    int moyY = 0;
    int moyZ = 0;
    int jeu = 0;
    int rouge = 0;
    int freq = 500;
    int amp = 10;
    
    
    
    while (1) 
    {
        SYS_Tasks();
        MAIN_Tasks();
        //macro_disable_interrupts;
        LCD_Menu();
        accel_tasks();
        //macro_enable_interrupts();
        
        
        unsigned char val_swt2 = SWT_GetValue(2);
        unsigned char val_swt6 = SWT_GetValue(6);
        
        if(val_swt6 == 1)
        {
            rgbled ==0x00FF00;
            Alarm_enable(true);
            RGBLED_SetValueGrouped(rgbled);
        }
        
        if(let_the_game_begin == true)
        {
            LED_SetValue(4,true);
            if(data_ready == true)//50 Data in Accel Buffer
            {
                data_ready = false;
                int i=0;
                for(;i < 50;i++)//Get data from Buffer
                {  
                    if(ACL_BufferX[i] >= 1.1 || ACL_BufferX[i] <= - 1.1)moyX++;
                    if(ACL_BufferY[i] >= 1.1 || ACL_BufferY[i] <= - 1.1)moyY++;
                    if(ACL_BufferZ[i] >= 1.1 || ACL_BufferZ[i] <= - 1.1)moyZ++;
                }
                //jeux 1 --------------------------------------------------------------------------------
                SinusInfo s;
                s = GetSinusInfo(moyX,moyY,moyZ,jeu);
                // le jeux himself ---------------------------------------------------------------------
                ItISGameTime(moyX, moyY, moyZ, jeu, s);
            }
        }       
    }
    return;
}


/*******************************************************************************
 End of File
 */
