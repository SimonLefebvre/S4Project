
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
#include "time.h"
#include <stdio.h>
#include "swt.h"

int32_t BME280_compensate_T_int32(int32_t adc_T);
void thermometre();
void init_thermo();
int32_t offset(int32_t T_celsius);
 