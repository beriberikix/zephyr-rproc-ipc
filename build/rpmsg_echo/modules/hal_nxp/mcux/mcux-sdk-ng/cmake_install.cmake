# Install script for directory: /home/jonathan.beri@canonical.com/code/zephyr/modules/hal_nxp/mcux/mcux-sdk-ng

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/jonathan.beri@canonical.com/zephyr-sdk-1.0.1/gnu/arm-zephyr-eabi/bin/arm-zephyr-eabi-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/modules/hal_nxp/mcux/mcux-sdk-ng/usb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/modules/hal_nxp/mcux/mcux-sdk-ng/osa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/modules/hal_nxp/mcux/mcux-sdk-ng/wifi_bt_module/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/modules/hal_nxp/mcux/mcux-sdk-ng/conn_fwloader/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/modules/hal_nxp/mcux/mcux-sdk-ng/lists/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/modules/hal_nxp/mcux/mcux-sdk-ng/rpmsg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/modules/hal_nxp/mcux/mcux-sdk-ng/imu_adapter/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/acmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/acmp_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/adc12/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/adc16/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/adc_12b1msps_sar/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/adc_5hc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/adc_5v12b_ll18_015/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/adc_etc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/aes/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/afe/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/aipstz/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/anactrl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/aoi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/aon_lpadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/asmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/asrc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/audmix/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/bbnsm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/bctu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/bee/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/biss/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/caam/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/camera_csr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/capt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/casper/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cau3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ccm32k/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cdog/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ce/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ci_pi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cic_irb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cmp_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cmt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cmu_fc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cmu_fm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cns_acomp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cns_adc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cns_dac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/common/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cop/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/crc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/csi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ctimer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dac12/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dac14/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dac32/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dac_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dcdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dcdc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dcic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dcif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dcif_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dcp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dma3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dmamux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dmic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dpr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dpu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dpu_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dpu_irqsteer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dryice/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_adc16/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_aoi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_cadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_cmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_cop/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_crc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_crc16/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_dac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_dma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_dmamux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_edma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_eqdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_evtg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_ewm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_flexcan/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_gpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_lpi2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_mcm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_mscan/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_opamp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_opamp_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_pdb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_pit/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_pmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_port/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_pwm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_qdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_qtmr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_rgpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_sim/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_wrap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_xbara/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dsc_xbarb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/dspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/easrc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ecat/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ecspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/edma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/edma4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/edma_rev2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/eeprom/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/eim/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ela_csec/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/elcdif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/elemu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/emc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/emios/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/enc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/endat2p2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/endat3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/enet/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/enet_qos/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/epdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/epit/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/eqdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/erm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/esai/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/evtg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ewm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flash_c40/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flash_ftmr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flash_k4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flash_k4_iap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flashiap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexbus/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexcan/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexcomm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexram/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexspi_flr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/fmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/fmeas/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/fract_pll/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ftm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/gdet/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/gdma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/gint/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/glikey/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/gpc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/gpc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/gpc_2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/gpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/gpio_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/gpt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/hashcrypt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/hiperface/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/hsadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/hscmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/i3c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/iap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/iap1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/iap3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/iee/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/iee_apc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ieer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/igf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/igpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ii2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/imu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/inputmux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/intc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/intm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/intmux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/iped/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ipwm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/irq/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/irqsteer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/irqsteer_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/irtc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/isi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/itrc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/itrc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/iuart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/jn_cmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/jn_flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/jn_iocon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/jn_pwm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/jn_rng/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/jpegdec/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/kbi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/key_manager/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/kpp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lcdic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lcdif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lcdifv2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lcdifv3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lcu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ldb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ldb_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ldb_combo_phy/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lin/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/llwu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lmem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpacmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_acomp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_adc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_crc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_dac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_dma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_enet/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_freqme/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_gpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_gpio_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_i2c_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_iocon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_iocon_lite/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_iopctl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_lcdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_minispi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_miniusart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_rit/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_rtc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_rtc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_spi_ssp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_vspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpc_vusart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpcmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpflexcomm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpi2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpit/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpsci/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lptmr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpuart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ltc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mailbox/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mau/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mc_rgm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mcan/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mcm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mcx_cmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mcx_enet/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mcx_spc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mcx_vbat/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mecc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mipi_csi2rx/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mipi_csi2rx_dwc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mipi_csi2rx_dwc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mipi_dsi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mipi_dsi2_dwc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mipi_dsi_imx/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mipi_dsi_split/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mipi_dsi_split_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mmau/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mmdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mmdvsq/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mmu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mpu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mrt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mscan/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mscm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/msgintr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/msmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mu1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/mx25/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/netc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/nfc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/npx/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ocotp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/opamp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/opamp_fast/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ostimer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/otfad/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/otp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pdb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pdcon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pdm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pint/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pit/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pls_pmu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/plu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pmc0/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pmu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pngdec/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/port/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/powerquad/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/prg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/prince/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/puf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/puf_v3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pwm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pwt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pwt_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pxp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/qdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/qn_acmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/qn_adc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/qn_bod/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/qn_dac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/qn_flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/qn_fsp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/qn_gpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/qn_inputmux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/qn_iocon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/qn_rng/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/qn_rtc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/qn_syscon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/qn_wdt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/qsci/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/qspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/qtmr_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/qtmr_2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/queued_spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/rcm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/rdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/rdc_sema42/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/reformatter/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/rgpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/rng/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/rng_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/rnga/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/rtc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/rtc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/rtc_analog/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/rtc_jdp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/rtd_cmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/rtwdog/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/s3mu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sai/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sar_adc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sctimer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sdadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sdhc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sdif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sdma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sdramc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sdu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sema4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sema42/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/semc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sfa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sha/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sim/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sinc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/slcd/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/slcd_split/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/smartcard/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/smartdma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/smc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/smm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/smscm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/snvs_hp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/snvs_lp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/software_i2s/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/spc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/spdif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/spdif_xcvr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/spi_filter/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/spifi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/spm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sramc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sramc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sramctl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/ssarc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/stm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/swm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/swt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/syscon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sysctl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sysctr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/sysmpu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/syspm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tdet/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tempmon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tempsense/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tempsensor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tempsensor_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tenbaset_phy/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tmu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tmu_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tmu_2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tmu_3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tpm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/trdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/trdc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/trgmux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/trgsync/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/trng/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tsc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tsens/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tspc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tstmr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/uart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/usdhc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/utick/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/vbat/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/virt_wrapper/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/vref/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/vref_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/waketimer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/wdog/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/wdog01/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/wdog32/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/wdog8/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/wdt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/wkpu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/wkt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/wuu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/wwdt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/xbar/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/xbar_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/xbara/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/xbarb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/xbic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/xecc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/xrdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/xrdc2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/xspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cache/armv7-m7/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cache/armv8-a/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cache/cache64/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cache/llc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cache/lmem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cache/lpcac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cache/lpcac_n4a_mcxn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cache/lplmem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/cache/xcache/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexcomm/i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexcomm/i2s/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexcomm/spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexcomm/usart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexio/a-format/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexio/biss/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexio/camera/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexio/endat2p2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexio/i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexio/i2s/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexio/mculcd/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexio/qspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexio/spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexio/t-format/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexio/uart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/flexspi/flexspi_dma3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpflexcomm/lpi2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpflexcomm/lpspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/lpflexcomm/lpuart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pn76/crc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pn76/crc_wrapper/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pn76/gpadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pn76/gpdma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pn76/gpt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pn76/i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pn76/lpuart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pn76/pn_wrapper/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pn76/rng/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pn76/spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pn76/wdt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tsi/tsi_v2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tsi/tsi_v4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tsi/tsi_v5/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/tsi/tsi_v6/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pn76/hostif/pnev7642fama/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/drivers/pn76/hostif/pnev76fama/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/devices/i.MX/i.MX95/MIMX9596/cmake_install.cmake")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/jonathan.beri@canonical.com/code/zephyr-rproc-ipc/build/rpmsg_echo/modules/hal_nxp/mcux/mcux-sdk-ng/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
