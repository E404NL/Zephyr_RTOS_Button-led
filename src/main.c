/*
 * Copyright (c) 2016 Intel Corporation
 *
 * SPDX-License-Identifier: Apache-2.0
 * 
 * Don't forget to west espressif monitor -p /dev/ttyUSB0
 */

#include <stdio.h>
#include <zephyr/kernel.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/device.h>

static struct gpio_callback button_cb_data;

// setting up LED
#define LED0_NODE DT_ALIAS(led0)
static const struct gpio_dt_spec led = GPIO_DT_SPEC_GET(LED0_NODE, gpios);

// setting button
#define BUTTON_NODE DT_ALIAS(sw0)
static const struct gpio_dt_spec button = GPIO_DT_SPEC_GET(BUTTON_NODE, gpios);


void button_pressed(const struct device *dev, struct gpio_callback *cb, uint32_t pins){
    int ret;
    ret = gpio_pin_toggle_dt(&led);
    if(ret != 0){
        printf("Could not toggle \n");
    }
}

int main(void)
{
	int ret;
	bool led_state = true;

	// LED config
	if (!gpio_is_ready_dt(&led)) {
		return 0;
	}

	ret = gpio_pin_configure_dt(&led, GPIO_OUTPUT_ACTIVE);
	if (ret < 0) {
		return 0;
	}

    // Button config
    if (!gpio_is_ready_dt(&button)) {
        return 0;
    }

    ret = gpio_pin_configure_dt(&button, GPIO_INPUT);
	if (ret < 0) {
		return 0;
	}

    ret = gpio_pin_interrupt_configure_dt(&button, GPIO_INT_EDGE_TO_ACTIVE);
    if (ret < 0) {
		return 0;
	}

    
    gpio_init_callback(&button_cb_data, button_pressed, BIT(button.pin));
    gpio_add_callback(button.port, &button_cb_data);
    printf("Set up button at %s pin %d\n", button.port->name, button.pin);

    // if (led.port && !gpio_is_ready(&led)){
    //     printf("Error %d : LED device %s is not readu; ignoring it\n", ret, led.port->name);
    //     led.port = NULL;
    // }
    // if(led.port){
    //     ret = gpio_pin_configure_dt(&led, GPIO_OUTPUT);
    //     if(ret!= 0){
    //     printf("Error %d : failed to configure LED device %s pin %d\n", ret, led.port->name, led.pin);
    //     }
    // }
    printf("Press the button");

	// while (1) {
	// 	ret = gpio_pin_toggle_dt(&led);
	// 	if (ret < 0) {
	// 		return 0;
	// 	}

	// 	led_state = !led_state;
	// 	printf("LED state: %s\n", led_state ? "ON" : "OFF");
	// }
	
    return 0;
}
