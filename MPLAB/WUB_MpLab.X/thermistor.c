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

/* TODO:  Include other files here if needed. */


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: File Scope or Global Data                                         */
/* ************************************************************************** */
/* ************************************************************************** */

/*  A brief description of a section can be given directly below the section
    banner.
 */

/* ************************************************************************** */
/** Descriptive Data Item Name

  @Summary
    Brief one-line summary of the data item.
    
  @Description
    Full description, explaining the purpose and usage of data item.
    <p>
    Additional description in consecutive paragraphs separated by HTML 
    paragraph breaks, as necessary.
    <p>
    Type "JavaDoc" in the "How Do I?" IDE toolbar for more information on tags.
    
  @Remarks
    Any additional remarks
 */


#include <math.h>
#include <stdio.h>
#include "pmods.h"
#include "lcd.h"
#include "i2c.h"



//int global_data;
//
//double tension;
//int Vo;
//float R1 = 1; //thermistor = 1 ohm
//float logR2, R2, T;
//float c1 = 1.009249522e-03, c2 = 2.378405444e-04, c3 = 2.019202697e-07;
char msg0[80] = "";
char msg1[80] = "";
char msg2[80] = "";
//double analogread() {
//   
// 
//    tension = ADC_AnalogRead(16);
//
//    sprintf(msg, "V:%f", tension);
//    LCD_WriteStringAtPos(msg, 0, 0);
//    return tension;
//
//}

void init_sensor()
{
    
    
    //ctrl_measReg INIT
    unsigned char rgVals0[2], bResult0;
    rgVals0[0] = 0xF4;// register address
    rgVals0[1] = 0x05; // register value
          
    bResult0 = I2C_Write(0x76, rgVals0, 2, 1);

    
    //configReg
    unsigned char rgVals1[2], bResult1;
    rgVals1[0] = 0xF5;// register address
    rgVals1[1] = 0xA0; // register value
          
    bResult1 = I2C_Write(0x76, rgVals1, 2, 1);
   
  
}

void temperature() {
   
//    LCD_Init();
//    Vo = 0;
//    Vo = analogread();
//    LCD_DisplayClear();
//    R2 = R1 * (1023.0 / (float)Vo - 1.0);
//    logR2 = log(R2);
//    T = (1.0 / (c1 + c2*logR2 + c3*logR2*logR2*logR2));
//    T = T - 273.15;
//    T = (T * 9.0)/ 5.0 + 32.0; 
    
  
    unsigned char bResult0;
    unsigned char bResult1;
    unsigned char bResult2;
    
    I2C_Read(0xFA, &bResult0, 1);
    I2C_Read(0xFB, &bResult1, 1);
    I2C_Read(0xFC, &bResult2, 1);
    
   //manque conversion en degrés celcius
    
    sprintf(msg0, "Temp:%f C", bResult0);
    sprintf(msg1, "Temp:%f C", bResult1);
    sprintf(msg2, "Temp:%f C", bResult2);
    //LCD_DisplayClear();
    LCD_WriteStringAtPos(msg0, 0, 0);
    LCD_WriteStringAtPos(msg1, 0, 1);
    LCD_WriteStringAtPos(msg2, 1, 0);
}

  signed int32_t t_fine;
    signed int32_t BME280_compensate_T_int32(signed int32_t adc_T)
    {
    
    
    
    
    }
    


