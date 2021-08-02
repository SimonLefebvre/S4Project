#include "system/common/sys_common.h"
#include "main.h"
#include "system_definitions.h"
#include "accel.h"


void __ISR(_UART_4_VECTOR, ipl1AUTO) _IntHandlerDrvUsartInstance0(void)
{
    DRV_USART_TasksTransmit(sysObj.drvUsart0);
    DRV_USART_TasksError(sysObj.drvUsart0);
    DRV_USART_TasksReceive(sysObj.drvUsart0);
}
 
  
void __ISR(_EXTERNAL_4_VECTOR, IPL1AUTO) _IntHandlerExternalInterruptInstance0(void)
{
    ACL_ReadRawValues(accel_buffer);
    ACL_GetRegister(ACL_INT_SOURCE);
    accel_data_ready = true;
    PLIB_INT_SourceFlagClear(INT_ID_0, INT_SOURCE_EXTERNAL_4);
}
 

void __ISR(_TIMER_1_VECTOR, ipl1AUTO) IntHandlerDrvTmrInstance0(void)
{
    DRV_TMR_Tasks(sysObj.drvTmr0);
}
 
void __ISR(_SPI_2_VECTOR, ipl1AUTO) _IntHandlerSPIInstance0(void)
{
    DRV_SPI_Tasks(sysObj.spiObjectIdx0);
}
/*******************************************************************************
 End of File
*/
