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
#include "uart.h"



    char msg0[80] = "";
    char msg1[80] = "";
    char msg2[80] = "";
    
int32_t t_fine;
            
 int32_t BME280_compensate_T_int32(int32_t adc_T)
{
    int32_t var1, var2, T, dig_T1, dig_T2, dig_T3;

    var1 = ((((adc_T >> 3)-(dig_T1 << 1))) * (dig_T2)) >> 11;

    var2 = (((((adc_T >> 4)-(dig_T1 << 1))) * ((adc_T >> 4) - (dig_T1)) >> 12)
                        * (dig_T3) >> 14);

    t_fine = var1 + var2;
  
    T = (t_fine*5 + 128) >> 8;

    return T;
                 
}
 
    
void init_sensor()
{
    //ctrl_measReg INIT
    unsigned char rgVals0[2], bResult0;
    rgVals0[0] = 0xF4;// register address
    rgVals0[1] = 0x05; // register value

    bResult0 = I2C_Write(0x76, rgVals0, 2, 1);
    
    UART_PutString(rgVals0);
    UART_PutString("\n");
    //configReg
    unsigned char rgVals1[2], bResult1;
    rgVals1[0] = 0xF5;// register address
    rgVals1[1] = 0xA0; // register value

   
    bResult1 = I2C_Write(0x76, rgVals1, 2, 1);
    //UART_PutString(rgVals1);
    //UART_PutString("\n");


}
 char temperature() {

    int32_t Temperature;
    unsigned char bResult0;
    unsigned char bResult1;
    unsigned char bResult2;

    I2C_Read(0xFA, &bResult0, 1);
    I2C_Read(0xFB, &bResult1, 1);
    I2C_Read(0xFC, &bResult2, 1);
//    UART_PutString(bResult0);
    //manque conversion en degrés celcius
    Temperature = BME280_compensate_T_int32(bResult0);


    sprintf(msg0, "Temp:%f C", Temperature);
    
    //UART_PutString(msg0);
    
    //sprintf(msg1, "Temp:%f C", bResult1);
    //sprintf(msg2, "Temp:%f C", bResult2);
    //LCD_DisplayClear();
    //LCD_WriteStringAtPos(msg0, 0, 0);
    UART_PutString(msg0);
   // UART_PutString("\n");
    //LCD_WriteStringAtPos(msg1, 0, 1);
     //LCD_WriteStringAtPos(msg2, 1, 0);
    
}


 
