CPPFLAGS += \
	-D$(BOARDNAME)				\
	-DMACH_TYPE=$(MACH_TYPE) 		\
	-DTOP_OF_MEMORY=$(TOP_OF_MEMORY)	\
	-D$(CRYSTAL)

ASFLAGS += \
	-D$(BOARDNAME)				\
	-DMACH_TYPE=$(MACH_TYPE) 		\
	-DTOP_OF_MEMORY=$(TOP_OF_MEMORY)	\
	-D$(CRYSTAL)

include board/chips.mk

ifeq (board/$(BOARDNAME)/board.mk, $(wildcard board/$(BOARDNAME)/board.mk))
include	board/$(BOARDNAME)/board.mk
else
$(warning WARNING: *** file: board/$(BOARDNAME)/board.mk are not found!)
endif

ifeq ($(CONFIG_THUMB),y)
CPPFLAGS += -DCONFIG_THUMB -mthumb -mthumb-interwork
ASFLAGS += -DCONFIG_THUMB -mthumb-interwork
endif

ifeq ($(CONFIG_SCLK),y)
CPPFLAGS += -DCONFIG_SCLK
endif

ifeq ($(CONFIG_SCLK_BYPASS),y)
CPPFLAGS += -DCONFIG_SCLK_BYPASS
endif

# Crystal frequency

ifeq ($(CONFIG_CRYSTAL_12_000MHZ),y)
CPPFLAGS += -DCONFIG_CRYSTAL_12_000MHZ
endif

ifeq ($(CONFIG_CRYSTAL_16_000MHZ),y)
CPPFLAGS += -DCONFIG_CRYSTAL_16_000MHZ
endif

ifeq ($(CONFIG_CRYSTAL_16_36766MHZ),y)
CPPFLAGS += -DCONFIG_CRYSTAL_16_36766MHZ
endif

ifeq ($(CONFIG_CRYSTAL_18_432MHZ),y)
CPPFLAGS += -DCONFIG_CRYSTAL_18_432MHZ
endif

# CPU clock

ifeq ($(CONFIG_CPU_CLK_180MHZ),y)
CPPFLAGS += -DCONFIG_CPU_CLK_180MHZ
endif

ifeq ($(CONFIG_CPU_CLK_166MHZ),y)
CPPFLAGS += -DCONFIG_CPU_CLK_166MHZ
endif

ifeq ($(CONFIG_CPU_CLK_200MHZ),y)
CPPFLAGS += -DCONFIG_CPU_CLK_200MHZ
endif

ifeq ($(CONFIG_CPU_CLK_240MHZ),y)
CPPFLAGS += -DCONFIG_CPU_CLK_240MHZ
endif

ifeq ($(CONFIG_CPU_CLK_266MHZ),y)
CPPFLAGS += -DCONFIG_CPU_CLK_266MHZ
endif

ifeq ($(CONFIG_CPU_CLK_332MHZ),y)
CPPFLAGS += -DCONFIG_CPU_CLK_332MHZ
endif

ifeq ($(CONFIG_CPU_CLK_396MHZ),y)
CPPFLAGS += -DCONFIG_CPU_CLK_396MHZ
endif

ifeq ($(CONFIG_CPU_CLK_400MHZ),y)
CPPFLAGS += -DCONFIG_CPU_CLK_400MHZ
endif

ifeq ($(CONFIG_CPU_CLK_444MHZ),y)
CPPFLAGS += -DCONFIG_CPU_CLK_444MHZ
endif

ifeq ($(CONFIG_CPU_CLK_498MHZ),y)
CPPFLAGS += -DCONFIG_CPU_CLK_498MHZ
endif

ifeq ($(CONFIG_CPU_CLK_510MHZ),y)
CPPFLAGS += -DCONFIG_CPU_CLK_510MHZ
endif

ifeq ($(CONFIG_CPU_CLK_528MHZ),y)
CPPFLAGS += -DCONFIG_CPU_CLK_528MHZ
endif

# Bus speed

ifeq ($(CONFIG_BUS_SPEED_83MHZ),y)
CPPFLAGS += -DCONFIG_BUS_SPEED_83MHZ
endif

ifeq ($(CONFIG_BUS_SPEED_90MHZ),y)
CPPFLAGS += -DCONFIG_BUS_SPEED_90MHZ
endif

ifeq ($(CONFIG_BUS_SPEED_100MHZ),y)
CPPFLAGS += -DCONFIG_BUS_SPEED_100MHZ
endif

ifeq ($(CONFIG_BUS_SPEED_124MHZ),y)
CPPFLAGS += -DCONFIG_BUS_SPEED_124MHZ
endif

ifeq ($(CONFIG_BUS_SPEED_133MHZ),y)
CPPFLAGS += -DCONFIG_BUS_SPEED_133MHZ
endif

ifeq ($(CONFIG_BUS_SPEED_148MHZ),y)
CPPFLAGS += -DCONFIG_BUS_SPEED_148MHZ
endif

ifeq ($(CONFIG_BUS_SPEED_166MHZ),y)
CPPFLAGS += -DCONFIG_BUS_SPEED_166MHZ
endif

ifeq ($(CONFIG_BUS_SPEED_170MHZ),y)
CPPFLAGS += -DCONFIG_BUS_SPEED_170MHZ
endif

ifeq ($(CONFIG_BUS_SPEED_176MHZ),y)
CPPFLAGS += -DCONFIG_BUS_SPEED_176MHZ
endif

# other

ifeq ($(CPU_HAS_PIO3),y)
CPPFLAGS += -DCPU_HAS_PIO3
endif

ifeq ($(CONFIG_LOAD_ONE_WIRE), y)
CPPFLAGS += -DCONFIG_LOAD_ONE_WIRE
endif

ifeq ($(CONFIG_LOAD_EEPROM), y)
CPPFLAGS += -DCONFIG_LOAD_EEPROM
endif

ifeq ($(CONFIG_MMC_SUPPORT), y)
CPPFLAGS += -DCONFIG_MMC_SUPPORT
endif

ifeq ($(CONFIG_CPU_V7), y)
CPPFLAGS += -DCONFIG_CPU_V7
ASFLAGS += -DCONFIG_CPU_V7
endif

ifeq ($(CONFIG_MATRIX), y)
CPPFLAGS += -DCONFIG_MATRIX
endif

ifeq ($(CONFIG_ENTER_NWD), y)
CPPFLAGS += -DCONFIG_ENTER_NWD
ASFLAGS += -DCONFIG_ENTER_NWD
endif

ifeq ($(CONFIG_REDIRECT_ALL_INTS_AIC), y)
CPPFLAGS += -DCONFIG_REDIRECT_ALL_INTS_AIC
endif

ifeq ($(CPU_HAS_H32MXDIV), y)
CPPFLAGS += -DCPU_HAS_H32MXDIV
endif
