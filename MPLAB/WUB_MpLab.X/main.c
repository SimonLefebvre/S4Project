/******************************************************************************/
/*WAKE UP BODY MAIN.C                                                         */ 
/*s4 projet udes                                                              */
/*                                                                            */
/******************************************************************************/


#include "WUB.h"

/*      VARRIABLES GLOBALES     */
bool Flag_1ms = false;

void main(void)
{
    Timer1Init();
    macro_enable_interrupts();
    
    init_AclGyro();
    UART_Init(921600);
    LCD_Init();
    SWT_Init();
    
    static float ACL_XYZ[3] = {0, 0, 0};
    static float GYRO_XYZ[3] = {0, 0, 0};
    char outbuf[80];
    
    /*while(1)
    {        
        int count = 0;
        float moyAcl_XYZ[3] = {0, 0, 0};
        float moyGyro_XYZ[3] = {0, 0, 0};
    
        while(count < 3)
        {
            ACL_ReadRawValues(accel_buffer); 
            GYRO_ReadRawValues(gyro_buffer);
            
            Acl_16bits(accel_buffer, ACL_XYZ);
            Gyro_16bits(gyro_buffer, GYRO_XYZ);  
            
            moyAcl_XYZ[0] = moyAcl_XYZ[0] + ACL_XYZ[0];
            moyAcl_XYZ[1] = moyAcl_XYZ[1] + ACL_XYZ[1];
            moyAcl_XYZ[2] = moyAcl_XYZ[2] + ACL_XYZ[2];
            
            moyGyro_XYZ[0] = moyGyro_XYZ[0] + GYRO_XYZ[0];
            moyGyro_XYZ[1] = moyGyro_XYZ[1] + GYRO_XYZ[1];
            moyGyro_XYZ[2] = moyGyro_XYZ[2] + GYRO_XYZ[2];
            
            count++;
        }
        
        moyAcl_XYZ[0] = moyAcl_XYZ[0] / (float)count;
        moyAcl_XYZ[1] = moyAcl_XYZ[1] / (float)count;
        moyAcl_XYZ[2] = moyAcl_XYZ[2] / (float)count;
        
        moyGyro_XYZ[0] = moyGyro_XYZ[0] / (float)count;
        moyGyro_XYZ[1] = moyGyro_XYZ[1] / (float)count;
        moyGyro_XYZ[2] = moyGyro_XYZ[2] / (float)count;
        
        // Utilisation de l'accéléromètre
        if (SWT_GetValue(7) == 0)
        {            
            sprintf(outbuf, "ACL X:%.2f     ", moyAcl_XYZ[0]);
            LCD_WriteStringAtPos(outbuf, 0, 0);
            sprintf(outbuf, "Y:%.2f,Z:%.2f ", moyAcl_XYZ[1], moyAcl_XYZ[2]);        
            LCD_WriteStringAtPos(outbuf, 1, 0);
        }
        // Utiliser le gyroscope
        else if (SWT_GetValue(7) == 1)
        {
            sprintf(outbuf, "GYRO X:%.2f    ", moyGyro_XYZ[0]);
            LCD_WriteStringAtPos(outbuf, 0, 0);
            sprintf(outbuf, "Y:%.2f,Z:%.2f   ", moyGyro_XYZ[1], moyGyro_XYZ[2]);        
            LCD_WriteStringAtPos(outbuf, 1, 0);
        }        
    }
     */
    int count = 0;
    static float moyAcl_XYZ[3] = {0, 0, 0};
    static float moyGyro_XYZ[3] = {0, 0, 0};
    
    // Main loop
    while(1) 
    {            
        if(Flag_1ms)
        {
            // Code à effectuer chaque seconde ici
            Flag_1ms = false;
            
            ACL_ReadRawValues(accel_buffer); 
            GYRO_ReadRawValues(gyro_buffer);

            Acl_16bits(accel_buffer, ACL_XYZ);
            Gyro_16bits(gyro_buffer, GYRO_XYZ);  

            /*moyAcl_XYZ[0] = moyAcl_XYZ[0] + ACL_XYZ[0];
            moyAcl_XYZ[1] = moyAcl_XYZ[1] + ACL_XYZ[1];
            moyAcl_XYZ[2] = moyAcl_XYZ[2] + ACL_XYZ[2];*/

            moyGyro_XYZ[0] = moyGyro_XYZ[0] + GYRO_XYZ[0];
            moyGyro_XYZ[1] = moyGyro_XYZ[1] + GYRO_XYZ[1];
            moyGyro_XYZ[2] = moyGyro_XYZ[2] + GYRO_XYZ[2];
                
            // À tous les 3 milisecondes.
            if(count == 3)
            {
                /*moyAcl_XYZ[0] = moyAcl_XYZ[0] / (float)count;
                moyAcl_XYZ[1] = moyAcl_XYZ[1] / (float)count;
                moyAcl_XYZ[2] = moyAcl_XYZ[2] / (float)count;*/

                moyGyro_XYZ[0] = moyGyro_XYZ[0] / (float)count;
                moyGyro_XYZ[1] = moyGyro_XYZ[1] / (float)count;
                moyGyro_XYZ[2] = moyGyro_XYZ[2] / (float)count;
                
                // Afin d'avoir les degrées
                /*moyGyro_XYZ[0] = moyGyro_XYZ[0] * 0,003;
                moyGyro_XYZ[1] = moyGyro_XYZ[1] * 0,003;
                moyGyro_XYZ[2] = moyGyro_XYZ[2] * 0,003;*/

                /*if (SWT_GetValue(7) == 0)
                {            
                    sprintf(outbuf, "ACL X:%.2f     ", moyAcl_XYZ[0]);
                    LCD_WriteStringAtPos(outbuf, 0, 0);
                    sprintf(outbuf, "Y:%.2f,Z:%.2f ", moyAcl_XYZ[1], moyAcl_XYZ[2]);        
                    LCD_WriteStringAtPos(outbuf, 1, 0);
                }*/
                // Utiliser le gyroscope
                set_GyroAngle(moyGyro_XYZ);
                if (SWT_GetValue(7) == 1)
                {
                    //GyroAngle_XYZ
                    sprintf(outbuf, "GYRO X:%.2f     ", moyGyro_XYZ[0]);
                    LCD_WriteStringAtPos(outbuf, 0, 0);
                    sprintf(outbuf, "Y:%.2f,Z:%.2f   ", moyGyro_XYZ[1], moyGyro_XYZ[2]);        
                    LCD_WriteStringAtPos(outbuf, 1, 0);
                    /*sprintf(outbuf, "GYRO X:%.2f     ", GyroAngle_XYZ[0]);
                    LCD_WriteStringAtPos(outbuf, 0, 0);
                    sprintf(outbuf, "Y:%.2f,Z:%.2f   ", GyroAngle_XYZ[1], GyroAngle_XYZ[2]);        
                    LCD_WriteStringAtPos(outbuf, 1, 0);*/
                }    
                
                // Réinitialiser les valeurs
                count = 0;
                /*moyAcl_XYZ[0] = 0;
                moyAcl_XYZ[1] = 0;
                moyAcl_XYZ[2] = 0;*/
                moyGyro_XYZ[0] = 0;
                moyGyro_XYZ[1] = 0;
                moyGyro_XYZ[2] = 0;
            }     
            
            // Utilisation de l'accéléromètre
            if (SWT_GetValue(7) == 0)
            {            
                sprintf(outbuf, "ACL X:%.2f     ", ACL_XYZ[0]);
                LCD_WriteStringAtPos(outbuf, 0, 0);
                sprintf(outbuf, "Y:%.2f,Z:%.2f ", ACL_XYZ[1], ACL_XYZ[2]);        
                LCD_WriteStringAtPos(outbuf, 1, 0);
            }
            count++;
        }
    }
    
    //ACLGYRO_Close();
    UART_CloseUART();
}