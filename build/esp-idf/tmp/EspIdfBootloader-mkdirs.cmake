# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/nerium/zephyrproject/modules/hal/espressif/components/bootloader/subproject"
  "/home/nerium/zephyrproject/zephyr/samples/basic/button_led/Zephyr_RTOS_Button-led/build/esp-idf/build/bootloader"
  "/home/nerium/zephyrproject/zephyr/samples/basic/button_led/Zephyr_RTOS_Button-led/build/esp-idf"
  "/home/nerium/zephyrproject/zephyr/samples/basic/button_led/Zephyr_RTOS_Button-led/build/esp-idf/tmp"
  "/home/nerium/zephyrproject/zephyr/samples/basic/button_led/Zephyr_RTOS_Button-led/build/esp-idf/src/EspIdfBootloader-stamp"
  "/home/nerium/zephyrproject/zephyr/samples/basic/button_led/Zephyr_RTOS_Button-led/build/esp-idf/src"
  "/home/nerium/zephyrproject/zephyr/samples/basic/button_led/Zephyr_RTOS_Button-led/build/esp-idf/src/EspIdfBootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/nerium/zephyrproject/zephyr/samples/basic/button_led/Zephyr_RTOS_Button-led/build/esp-idf/src/EspIdfBootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/nerium/zephyrproject/zephyr/samples/basic/button_led/Zephyr_RTOS_Button-led/build/esp-idf/src/EspIdfBootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
