/******************************************************************************/
/*WAKE UP BODY acl_gyro.c                                                     */ 
/*s4 projet udes                                                              */
/*                                                                            */
/******************************************************************************/

#include "acl_gyro.h"


uint8_t accel_bufferMaison[aclgyro_buf_length]; // Buffer for reading the acceleration values
uint8_t gyro_buffer[aclgyro_buf_length];

float GyroErreur_XYZ[3] = {0, 0, 0};
float GyroAngle_XYZ[3] = {0, 0, 0};

void init_AclGyro()
{
    memset(accel_bufferMaison,0,aclgyro_buf_length);
    memset(gyro_buffer,0,aclgyro_buf_length);
    //I2C_Init(400000);
    
    
    ACLGYRO_SetRegister(ACLGYRO_PWR_MGMT_1, 0x00);  // Reset
    ACLGYRO_SetRegister(ACL_CONFIG, 0x10); 
    ACLGYRO_SetRegister(GYRO_CONFIG, 0x10);// 
    ACLGYRO_SetRegister(ACLGYRO_Threshold, 0x02);   // Tester non fonctionnel/ A investiguer
    
    //ACLGYRO_SetRegister(ACLGYRO_CONFIG, 0x04);      // Filtre passe-bas
    
    //calcul_IMU_erreur();
}

unsigned char ACLGYRO_SetRegister(unsigned char bAddress, unsigned char bValue)
{
    unsigned char rgVals[2], bResult;
    rgVals[0] = bAddress;       // register address
    rgVals[1] = bValue;         // register value
    
    bResult = I2C_Write(ACLGYRO_I2C_ADDR, rgVals, 2, 1);

    return bResult;
}


unsigned char ACLGYRO_GetRegister(unsigned char bAddress)
{
    unsigned char bResult;
    if(I2C_Write(ACLGYRO_I2C_ADDR, &bAddress, 1, 0))return 0xFF;
    I2C_Read(ACLGYRO_I2C_ADDR, &bResult, 1);

    return bResult;
}


void ACL_ReadRawValuesMaison(unsigned char *raclRawVals)
{
    unsigned char bVal = ACL_OUT_X_MSB2;
    
    I2C_Write(ACLGYRO_I2C_ADDR, &bVal, 1, 0);
    I2C_Read(ACLGYRO_I2C_ADDR, raclRawVals, 6);
}

void GYRO_ReadRawValues(unsigned char *rgyroRawVals)
{
    unsigned char bVal = GYRO_OUT_X_MSB;
    
    I2C_Write(ACLGYRO_I2C_ADDR, &bVal, 1, 0);
    I2C_Read(ACLGYRO_I2C_ADDR, rgyroRawVals, 6);
}

// Mets les valeurs de l'accéléromètre en unité d'accélération.
void Acl_16bits(unsigned char *raclRawVals, float *valAclXYZ)
{
    // Initialisation des variables x,y,z sur 16 bits
    int16_t x,y,z;

    x = (int16_t)((uint16_t) raclRawVals[0] <<8 | raclRawVals[1]);
    y = (int16_t)((uint16_t) raclRawVals[2] <<8 | raclRawVals[3]);
    z = (int16_t)((uint16_t) raclRawVals[4] <<8 | raclRawVals[5]);

    // Mettre les valeurs sur +-2g
    /*valAclXYZ[0] = (float)x/16384;
    valAclXYZ[1] = (float)y/16384;
    valAclXYZ[2] = (float)z/16384;*/
    // Mettre les valeurs sur +-8g
    valAclXYZ[0] = (float)x/4096;
    valAclXYZ[1] = (float)y/4096;
    valAclXYZ[2] = (float)z/4096;
}

//Mets les valeurs du gyroscope en unité de degrées
void Gyro_16bits(unsigned char *rgyroRawVals, float *valGyroXYZ)
{      
    // Initialisation des variables x,y,z sur 16 bits
    int16_t x,y,z;
    
    x = (int16_t)((uint16_t) rgyroRawVals[0] <<8 | rgyroRawVals[1]);
    y = (int16_t)((uint16_t) rgyroRawVals[2] <<8 | rgyroRawVals[3]);
    z = (int16_t)((uint16_t) rgyroRawVals[4] <<8 | rgyroRawVals[5]);

    // Mettre les valeurs sur +-250 degrées/secondes
    /*valGyroXYZ[0] = (float)x/131;
    valGyroXYZ[1] = (float)y/131;
    valGyroXYZ[2] = (float)z/131; */  
    
    // Mettre les valeurs sur +-1000 degrées/secondes
    valGyroXYZ[0] = (float)x/32.8;
    valGyroXYZ[1] = (float)y/32.8;
    valGyroXYZ[2] = (float)z/32.8;  
    
    // Ajuster le offset
    valGyroXYZ[0] = valGyroXYZ[0] - GyroErreur_XYZ[0];
    valGyroXYZ[1] = valGyroXYZ[1] - GyroErreur_XYZ[1];
    valGyroXYZ[2] = valGyroXYZ[2] - GyroErreur_XYZ[2];
}
    
void calcul_gyro_erreur()
{
    int count = 0;
    static float GYRO_XYZ[3] = {0, 0, 0};
    
    // Lire l'erreur de l'accéléromètre
    while(count != 100)
    {
        // Lecture du gyroscope
        GYRO_ReadRawValues(gyro_buffer);
        Gyro_16bits(gyro_buffer, GYRO_XYZ);  

        GyroErreur_XYZ[0] = GyroErreur_XYZ[0] + GYRO_XYZ[0];
        GyroErreur_XYZ[1] = GyroErreur_XYZ[1] + GYRO_XYZ[1];
        GyroErreur_XYZ[2] = GyroErreur_XYZ[2] + GYRO_XYZ[2];
        
        // Incrémenter le compteur
        count++;
    }
    
    GyroErreur_XYZ[0] /= count;
    GyroErreur_XYZ[1] /= count;
    GyroErreur_XYZ[2] /= count;
}

void set_GyroAngle(float *newAngleXYZ)
{
    GyroAngle_XYZ[0] = GyroAngle_XYZ[0] + newAngleXYZ[0];
    GyroAngle_XYZ[1] = GyroAngle_XYZ[1] + newAngleXYZ[1];
    GyroAngle_XYZ[2] = GyroAngle_XYZ[2] + newAngleXYZ[2];
            
    // Ajusté s'il a faite - que 0 degrée
    if (GyroAngle_XYZ[0] < 0)
    {
        while (GyroAngle_XYZ[0] < 0)
        {
            GyroAngle_XYZ[0] = GyroAngle_XYZ[0] + 360;
        }    
    }
    
    if (GyroAngle_XYZ[1] < 0)
    {
        while (GyroAngle_XYZ[1] < 0)
        {
            GyroAngle_XYZ[1] = GyroAngle_XYZ[1] + 360;
        }
    }
    
    if (GyroAngle_XYZ[2] < 0)
    {
        while (GyroAngle_XYZ[2] < 0)
        {
            GyroAngle_XYZ[2] = GyroAngle_XYZ[2] + 360;
        } 
    }
    
    // Ajusté s'il a faite + que 360 degrée
    if (GyroAngle_XYZ[0] > 360)
    {
        while (GyroAngle_XYZ[0] < 0)
        {
            GyroAngle_XYZ[0] = GyroAngle_XYZ[0] - 360;
        }
    }
    
    if (GyroAngle_XYZ[1] > 360)
    {
        while (GyroAngle_XYZ[1] < 0)
        {
            GyroAngle_XYZ[1] = GyroAngle_XYZ[1] - 360;
        }
    }
    
    if (GyroAngle_XYZ[2] > 360)
    {
        while (GyroAngle_XYZ[2] < 0)
        {
            GyroAngle_XYZ[2] = GyroAngle_XYZ[2] - 360;
        }
    }   
}