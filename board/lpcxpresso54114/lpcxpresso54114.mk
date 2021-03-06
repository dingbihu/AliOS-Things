
NAME := board_lpcxpresso54114

MODULE              := 54114
HOST_ARCH           := Cortex-M4
HOST_MCU_FAMILY     := lpc54114

CONFIG_SYSINFO_PRODUCT_MODEL := ALI_AOS_LPC54114
CONFIG_SYSINFO_DEVICE_NAME := LPC54114

GLOBAL_DEFINES += SKIP_SYSCLK_INIT
# GLOBAL_DEFINES += BLK_BITS=18
GLOBAL_DEFINES += STDIO_UART=0

GLOBAL_CFLAGS += -DSYSINFO_PRODUCT_MODEL=\"$(CONFIG_SYSINFO_PRODUCT_MODEL)\"
GLOBAL_CFLAGS += -DSYSINFO_DEVICE_NAME=\"$(CONFIG_SYSINFO_DEVICE_NAME)\"
GLOBAL_CFLAGS += -DSYSINFO_ARCH=\"$(HOST_ARCH)\"
GLOBAL_CFLAGS += -DSYSINFO_MCU=\"$(HOST_MCU_FAMILY)\"
GLOBAL_CFLAGS += -DCONFIG_NO_TCPIP
GLOBAL_CFLAGS += -DCPU_LPC54114J256BD64_cm4

GLOBAL_INCLUDES += .
GLOBAL_INCLUDES += ../../platform/mcu/lpc54114/
GLOBAL_INCLUDES += ../../platform/mcu/lpc54114/CMSIS/Include
GLOBAL_INCLUDES += ../../platform/mcu/lpc54114/drivers



$(NAME)_SOURCES     :=
$(NAME)_SOURCES     += ./board.c
$(NAME)_SOURCES     += ./clock_config.c
$(NAME)_SOURCES     += ./pin_mux.c

TEST_COMPONENTS += certificate

GLOBAL_CFLAGS += -DTEST_CONFIG_KV_ENABLED=0
GLOBAL_CFLAGS += -DTEST_CONFIG_YLOOP_ENABLED=1

