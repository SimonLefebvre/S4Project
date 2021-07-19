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
#define CTRL_MEAS 0xF4
#define CONFIG 0xF5
#define TEMP_REG0 0xFA
#define TEMP_REG1 0xFB
#define TEMP_REG2 0xFC
#define SLAVE_ADDR 0x76
#define dig_T1_ADDR1 0x88 //LSB
#define dig_T1_ADDR2 0x89 //MSB
#define dig_T2_ADDR1 0x8A
#define dig_T2_ADDR2 0x8B
#define dig_T3_ADDR1 0x8C
#define dig_T3_ADDR2 0x8D



#include <math.h>
#include <stdio.h>
#include "pmods.h"
#include "adc.h"
#include "lcd.h"
#include "uart.h"
#include "time.h"

unsigned char msg[80];

void init_thermo() {
   
    unsigned char rgVals0[2], bResult0;
    rgVals0[0] = CTRL_MEAS;// register address
    rgVals0[1] = 0b00100011; // register value
    
    unsigned char rgVals1[2], bResult1;
    rgVals1[0] = CONFIG;// register address
    rgVals1[1] = 0b10100000; // register value
    
    
    
    
    
    bResult0 = I2C_Write(SLAVE_ADDR, rgVals0, 2, 1);//
    bResult1 = I2C_Write(SLAVE_ADDR, rgVals1, 2, 1);//
}

  //Convertion en celcius
  long signed int t_fine;
  long signed int BME280_compensate_T_int32(long signed int bResult_uint)
  {
      
      int var1, var2, T;
      var1 = ((((bResult_uint>>3)-(45311<<1)))*(767))
      >>11;
      var2 = (((((bResult_uint>>4)-(45311)*((bResult_uint>>4)-(
      45311)))>>12)*(302)))>>14;
      t_fine = var1+var2;
      T = (t_fine*5+128)>>8 ;
      
      return T;
  }
  
void thermometre() {
  
  unsigned char bResult[3];
  unsigned char bResult1[2];
  unsigned char bResult2[2];
  unsigned char bResult3[2];
  unsigned char AddrRegBuffer[1] = {TEMP_REG0};
  unsigned char AddrRegBuffer1[1] = {dig_T1_ADDR2};
  unsigned char AddrRegBuffer2[1] = {dig_T2_ADDR2};
  unsigned char AddrRegBuffer3[1] = {dig_T3_ADDR2};
  unsigned char returnWrite;
  unsigned char returnRead;
  unsigned char returnWrite1;
  unsigned char returnRead1;
  unsigned char returnWrite2;
  unsigned char returnRead2;
  unsigned char returnWrite3;
  unsigned char returnRead3;
  
  returnWrite = I2C_Write(SLAVE_ADDR, AddrRegBuffer, 1, 0);
  returnRead = I2C_Read(SLAVE_ADDR, bResult, 2);
  
  returnWrite1 = I2C_Write(SLAVE_ADDR, AddrRegBuffer1, 1, 0);
  returnRead1 = I2C_Read(SLAVE_ADDR, bResult1, 2); //b8/b0 ff 47359/45311
 
  returnWrite2 = I2C_Write(SLAVE_ADDR, AddrRegBuffer2, 1, 0);
  returnRead2 = I2C_Read(SLAVE_ADDR, bResult2, 2); //2 ff 767
 
  returnWrite3 = I2C_Write(SLAVE_ADDR, AddrRegBuffer3, 1, 0);
  returnRead3 = I2C_Read(SLAVE_ADDR, bResult3, 2); //1 30/2e 304/302
  
  //I2C_Read(SLAVE_ADDR, &bResult1, 1);
  //I2C_Read(SLAVE_ADDR, &bResult2, 1);
  
  long signed int  bResult_32b = bResult[2] | (bResult[1]<<8) | (bResult[0]<<16);
  //uint16_t dig_T1 = bResult1[0] | (bResult1[1]<<8);
  //uint16_t dig_T2 = bResult2[0] | (bResult2[1]<<8);
  //uint16_t dig_T3 = bResult3[0] | (bResult3[1]<<8);
  
  
   long signed int T_32 = BME280_compensate_T_int32(bResult_32b);
  
   long signed int b1 = T_32 & 0xff;
   long signed int b2 = (T_32 >> 8) & 0xff;
  // long signed int b3 = (T_32 >> 16) & 0xff;
   //long signed int b4 = (T_32 >> 24);
   
   if (b1 > 0x63)
       b2 = b2 + 1;
   
   else
       b2 = b2;
   
   
           
   
          
  sprintf(msg," T = %d,%d", b2, b1);
  LCD_WriteStringAtPos(msg, 0, 0);
  
}

