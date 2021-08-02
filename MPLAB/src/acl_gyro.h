/******************************************************************************/
/*WAKE UP BODY acl_gyro.h                                                     */ 
/*s4 projet udes                                                              */
/*                                                                            */
/******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
//#include <sys/time.h>



#include "i2c.h"

#define ACLGYRO_I2C_ADDR    0x68
#define ACLGYRO_PWR_MGMT_1  0x6B
#define ACLGYRO_CONFIG      0x1A
#define ACLGYRO_ENABLE      0x38    // À configurer
#define ACLGYRO_Threshold   0x1F

#define ACL_CONFIG          0x1C
#define ACL_OUT_X_MSB2       0x3B //modifier , avnat c,etait de juste ACL_OUT_X_MSB

#define GYRO_CONFIG         0x1B
#define GYRO_OUT_X_MSB      0x43


#define aclgyro_buf_length 6
extern uint8_t accel_bufferMaison[aclgyro_buf_length];
extern uint8_t gyro_buffer[aclgyro_buf_length];
extern float GyroAngle_XYZ[3];

void init_AclGyro();

unsigned char ACLGYRO_SetRegister(unsigned char bAddress, unsigned char bValue);
unsigned char ACLGYRO_GetRegister(unsigned char bAddress);

void ACL_ReadRawValuesMaison(unsigned char *raclRawVals);
void GYRO_ReadRawValues(unsigned char *rgyroRawVals);

void Acl_16bits(unsigned char *raclRawVals,  float *valAclXYZ);
void Gyro_16bits(unsigned char *rgyroRawVals, float *valGyroXYZ);



void calcul_gyro_erreur();
void set_GyroAngle(float *newAngleXYZ);
