#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/S4e_Projet.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/S4e_Projet.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/led.c ../src/ssd.c ../src/accel.c ../src/i2c.c ../src/lcd.c ../src/acl_gyro.c ../src/RTC.c ../src/thermistor.c ../src/swt.c ../src/btn.c ../src/rgbled.c ../src/system_config/default/framework/driver/encx24j600/bus/spi/drv_encx24j600_spi_bus.c ../src/system_config/default/framework/driver/encx24j600/closed_state/drv_encx24j600_closed_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_initialization_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_configure_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_detect_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_reset_state.c ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_tx_packet.c ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_rx_packet.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_running_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_change_duplex_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_int_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_status_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_tx_status_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_reset_rx_state.c ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_api.c ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_main_state.c ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_utils.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/default/framework/driver/spi/src/dynamic/drv_spi.c ../src/system_config/default/framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../src/system_config/default/framework/driver/tmr/src/dynamic/drv_tmr.c ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static_buffer_queue.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static_read_write.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/default/framework/system/command/src/sys_command.c ../src/system_config/default/framework/system/console/src/sys_console.c ../src/system_config/default/framework/system/console/src/sys_console_uart.c ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/default/framework/system/int/src/sys_int_pic32.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/framework/system/random/src/sys_random.c ../src/system_config/default/framework/system/reset/src/sys_reset.c ../src/system_config/default/framework/system/tmr/src/sys_tmr.c ../src/system_config/default/framework/tcpip/src/common/helpers.c ../src/system_config/default/framework/tcpip/src/ipv4.c ../src/system_config/default/framework/tcpip/src/udp.c ../src/system_config/default/framework/tcpip/src/tcpip_heap_alloc.c ../src/system_config/default/framework/tcpip/src/tcpip_heap_internal.c ../src/system_config/default/framework/tcpip/src/arp.c ../src/system_config/default/framework/tcpip/src/dns.c ../src/system_config/default/framework/tcpip/src/hash_fnv.c ../src/system_config/default/framework/tcpip/src/oahash.c ../src/system_config/default/framework/tcpip/src/tcpip_helpers.c ../src/system_config/default/framework/tcpip/src/tcpip_helper_c32.S ../src/system_config/default/framework/tcpip/src/tcpip_manager.c ../src/system_config/default/framework/tcpip/src/tcpip_notify.c ../src/system_config/default/framework/tcpip/src/tcpip_packet.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_tasks.c ../src/app_commands.c ../src/UDP_app.c ../src/main.c ../src/User01.c ../src/Afficheur.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/led.o ${OBJECTDIR}/_ext/1360937237/ssd.o ${OBJECTDIR}/_ext/1360937237/accel.o ${OBJECTDIR}/_ext/1360937237/i2c.o ${OBJECTDIR}/_ext/1360937237/lcd.o ${OBJECTDIR}/_ext/1360937237/acl_gyro.o ${OBJECTDIR}/_ext/1360937237/RTC.o ${OBJECTDIR}/_ext/1360937237/thermistor.o ${OBJECTDIR}/_ext/1360937237/swt.o ${OBJECTDIR}/_ext/1360937237/btn.o ${OBJECTDIR}/_ext/1360937237/rgbled.o ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/915312864/drv_spi.o ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/1298913485/drv_tmr.o ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o ${OBJECTDIR}/_ext/327000265/drv_usart_static.o ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/2001008086/sys_command.o ${OBJECTDIR}/_ext/1544295906/sys_console.o ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/327917790/sys_random.o ${OBJECTDIR}/_ext/68765530/sys_reset.o ${OBJECTDIR}/_ext/1417409628/sys_tmr.o ${OBJECTDIR}/_ext/1881663949/helpers.o ${OBJECTDIR}/_ext/26143033/ipv4.o ${OBJECTDIR}/_ext/26143033/udp.o ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o ${OBJECTDIR}/_ext/26143033/arp.o ${OBJECTDIR}/_ext/26143033/dns.o ${OBJECTDIR}/_ext/26143033/hash_fnv.o ${OBJECTDIR}/_ext/26143033/oahash.o ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o ${OBJECTDIR}/_ext/26143033/tcpip_manager.o ${OBJECTDIR}/_ext/26143033/tcpip_notify.o ${OBJECTDIR}/_ext/26143033/tcpip_packet.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app_commands.o ${OBJECTDIR}/_ext/1360937237/UDP_app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/User01.o ${OBJECTDIR}/_ext/1360937237/Afficheur.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/led.o.d ${OBJECTDIR}/_ext/1360937237/ssd.o.d ${OBJECTDIR}/_ext/1360937237/accel.o.d ${OBJECTDIR}/_ext/1360937237/i2c.o.d ${OBJECTDIR}/_ext/1360937237/lcd.o.d ${OBJECTDIR}/_ext/1360937237/acl_gyro.o.d ${OBJECTDIR}/_ext/1360937237/RTC.o.d ${OBJECTDIR}/_ext/1360937237/thermistor.o.d ${OBJECTDIR}/_ext/1360937237/swt.o.d ${OBJECTDIR}/_ext/1360937237/btn.o.d ${OBJECTDIR}/_ext/1360937237/rgbled.o.d ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o.d ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o.d ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o.d ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o.d ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o.d ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o.d ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o.d ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o.d ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o.d ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o.d ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o.d ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o.d ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o.d ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o.d ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o.d ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o.d ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o.d ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d ${OBJECTDIR}/_ext/915312864/drv_spi.o.d ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o.d ${OBJECTDIR}/_ext/1298913485/drv_tmr.o.d ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d ${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o.d ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o.d ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d ${OBJECTDIR}/_ext/2001008086/sys_command.o.d ${OBJECTDIR}/_ext/1544295906/sys_console.o.d ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o.d ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d ${OBJECTDIR}/_ext/327917790/sys_random.o.d ${OBJECTDIR}/_ext/68765530/sys_reset.o.d ${OBJECTDIR}/_ext/1417409628/sys_tmr.o.d ${OBJECTDIR}/_ext/1881663949/helpers.o.d ${OBJECTDIR}/_ext/26143033/ipv4.o.d ${OBJECTDIR}/_ext/26143033/udp.o.d ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o.d ${OBJECTDIR}/_ext/26143033/arp.o.d ${OBJECTDIR}/_ext/26143033/dns.o.d ${OBJECTDIR}/_ext/26143033/hash_fnv.o.d ${OBJECTDIR}/_ext/26143033/oahash.o.d ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o.d ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/26143033/tcpip_manager.o.d ${OBJECTDIR}/_ext/26143033/tcpip_notify.o.d ${OBJECTDIR}/_ext/26143033/tcpip_packet.o.d ${OBJECTDIR}/_ext/1688732426/system_init.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app_commands.o.d ${OBJECTDIR}/_ext/1360937237/UDP_app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/User01.o.d ${OBJECTDIR}/_ext/1360937237/Afficheur.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/led.o ${OBJECTDIR}/_ext/1360937237/ssd.o ${OBJECTDIR}/_ext/1360937237/accel.o ${OBJECTDIR}/_ext/1360937237/i2c.o ${OBJECTDIR}/_ext/1360937237/lcd.o ${OBJECTDIR}/_ext/1360937237/acl_gyro.o ${OBJECTDIR}/_ext/1360937237/RTC.o ${OBJECTDIR}/_ext/1360937237/thermistor.o ${OBJECTDIR}/_ext/1360937237/swt.o ${OBJECTDIR}/_ext/1360937237/btn.o ${OBJECTDIR}/_ext/1360937237/rgbled.o ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/915312864/drv_spi.o ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/1298913485/drv_tmr.o ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o ${OBJECTDIR}/_ext/327000265/drv_usart_static.o ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/2001008086/sys_command.o ${OBJECTDIR}/_ext/1544295906/sys_console.o ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/327917790/sys_random.o ${OBJECTDIR}/_ext/68765530/sys_reset.o ${OBJECTDIR}/_ext/1417409628/sys_tmr.o ${OBJECTDIR}/_ext/1881663949/helpers.o ${OBJECTDIR}/_ext/26143033/ipv4.o ${OBJECTDIR}/_ext/26143033/udp.o ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o ${OBJECTDIR}/_ext/26143033/arp.o ${OBJECTDIR}/_ext/26143033/dns.o ${OBJECTDIR}/_ext/26143033/hash_fnv.o ${OBJECTDIR}/_ext/26143033/oahash.o ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o ${OBJECTDIR}/_ext/26143033/tcpip_manager.o ${OBJECTDIR}/_ext/26143033/tcpip_notify.o ${OBJECTDIR}/_ext/26143033/tcpip_packet.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app_commands.o ${OBJECTDIR}/_ext/1360937237/UDP_app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/User01.o ${OBJECTDIR}/_ext/1360937237/Afficheur.o

# Source Files
SOURCEFILES=../src/led.c ../src/ssd.c ../src/accel.c ../src/i2c.c ../src/lcd.c ../src/acl_gyro.c ../src/RTC.c ../src/thermistor.c ../src/swt.c ../src/btn.c ../src/rgbled.c ../src/system_config/default/framework/driver/encx24j600/bus/spi/drv_encx24j600_spi_bus.c ../src/system_config/default/framework/driver/encx24j600/closed_state/drv_encx24j600_closed_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_initialization_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_configure_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_detect_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_reset_state.c ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_tx_packet.c ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_rx_packet.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_running_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_change_duplex_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_int_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_status_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_tx_status_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_reset_rx_state.c ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_api.c ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_main_state.c ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_utils.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/default/framework/driver/spi/src/dynamic/drv_spi.c ../src/system_config/default/framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../src/system_config/default/framework/driver/tmr/src/dynamic/drv_tmr.c ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static_buffer_queue.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static_read_write.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/default/framework/system/command/src/sys_command.c ../src/system_config/default/framework/system/console/src/sys_console.c ../src/system_config/default/framework/system/console/src/sys_console_uart.c ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/default/framework/system/int/src/sys_int_pic32.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/framework/system/random/src/sys_random.c ../src/system_config/default/framework/system/reset/src/sys_reset.c ../src/system_config/default/framework/system/tmr/src/sys_tmr.c ../src/system_config/default/framework/tcpip/src/common/helpers.c ../src/system_config/default/framework/tcpip/src/ipv4.c ../src/system_config/default/framework/tcpip/src/udp.c ../src/system_config/default/framework/tcpip/src/tcpip_heap_alloc.c ../src/system_config/default/framework/tcpip/src/tcpip_heap_internal.c ../src/system_config/default/framework/tcpip/src/arp.c ../src/system_config/default/framework/tcpip/src/dns.c ../src/system_config/default/framework/tcpip/src/hash_fnv.c ../src/system_config/default/framework/tcpip/src/oahash.c ../src/system_config/default/framework/tcpip/src/tcpip_helpers.c ../src/system_config/default/framework/tcpip/src/tcpip_helper_c32.S ../src/system_config/default/framework/tcpip/src/tcpip_manager.c ../src/system_config/default/framework/tcpip/src/tcpip_notify.c ../src/system_config/default/framework/tcpip/src/tcpip_packet.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_tasks.c ../src/app_commands.c ../src/UDP_app.c ../src/main.c ../src/User01.c ../src/Afficheur.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/S4e_Projet.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX370F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o: ../src/system_config/default/framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/default/7c35a1eec3d6bf6182c665bb12ac6ff3f42c9e08 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o ../src/system_config/default/framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 
	@${FIXDEPS} "${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o: ../src/system_config/default/framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/default/9da7b72b5db85c3d3569d6362771d4d86ec63ce5 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o ../src/system_config/default/framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.asm.d",--gdwarf-2 
	@${FIXDEPS} "${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/led.o: ../src/led.c  .generated_files/flags/default/df3444431489768800b0150130e9bb618181f50e .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/led.o.d" -o ${OBJECTDIR}/_ext/1360937237/led.o ../src/led.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/ssd.o: ../src/ssd.c  .generated_files/flags/default/c9e4fe94628c6724e3f3e2a895a30a98788d8fc0 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ssd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ssd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ssd.o.d" -o ${OBJECTDIR}/_ext/1360937237/ssd.o ../src/ssd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/accel.o: ../src/accel.c  .generated_files/flags/default/680956b6b1d484ef4482ac9b427545914c45e23a .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/accel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/accel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/accel.o.d" -o ${OBJECTDIR}/_ext/1360937237/accel.o ../src/accel.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/i2c.o: ../src/i2c.c  .generated_files/flags/default/792fca9b9250377c2e74d67b50ccb59ba1489913 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c.o ../src/i2c.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/lcd.o: ../src/lcd.c  .generated_files/flags/default/6273f02c1b965ca6a5a3a8969d8cadcb00f33214 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/lcd.o.d" -o ${OBJECTDIR}/_ext/1360937237/lcd.o ../src/lcd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/acl_gyro.o: ../src/acl_gyro.c  .generated_files/flags/default/3be991169a8383580fb20d84c5d434edb15f31a5 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/acl_gyro.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/acl_gyro.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/acl_gyro.o.d" -o ${OBJECTDIR}/_ext/1360937237/acl_gyro.o ../src/acl_gyro.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/RTC.o: ../src/RTC.c  .generated_files/flags/default/b919ea045ba46dfbb1805c3d592a5f9607819b3 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/RTC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/RTC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/RTC.o.d" -o ${OBJECTDIR}/_ext/1360937237/RTC.o ../src/RTC.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/thermistor.o: ../src/thermistor.c  .generated_files/flags/default/899f591e833c221955c8e8bf0f67763fd3ad5fe7 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/thermistor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/thermistor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/thermistor.o.d" -o ${OBJECTDIR}/_ext/1360937237/thermistor.o ../src/thermistor.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/swt.o: ../src/swt.c  .generated_files/flags/default/594d0c9461b26e10043aa77333e90dc161f0312c .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/swt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/swt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/swt.o.d" -o ${OBJECTDIR}/_ext/1360937237/swt.o ../src/swt.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/btn.o: ../src/btn.c  .generated_files/flags/default/6e0f149f807f28cb2387a130f0d4edf852aba8f .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/btn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/btn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/btn.o.d" -o ${OBJECTDIR}/_ext/1360937237/btn.o ../src/btn.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/rgbled.o: ../src/rgbled.c  .generated_files/flags/default/5ced0b9acd89442d017bf4dad854c39660818cff .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rgbled.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rgbled.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/rgbled.o.d" -o ${OBJECTDIR}/_ext/1360937237/rgbled.o ../src/rgbled.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o: ../src/system_config/default/framework/driver/encx24j600/bus/spi/drv_encx24j600_spi_bus.c  .generated_files/flags/default/50dfc0c72abe8b5eb6c5ef489449427f7225dd15 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/996065237" 
	@${RM} ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o.d 
	@${RM} ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o.d" -o ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o ../src/system_config/default/framework/driver/encx24j600/bus/spi/drv_encx24j600_spi_bus.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o: ../src/system_config/default/framework/driver/encx24j600/closed_state/drv_encx24j600_closed_state.c  .generated_files/flags/default/e86d6b29b17c7118096259f21f613550c500bcfd .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1600828880" 
	@${RM} ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o.d" -o ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o ../src/system_config/default/framework/driver/encx24j600/closed_state/drv_encx24j600_closed_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_initialization_state.c  .generated_files/flags/default/500cb883be243b44a616270eeba4668b821e1073 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_initialization_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_configure_state.c  .generated_files/flags/default/ea3fc5a1172eff999e95a6f81efe4a18cd9f7676 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_configure_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_detect_state.c  .generated_files/flags/default/86990926be052c67a992b7e627e9ff8e1174368f .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_detect_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_reset_state.c  .generated_files/flags/default/a1b08c43f8a7bdb4e59c7209e5409fb3d48db30e .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_reset_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o: ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_tx_packet.c  .generated_files/flags/default/8c04d6c3d2c2a4f5e76ca71ba25acacf47b6bc78 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1728422854" 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o.d" -o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_tx_packet.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o: ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_rx_packet.c  .generated_files/flags/default/e8f17a40bc6cec2f9f198656f5261e4c23eb081e .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1728422854" 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o.d" -o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_rx_packet.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_running_state.c  .generated_files/flags/default/862d89090e209713cdc68a35fd64e4d9294457f3 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_running_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_change_duplex_state.c  .generated_files/flags/default/66f55c58017144dc487a6c7078fb65fb3a3a7917 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_change_duplex_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_int_state.c  .generated_files/flags/default/3dc786196f30fb1d5e119d6543c5cf1882864961 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_int_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_status_state.c  .generated_files/flags/default/e8e4091d0dc3344241a16d495ac1516c6454c88b .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_status_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_tx_status_state.c  .generated_files/flags/default/2e56e4e705c1cbb9c1a2b7ffb1fba997324ea368 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_tx_status_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_reset_rx_state.c  .generated_files/flags/default/73adab3cf67b430258500d7f81d2124c7a24ba47 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_reset_rx_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o: ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_api.c  .generated_files/flags/default/f01b8f6a6e1b3abeefd9997c9fd689cbd083caa3 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/820865379" 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o.d" -o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_api.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o: ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_main_state.c  .generated_files/flags/default/e907203e746531440b6292e3be4d901d1ab7b33a .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/820865379" 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o.d" -o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_main_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o: ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_utils.c  .generated_files/flags/default/9333f07462e6ccdba2cf4634ed4f4092c2537280 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/820865379" 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o.d" -o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_utils.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c  .generated_files/flags/default/e94d8e341d430a74f0b17e45aefc9b7090461145 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/977502197/drv_spi_api.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c  .generated_files/flags/default/5ff6e67ab7a6a3cd97990e3563d1d4e5a4070cdd .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  .generated_files/flags/default/b6835d21fb53f63fff3774640eca72d2069e6c80 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/915312864/drv_spi.o: ../src/system_config/default/framework/driver/spi/src/dynamic/drv_spi.c  .generated_files/flags/default/f6e217febeb5ce66893f03099bc8286b225fd058 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/915312864" 
	@${RM} ${OBJECTDIR}/_ext/915312864/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/915312864/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/915312864/drv_spi.o.d" -o ${OBJECTDIR}/_ext/915312864/drv_spi.o ../src/system_config/default/framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o: ../src/system_config/default/framework/driver/spi/src/drv_spi_sys_queue_fifo.c  .generated_files/flags/default/5278d57f56c852b26798f2633205c2a3243f98b4 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/2077795248" 
	@${RM} ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o ../src/system_config/default/framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1298913485/drv_tmr.o: ../src/system_config/default/framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/default/fa6afb251849d13c1230bf3d85cd2cddc8f67c28 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1298913485" 
	@${RM} ${OBJECTDIR}/_ext/1298913485/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1298913485/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1298913485/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1298913485/drv_tmr.o ../src/system_config/default/framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c  .generated_files/flags/default/e4bf26a58bad1846cee3cffd05b188ae581afdd6 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327000265/drv_usart_static.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c  .generated_files/flags/default/12f675306954e987766e2935cf908a0d5e496f78 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static_buffer_queue.c  .generated_files/flags/default/2a0d843dc0a26132b687e399a6899e7cae47c12d .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static_buffer_queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static_read_write.c  .generated_files/flags/default/ac8661ef65455e7278b98b612caef52542593ac0 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static_read_write.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/flags/default/787107e5aad2383429ce5f78c74fa2e169cbc579 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2001008086/sys_command.o: ../src/system_config/default/framework/system/command/src/sys_command.c  .generated_files/flags/default/70d23d9a43051986b932aea2c707bb686c1d876d .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/2001008086" 
	@${RM} ${OBJECTDIR}/_ext/2001008086/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001008086/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2001008086/sys_command.o.d" -o ${OBJECTDIR}/_ext/2001008086/sys_command.o ../src/system_config/default/framework/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1544295906/sys_console.o: ../src/system_config/default/framework/system/console/src/sys_console.c  .generated_files/flags/default/705dab54767800cdcda7148f49e3a75e8ddd3688 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1544295906" 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544295906/sys_console.o.d" -o ${OBJECTDIR}/_ext/1544295906/sys_console.o ../src/system_config/default/framework/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1544295906/sys_console_uart.o: ../src/system_config/default/framework/system/console/src/sys_console_uart.c  .generated_files/flags/default/788d250bb96505d1af8d206178dd687cb0210e8b .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1544295906" 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544295906/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o ../src/system_config/default/framework/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/default/2ba92a098f947e037377cbab5c3b6f46f7cdf0f8 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/flags/default/6de6118f93c6cf71c918407b4b98f854c2cdaedd .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o: ../src/system_config/default/framework/system/int/src/sys_int_pic32.c  .generated_files/flags/default/dda17941a2d72ab8bb2f27147c7bcd3d8a621e98 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1735427962" 
	@${RM} ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o ../src/system_config/default/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/default/e771790cd8d80e17bd37f72a421cf170982011a8 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327917790/sys_random.o: ../src/system_config/default/framework/system/random/src/sys_random.c  .generated_files/flags/default/57ca5ab823c254265ef103c7bc436c927c3ef569 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/327917790" 
	@${RM} ${OBJECTDIR}/_ext/327917790/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/327917790/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327917790/sys_random.o.d" -o ${OBJECTDIR}/_ext/327917790/sys_random.o ../src/system_config/default/framework/system/random/src/sys_random.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/68765530/sys_reset.o: ../src/system_config/default/framework/system/reset/src/sys_reset.c  .generated_files/flags/default/f85523a215beee45595094a75015ebdd1469ee5b .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/68765530" 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68765530/sys_reset.o.d" -o ${OBJECTDIR}/_ext/68765530/sys_reset.o ../src/system_config/default/framework/system/reset/src/sys_reset.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1417409628/sys_tmr.o: ../src/system_config/default/framework/system/tmr/src/sys_tmr.c  .generated_files/flags/default/cf7957f424f22a73af51471b9c26b090ef093a3f .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1417409628" 
	@${RM} ${OBJECTDIR}/_ext/1417409628/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1417409628/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1417409628/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1417409628/sys_tmr.o ../src/system_config/default/framework/system/tmr/src/sys_tmr.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1881663949/helpers.o: ../src/system_config/default/framework/tcpip/src/common/helpers.c  .generated_files/flags/default/558a9eb8e3848996f071aa195dd6b1a0921a6628 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1881663949" 
	@${RM} ${OBJECTDIR}/_ext/1881663949/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881663949/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881663949/helpers.o.d" -o ${OBJECTDIR}/_ext/1881663949/helpers.o ../src/system_config/default/framework/tcpip/src/common/helpers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/ipv4.o: ../src/system_config/default/framework/tcpip/src/ipv4.c  .generated_files/flags/default/146230b6fb0f6d32f61f10f118adb0e9c9a8b460 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/ipv4.o.d" -o ${OBJECTDIR}/_ext/26143033/ipv4.o ../src/system_config/default/framework/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/udp.o: ../src/system_config/default/framework/tcpip/src/udp.c  .generated_files/flags/default/7423e2f7110285883bb6c8ea8a14dbb5d888267f .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/udp.o.d" -o ${OBJECTDIR}/_ext/26143033/udp.o ../src/system_config/default/framework/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o: ../src/system_config/default/framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/default/7117afd8deb70152ac4ff4a91585357d0b719483 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o ../src/system_config/default/framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o: ../src/system_config/default/framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/default/55435f767293ee1f7ac26d853b1e495316bb1391 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o ../src/system_config/default/framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/arp.o: ../src/system_config/default/framework/tcpip/src/arp.c  .generated_files/flags/default/6e9bd42267b91eb0f5ef451d26819a6f9b047ec6 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/arp.o.d" -o ${OBJECTDIR}/_ext/26143033/arp.o ../src/system_config/default/framework/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/dns.o: ../src/system_config/default/framework/tcpip/src/dns.c  .generated_files/flags/default/8e84c6ffee3816cb48638f94a2336ff240178be8 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/dns.o.d" -o ${OBJECTDIR}/_ext/26143033/dns.o ../src/system_config/default/framework/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/hash_fnv.o: ../src/system_config/default/framework/tcpip/src/hash_fnv.c  .generated_files/flags/default/c8f9ed09a3f4115c8824b0d95019640057aa9fa5 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/26143033/hash_fnv.o ../src/system_config/default/framework/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/oahash.o: ../src/system_config/default/framework/tcpip/src/oahash.c  .generated_files/flags/default/55e0f6c02fe41144aaf6e7e54a565cb5b47f44ae .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/oahash.o.d" -o ${OBJECTDIR}/_ext/26143033/oahash.o ../src/system_config/default/framework/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_helpers.o: ../src/system_config/default/framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/default/b1be030c399ed8660419e23c8898597c18d3beb8 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o ../src/system_config/default/framework/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_manager.o: ../src/system_config/default/framework/tcpip/src/tcpip_manager.c  .generated_files/flags/default/78605d3efc83f1cfedf87f95d4fee738194cc52f .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_manager.o ../src/system_config/default/framework/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_notify.o: ../src/system_config/default/framework/tcpip/src/tcpip_notify.c  .generated_files/flags/default/b81dbce64c01e2e3001d7d72662b408c2390b994 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_notify.o ../src/system_config/default/framework/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_packet.o: ../src/system_config/default/framework/tcpip/src/tcpip_packet.c  .generated_files/flags/default/95d9948231534d49e82fd60b2a9a513220ea1382 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_packet.o ../src/system_config/default/framework/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/flags/default/24c4e4c3300e401924949685df042277454675 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/flags/default/edd0cfa9f67c06ab2402c9ca35acbd3bfaf06d65 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/flags/default/4b782254158d0475ef751ea9f0ddcf3b80242e62 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/app_commands.o: ../src/app_commands.c  .generated_files/flags/default/b9b48e86064c4367b98d82c23a75eddff78bac12 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_commands.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_commands.o ../src/app_commands.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/UDP_app.o: ../src/UDP_app.c  .generated_files/flags/default/827d11007bfb739e0ea2e9aaf7f91341b4a46f9a .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UDP_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UDP_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/UDP_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/UDP_app.o ../src/UDP_app.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/7fa4bd6fde4317040a5b53704f0ea5abb552fd2e .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/User01.o: ../src/User01.c  .generated_files/flags/default/5c1f9ae191d17580204201eb69bced4247fb3eb7 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/User01.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/User01.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/User01.o.d" -o ${OBJECTDIR}/_ext/1360937237/User01.o ../src/User01.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/Afficheur.o: ../src/Afficheur.c  .generated_files/flags/default/faa1f74044d62592081cf80bc002dc3a95fad723 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Afficheur.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Afficheur.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Afficheur.o.d" -o ${OBJECTDIR}/_ext/1360937237/Afficheur.o ../src/Afficheur.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/1360937237/led.o: ../src/led.c  .generated_files/flags/default/f5f61f247d0f48b8b08d3274beddea308aadc489 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/led.o.d" -o ${OBJECTDIR}/_ext/1360937237/led.o ../src/led.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/ssd.o: ../src/ssd.c  .generated_files/flags/default/cf1f7d391d9a0fc2c7060ba93efcd6f42077fa76 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ssd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ssd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ssd.o.d" -o ${OBJECTDIR}/_ext/1360937237/ssd.o ../src/ssd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/accel.o: ../src/accel.c  .generated_files/flags/default/c65fc9f6507ff2e74000ac0ea6c0b3040e492efb .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/accel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/accel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/accel.o.d" -o ${OBJECTDIR}/_ext/1360937237/accel.o ../src/accel.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/i2c.o: ../src/i2c.c  .generated_files/flags/default/7244e3094e6eacc6494f31974e05dd0df19fd395 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c.o ../src/i2c.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/lcd.o: ../src/lcd.c  .generated_files/flags/default/65e7608a3aaac0bc1fda3bcbb19932856699992e .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/lcd.o.d" -o ${OBJECTDIR}/_ext/1360937237/lcd.o ../src/lcd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/acl_gyro.o: ../src/acl_gyro.c  .generated_files/flags/default/42845a5495b982a92998f902bdbfffc8eb9c9a7 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/acl_gyro.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/acl_gyro.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/acl_gyro.o.d" -o ${OBJECTDIR}/_ext/1360937237/acl_gyro.o ../src/acl_gyro.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/RTC.o: ../src/RTC.c  .generated_files/flags/default/36dbea577a89c30d9cbb35a88870ab09f5c65d0b .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/RTC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/RTC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/RTC.o.d" -o ${OBJECTDIR}/_ext/1360937237/RTC.o ../src/RTC.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/thermistor.o: ../src/thermistor.c  .generated_files/flags/default/ac64cbdcfab92f705ecfb5ea92fbb47eff4c2357 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/thermistor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/thermistor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/thermistor.o.d" -o ${OBJECTDIR}/_ext/1360937237/thermistor.o ../src/thermistor.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/swt.o: ../src/swt.c  .generated_files/flags/default/22fcd512d303f1acb87cd04ce50fc9f589904524 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/swt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/swt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/swt.o.d" -o ${OBJECTDIR}/_ext/1360937237/swt.o ../src/swt.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/btn.o: ../src/btn.c  .generated_files/flags/default/3ac8e338c898bddeb09d8f5efffbb3e250692712 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/btn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/btn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/btn.o.d" -o ${OBJECTDIR}/_ext/1360937237/btn.o ../src/btn.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/rgbled.o: ../src/rgbled.c  .generated_files/flags/default/fb7929565e801909982c8c3c3560a274148035e0 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rgbled.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rgbled.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/rgbled.o.d" -o ${OBJECTDIR}/_ext/1360937237/rgbled.o ../src/rgbled.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o: ../src/system_config/default/framework/driver/encx24j600/bus/spi/drv_encx24j600_spi_bus.c  .generated_files/flags/default/1a59f4f2e2c37b0e4d61161bea269c7116436afb .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/996065237" 
	@${RM} ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o.d 
	@${RM} ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o.d" -o ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o ../src/system_config/default/framework/driver/encx24j600/bus/spi/drv_encx24j600_spi_bus.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o: ../src/system_config/default/framework/driver/encx24j600/closed_state/drv_encx24j600_closed_state.c  .generated_files/flags/default/2d28cdfd64f13235a2dca3ec4a6773585a8adad4 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1600828880" 
	@${RM} ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o.d" -o ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o ../src/system_config/default/framework/driver/encx24j600/closed_state/drv_encx24j600_closed_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_initialization_state.c  .generated_files/flags/default/a3487bb1596e712a4643594798a9d69052579167 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_initialization_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_configure_state.c  .generated_files/flags/default/900ee258817c2ab8b30694a81a4ba16e6121e361 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_configure_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_detect_state.c  .generated_files/flags/default/8ada866dd5e1d1cd6a2f5691d7cdbe7c1099cf8f .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_detect_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_reset_state.c  .generated_files/flags/default/db195b2a4da1b82ac3ce6ffb0dcee9fb7f70b9f4 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_reset_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o: ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_tx_packet.c  .generated_files/flags/default/d12fa51809ca07872864c3453791e7199175e798 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1728422854" 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o.d" -o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_tx_packet.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o: ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_rx_packet.c  .generated_files/flags/default/5e3657fb37d75f63d284d7a9cd35a4e518448f30 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1728422854" 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o.d" -o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_rx_packet.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_running_state.c  .generated_files/flags/default/26175f0e77d92a7c7821be7489a59501e4363bfe .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_running_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_change_duplex_state.c  .generated_files/flags/default/c1aab256a0dd75202924490c9fac9786d9d3936a .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_change_duplex_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_int_state.c  .generated_files/flags/default/1d33cbdc7913322b01a78798a7b41e61c3af274a .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_int_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_status_state.c  .generated_files/flags/default/da8697d531205538f4c9449f2bc6a802b2ce8201 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_status_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_tx_status_state.c  .generated_files/flags/default/af1ab351929cf60f36d29b603174407330040e5b .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_tx_status_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_reset_rx_state.c  .generated_files/flags/default/67994203beace5790bc44dd2e7d0524675e6f045 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_reset_rx_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o: ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_api.c  .generated_files/flags/default/99d48389d06a0055b6a8fecce95b1f31930d4e3e .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/820865379" 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o.d" -o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_api.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o: ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_main_state.c  .generated_files/flags/default/3ba62bc4288ea827b5c8fc78722dcbc2ed72a961 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/820865379" 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o.d" -o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_main_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o: ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_utils.c  .generated_files/flags/default/5c6a6f26f0e9eb1998a3f617c99f01f0a65c344b .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/820865379" 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o.d" -o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_utils.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c  .generated_files/flags/default/3cd9ebd86c6c4d07ea52352d26bc6e90de9fd4e8 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/977502197/drv_spi_api.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c  .generated_files/flags/default/55a09211381787c2f431253889e54ce8595d2266 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  .generated_files/flags/default/b4fbab2f3d4644a90896bae5e37e8900c3eb8a85 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/915312864/drv_spi.o: ../src/system_config/default/framework/driver/spi/src/dynamic/drv_spi.c  .generated_files/flags/default/ed0348ebb4c2577bc63b3a47a9d0be398e2f2f68 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/915312864" 
	@${RM} ${OBJECTDIR}/_ext/915312864/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/915312864/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/915312864/drv_spi.o.d" -o ${OBJECTDIR}/_ext/915312864/drv_spi.o ../src/system_config/default/framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o: ../src/system_config/default/framework/driver/spi/src/drv_spi_sys_queue_fifo.c  .generated_files/flags/default/93b6aed1375234b31e066c09241a2463ddf31288 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/2077795248" 
	@${RM} ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o ../src/system_config/default/framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1298913485/drv_tmr.o: ../src/system_config/default/framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/default/613f19f6be2ad68c7bda4027256db8fe7ba0c954 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1298913485" 
	@${RM} ${OBJECTDIR}/_ext/1298913485/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1298913485/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1298913485/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1298913485/drv_tmr.o ../src/system_config/default/framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c  .generated_files/flags/default/c3cb24f663648f87afeb0834127ee2add308dfc5 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327000265/drv_usart_static.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c  .generated_files/flags/default/9649ef01655cbe7dca0bc68bf00588f2c96f585d .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static_buffer_queue.c  .generated_files/flags/default/39d08caf3a122d97ca7e4ed636a950061d471b5d .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static_buffer_queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static_read_write.c  .generated_files/flags/default/c9f381aaed4f9580db6aebfe43233c2dbece65e4 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static_read_write.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/flags/default/7fb4d3358f0fe72c0fea00408611c6aedce1df2 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2001008086/sys_command.o: ../src/system_config/default/framework/system/command/src/sys_command.c  .generated_files/flags/default/3957c81702b6a169991457474cf64898a8fef418 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/2001008086" 
	@${RM} ${OBJECTDIR}/_ext/2001008086/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001008086/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2001008086/sys_command.o.d" -o ${OBJECTDIR}/_ext/2001008086/sys_command.o ../src/system_config/default/framework/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1544295906/sys_console.o: ../src/system_config/default/framework/system/console/src/sys_console.c  .generated_files/flags/default/22a3d1b282c9128ccec42a4add1ac0a606a3f2ef .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1544295906" 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544295906/sys_console.o.d" -o ${OBJECTDIR}/_ext/1544295906/sys_console.o ../src/system_config/default/framework/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1544295906/sys_console_uart.o: ../src/system_config/default/framework/system/console/src/sys_console_uart.c  .generated_files/flags/default/63c9738888028b47f755e2bc84cb4aeb8ce196d2 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1544295906" 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544295906/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o ../src/system_config/default/framework/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/default/ebcfbd47361326007d6d8930f96e037f691e267f .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/flags/default/10f16d5d3437f137fda63502a0cd993ebc1648a8 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o: ../src/system_config/default/framework/system/int/src/sys_int_pic32.c  .generated_files/flags/default/7bf0bd191320458ea07887d85a45798fbb026117 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1735427962" 
	@${RM} ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o ../src/system_config/default/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/default/cdc306d89397eb508269015e9693d1bb9e821c23 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327917790/sys_random.o: ../src/system_config/default/framework/system/random/src/sys_random.c  .generated_files/flags/default/e317493d5329c4474e1455cb71755789f702d5ee .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/327917790" 
	@${RM} ${OBJECTDIR}/_ext/327917790/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/327917790/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327917790/sys_random.o.d" -o ${OBJECTDIR}/_ext/327917790/sys_random.o ../src/system_config/default/framework/system/random/src/sys_random.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/68765530/sys_reset.o: ../src/system_config/default/framework/system/reset/src/sys_reset.c  .generated_files/flags/default/b475027b27dbd088d0a99d082f47348a8fb93e3f .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/68765530" 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68765530/sys_reset.o.d" -o ${OBJECTDIR}/_ext/68765530/sys_reset.o ../src/system_config/default/framework/system/reset/src/sys_reset.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1417409628/sys_tmr.o: ../src/system_config/default/framework/system/tmr/src/sys_tmr.c  .generated_files/flags/default/22c1a498085ac5fef7375461d6cabcb19ed1de24 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1417409628" 
	@${RM} ${OBJECTDIR}/_ext/1417409628/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1417409628/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1417409628/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1417409628/sys_tmr.o ../src/system_config/default/framework/system/tmr/src/sys_tmr.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1881663949/helpers.o: ../src/system_config/default/framework/tcpip/src/common/helpers.c  .generated_files/flags/default/a1885b4f026af8beb9451404f584c700c895426b .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1881663949" 
	@${RM} ${OBJECTDIR}/_ext/1881663949/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881663949/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881663949/helpers.o.d" -o ${OBJECTDIR}/_ext/1881663949/helpers.o ../src/system_config/default/framework/tcpip/src/common/helpers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/ipv4.o: ../src/system_config/default/framework/tcpip/src/ipv4.c  .generated_files/flags/default/f0c0f200e6e7c51d2371d729bcafe217ceda59d .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/ipv4.o.d" -o ${OBJECTDIR}/_ext/26143033/ipv4.o ../src/system_config/default/framework/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/udp.o: ../src/system_config/default/framework/tcpip/src/udp.c  .generated_files/flags/default/d7489f80dca506f9f9e088911c9ba540f54c19e6 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/udp.o.d" -o ${OBJECTDIR}/_ext/26143033/udp.o ../src/system_config/default/framework/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o: ../src/system_config/default/framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/default/cc35c214a34dcbbe9e92d094468d69a467d1945b .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o ../src/system_config/default/framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o: ../src/system_config/default/framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/default/5b8236acf2629e5a822935a64e5d4c8c50412311 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o ../src/system_config/default/framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/arp.o: ../src/system_config/default/framework/tcpip/src/arp.c  .generated_files/flags/default/438f0bec1d4767759af4be930207ac9dcbc63ee7 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/arp.o.d" -o ${OBJECTDIR}/_ext/26143033/arp.o ../src/system_config/default/framework/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/dns.o: ../src/system_config/default/framework/tcpip/src/dns.c  .generated_files/flags/default/2af2e2ff81a700f7786e125e711d74171d494425 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/dns.o.d" -o ${OBJECTDIR}/_ext/26143033/dns.o ../src/system_config/default/framework/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/hash_fnv.o: ../src/system_config/default/framework/tcpip/src/hash_fnv.c  .generated_files/flags/default/80a223d36184e8c78db3edb17d198d1495e6eb9c .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/26143033/hash_fnv.o ../src/system_config/default/framework/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/oahash.o: ../src/system_config/default/framework/tcpip/src/oahash.c  .generated_files/flags/default/ae00d4badfa4a686999e899e818e10c62bdc0db9 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/oahash.o.d" -o ${OBJECTDIR}/_ext/26143033/oahash.o ../src/system_config/default/framework/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_helpers.o: ../src/system_config/default/framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/default/a59c93953e67b237c990d33b44153580c6752a03 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o ../src/system_config/default/framework/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_manager.o: ../src/system_config/default/framework/tcpip/src/tcpip_manager.c  .generated_files/flags/default/f286bbfc673d0cb6d66066732e1cc861fcc9bb59 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_manager.o ../src/system_config/default/framework/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_notify.o: ../src/system_config/default/framework/tcpip/src/tcpip_notify.c  .generated_files/flags/default/88f6e75bd504c6d596de0796c80da0f95cf1a8f5 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_notify.o ../src/system_config/default/framework/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_packet.o: ../src/system_config/default/framework/tcpip/src/tcpip_packet.c  .generated_files/flags/default/3e18be3e305a078326894e4b34ade08381090180 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_packet.o ../src/system_config/default/framework/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/flags/default/f35e20f93f6825b4ac0ea8ea971e70781c52fb68 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/flags/default/f5f2466ce3a214ff5e8fe1d7aa4af80dc8c61900 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/flags/default/7b5d044ccf7b8e1e5273cbe1630f1fa7b845608f .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/app_commands.o: ../src/app_commands.c  .generated_files/flags/default/6d8bef8c13948147ded7f81e79e245ec28d11bd9 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_commands.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_commands.o ../src/app_commands.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/UDP_app.o: ../src/UDP_app.c  .generated_files/flags/default/8dd3885e464170febbf3e3a71549f893a5690bae .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UDP_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UDP_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/UDP_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/UDP_app.o ../src/UDP_app.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/cf7af2f659e849e23aaadbafd4326e0cd035442c .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/User01.o: ../src/User01.c  .generated_files/flags/default/360394b64e6b5334e25f5f59587a8c7ee03d261b .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/User01.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/User01.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/User01.o.d" -o ${OBJECTDIR}/_ext/1360937237/User01.o ../src/User01.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/Afficheur.o: ../src/Afficheur.c  .generated_files/flags/default/6dc24bb27e7980a247dec2d5fdcbb845acf5cae9 .generated_files/flags/default/f4054ed757c714aad06e987cc052057cf2400c7d
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Afficheur.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Afficheur.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Afficheur.o.d" -o ${OBJECTDIR}/_ext/1360937237/Afficheur.o ../src/Afficheur.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/S4e_Projet.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/S4e_Projet.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC0275F  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=44960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/S4e_Projet.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/S4e_Projet.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=44960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/S4e_Projet.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
