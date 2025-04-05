| Supported Targets | ESP32-C2/C3 | ESP32-C5/C6 | ESP32-H2 | ESP32-P4 | ESP32-S2/S3 | T-Display-S3/...S3-AMOLED |
| ----------------- |  ---------- | ----------- | -------- | -------- | ----------- | ------------------------- |


# ESP-IDF I2C Scanner 2025

## Overview
Use this program to check if your I2C device is still alive.

This code has been updated and compiled with the following versions:
- VSCode: March 2025 (version 1.99)
- ESP-IDF 5.5.0
- CMake version 3.31.3

## How to use this project
Run command below in your terminal.

```bash
git clone https://github.com/JoSmith40/ESP-IDF-I2C-Scanner.git
```
Dank an OckertM der den code bereitgestellt hat.
https://github.com/OckertM/ESP-IDF-I2C-Scanner.git


### Hardware Required
1 x ESP32<br>
1 x I2C sensor/device<br>
2 x 4K7 resistors<br>

Connect one 4K7 resistor between SDA and 3.3V.
Connect the other 4K7 resistor between SCL and 3.3V.

**Note:** You are most likely going to need pullup resistors even if the internal pullups are enabled!

#### Pin Assignment:
GPIO 17 SDA<br>
GPIO 18 SCL<br>

### Build and Flash
Enter `idf.py -p PORT flash monitor` to build, flash and monitor the project.

See the [Getting Started Guide](https://docs.espressif.com/projects/esp-idf/en/latest/get-started/index.html) for full steps to configure and use ESP-IDF to build projects.

## Example Output
```bash
I (650294) i2c scanner: Found device at address 0x20
I (650294) i2c scanner: Found device at address 0x50
I (650294) i2c scanner: Found 2 devices
```

## Troubleshooting
When in doubt, **check your GPIO!**
