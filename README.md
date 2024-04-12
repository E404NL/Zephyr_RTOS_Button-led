This project is created to learn ZephyrRTOS.

In this step, it use a red LED and a button for trigger the LED (ON/OFF)
The button is integrate on the esp32.

Materials :
- Board : ESP32-WROOM-32D
- LED (not RGB)
- Resistance 470 ohm

Software (in my case at this moment) : 
- Zephyr 3.6.0
- Zephyr SDK 0.16.5
- Python 3.10.22
- CMake 3.29.0
- DeviceTree Compiler 1.6.1
- West 1.2.0


About the esp32_devkitc_wroom_esp32_procpu.dts file 
(depends about your organisation with your board) : 

    leds {
            compatible = "gpio-leds";
            myled0: led_0 {
                    gpios = <&gpio0 5 GPIO_ACTIVE_LOW>;
            };
    };

    buttons {
		compatible = "gpio-keys";
		button0: button_0 {
			gpios = <&gpio0 0 (GPIO_PULL_UP | GPIO_ACTIVE_LOW)>;
			label = "BOOT Button";
			zephyr,code = <INPUT_KEY_0>;
		};
	};

prj.conf:

CONFIG_GPIO=y