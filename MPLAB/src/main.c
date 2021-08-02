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
extern int counter2;
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
            accel_tasks();
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
    int number_pack = 0;
    int freq = 500;
    int amp = 10;
    int longeur = 1024;
    signed int paquet[4];
    char msg_swt1[80];
    
    
    while (1) 
    {
        SYS_Tasks();
        MAIN_Tasks();
        LCD_Menu();
        
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
                if (SWT_GetValue(3) == 1)
                {
                    if(rouge == 0)
                    {
                    rgbled = 0xFF0000;
                    RGBLED_SetValueGrouped(rgbled);
                    rouge = 1;
                    }
                    if (moyX > moyY && moyX > moyZ && jeu ==0)
                    {
                        jeu = 1;
                        rgbled = 0xFF3000; //rouge
                        RGBLED_SetValueGrouped(rgbled);
                        RGBLED_SetValueGrouped(0xFF3000);
                        //LED_SetValue(6,true);
                        number_pack++;
                        paquet[0] = number_pack;
                        paquet[1] = longeur;
                        paquet[2] = freq;
                        paquet[3] = amp;
                        memcpy(UDP_Send_Buffer, paquet, 4*sizeof(signed int));
                        UDP_Send_Packet = true;
                    }
                    
                        if (moyY > moyX && moyY > moyZ && jeu == 1)
                        {
                            jeu = 2;
                            rgbled = 0xFF8000;
                            RGBLED_SetValueGrouped(rgbled);
                            RGBLED_SetValueGrouped(0xFF8000);
                            //LED_SetValue(1,true);
                            number_pack++;
                            paquet[0] = number_pack;
                            paquet[1] = longeur;
                            paquet[2] = freq;
                            paquet[3] = amp;
                            memcpy(UDP_Send_Buffer, paquet, 4*sizeof(signed int));
                            UDP_Send_Packet = true;
                        }
                            if (moyZ > moyY && moyZ > moyX && jeu == 2 )
                            {
                                //jeu = 3;
                                rgbled = 0x00FF00;
                                RGBLED_SetValueGrouped(rgbled);
                                RGBLED_SetValueGrouped(0x00FF00);
                                LED_SetValue(2,true);
                                rouge = 0;
                                Alarm_enable(false);
                                number_pack++;
                                rgb = false;
                                paquet[0] = number_pack;
                                paquet[1] = longeur;
                                paquet[2] = freq;
                                paquet[3] = amp;
                                memcpy(UDP_Send_Buffer, paquet, 4*sizeof(signed int));
                                UDP_Send_Packet = true;
                                let_the_game_begin = false;
                                jeu =0;
                               
                            }
                    
//                            if(Gyro_xd > 100 && jeu ==3)
//                            {
//                                jeu =4;
//                                RGBLED_SetValueGrouped(0x0FF00);
//                            }
//                            if(jeu == 3)
//                            {
//                                rgbled = 0x00FF00;
//                                RGBLED_SetValueGrouped(rgbled);
//                                let_the_game_begin = false;
//                                jeu = 0;
//
//                            }
                
                }
                    
            }
        }
        
        if(counter2  > -1)
        {
//        if(rgb)
//            {
//                RGBLED_SetValueGrouped(rgbled);
//                rgbled = rgbled + 0x1;
//                if(rgbled == 0xFFFFFF)
//                {
//                    rgbled = 0x000001;
//                }
//            }
        
            
            if(SWT_GetValue(0) == 1)
            {
                if(counter2 >= 200)
                {
                    counter2 =0;
                    if(BTN_GetValue('U') == 1)
                    {
                        SetTime.hour = SetTime.hour + 1;
                        if(SetTime.hour >=23)
                        {
                            SetTime.hour =0;
                        }
                    
                    
                    }
                    if(BTN_GetValue('D') == 1)
                    {
                        SetTime.hour = SetTime.hour - 1;
                        if(SetTime.hour <0)
                        {
                            SetTime.hour =23;
                        }
                    
                    }
                    if(BTN_GetValue('L') == 1)
                    {
                        SetTime.min = SetTime.min - 1;
                        if(SetTime.min >=59)
                        {
                            SetTime.min =0;
                        }
                    
                    
                        
                    }
                    if(BTN_GetValue('R') == 1)
                    {
                        SetTime.min = SetTime.min + 1;
                        if(SetTime.min <0)
                        {
                            SetTime.min =59;
                        }
                    
                    }
                    RTC_SetTime(SetTime);
                    

                }                                     
                    
            }
            
            if(SWT_GetValue(1) == 1)
            {
                sprintf(msg_swt1, "A:%02d:%02d:%02d", AlarmTime.hour,AlarmTime.min,AlarmTime.sec);
                
                LCD_WriteStringAtPos(msg_swt1, 0, 0);
                //LCD_WriteStringAtPos("ALlO",1,8);
                
                if(counter2 >= 200)
                {
                    counter2 =0;
                    if(BTN_GetValue('U') == 1)
                    {
                        AlarmTime.hour = AlarmTime.hour + 1;
                        if(AlarmTime.hour >=23)
                        {
                            AlarmTime.hour =0;
                        }
                    
                    
                    }
                    if(BTN_GetValue('D') == 1)
                    {
                        AlarmTime.hour = AlarmTime.hour - 1;
                        if(AlarmTime.hour <0)
                        {
                            AlarmTime.hour =23;
                        }
                    
                    }
                    if(BTN_GetValue('L') == 1)
                    {
                        AlarmTime.min = AlarmTime.min - 1;
                        if(AlarmTime.min >=59)
                        {
                            AlarmTime.min =0;
                        }
                    
                    
                    }
                    if(BTN_GetValue('R') == 1)
                    {
                        AlarmTime.min = AlarmTime.min + 1;
                        if(AlarmTime.min <0)
                        {
                            AlarmTime.min =59;
                        }
                    
                    }
                    Alarm_SetTime(AlarmTime);

                }    
            }
        
       
            
               
        }
                    
    }
//        sprintf(xd2, "%03d", xd);
//        LCD_WriteStringAtPos(xd2, 1, 11);
//        
//        ACL_ReadRawValuesMaison(accel_bufferMaison);
//        Acl_16bits(accel_bufferMaison, ACL_XYZ);
//        sprintf(outbuf, "ACL X:%.2f     ", ACL_XYZ[0]);
        //LCD_WriteStringAtPos(outbuf, 1, 0);
        
       
//        thermometre();
   // };

    return 0;
}


/*******************************************************************************
 End of File
 */
