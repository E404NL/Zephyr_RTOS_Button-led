# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/nerium/zephyrproject/modules/hal/espressif/components/partition_table"
  "/home/nerium/zephyrproject/zephyr/samples/basic/button_led/Zephyr_RTOS_Button-led/build/esp-idf/build"
  "/home/nerium/zephyrproject/zephyr/samples/basic/button_led/Zephyr_RTOS_Button-led/build/zephyr/soc/soc/esp32/esp32/EspPartitionTable-prefix"
  "/home/nerium/zephyrproject/zephyr/samples/basic/button_led/Zephyr_RTOS_Button-led/build/zephyr/soc/soc/esp32/esp32/EspPartitionTable-prefix/tmp"
  "/home/nerium/zephyrproject/zephyr/samples/basic/button_led/Zephyr_RTOS_Button-led/build/zephyr/soc/soc/esp32/esp32/EspPartitionTable-prefix/src/EspPartitionTable-stamp"
  "/home/nerium/zephyrproject/zephyr/samples/basic/button_led/Zephyr_RTOS_Button-led/build/zephyr/soc/soc/esp32/esp32/EspPartitionTable-prefix/src"
  "/home/nerium/zephyrproject/zephyr/samples/basic/button_led/Zephyr_RTOS_Button-led/build/zephyr/soc/soc/esp32/esp32/EspPartitionTable-prefix/src/EspPartitionTable-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/nerium/zephyrproject/zephyr/samples/basic/button_led/Zephyr_RTOS_Button-led/build/zephyr/soc/soc/esp32/esp32/EspPartitionTable-prefix/src/EspPartitionTable-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/nerium/zephyrproject/zephyr/samples/basic/button_led/Zephyr_RTOS_Button-led/build/zephyr/soc/soc/esp32/esp32/EspPartitionTable-prefix/src/EspPartitionTable-stamp${cfgdir}") # cfgdir has leading slash
endif()
