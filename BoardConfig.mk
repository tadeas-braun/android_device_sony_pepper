# Inherit from the proprietary version
-include vendor/sony/pepper/BoardConfigVendor.mk


# Inherit from the common montblanc definitions
-include device/sony/montblanc-common/BoardConfigCommon.mk


# Platform specific headers
TARGET_SPECIFIC_HEADER_PATH += device/sony/pepper/include


# Kernel specific configurations
TARGET_KERNEL_CONFIG := xperiasola_defconfig
BOARD_KERNEL_CMDLINE := cachepolicy=writealloc noinitrd init=init board_id=1 logo.nologo root=/dev/ram0 rw rootwait console=null androidboot.console=null androidboot.hardware=st-ericsson mem=96M@0 mem_mtrace=15M@96M mem_mshared=1M@111M mem_modem=16M@112M mem=32M@128M mem_issw=1M@160M hwmem=71M@161M mem=280M@232M mpcore_wdt.mpcore_margin=359 end audit=1


# Specific recovery configuration
BOARD_HAS_SDCARD_INTERNAL := true


# Specific flag for LED bar notification
COMMON_GLOBAL_CFLAGS += -DNEW_NOTIFICATION


# Device identifiers for updates
TARGET_OTA_ASSERT_DEVICE := MT27i,MT27a,pepper
