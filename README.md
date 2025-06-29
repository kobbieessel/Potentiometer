# **Potentiometer Arduino Library**

A lightweight and easy-to-use Arduino library for reading analog values from a potentiometer and converting them to custom ranges, suitable for applications such as LED brightness control or servo motor positioning.

## **Features**

1. Initialize the analog pin connected to the potentiometer.
2. Read raw analog values (0–1023) from the potentiometer.
3. Convert readings to any desired range (e.g., 0–255 for LEDs, 0–180 for servos).

## **Installation**

1. Download or clone this repository.
2. Place the folder in your Arduino libraries directory.
3. Restart the Arduino IDE.

## **Usage**
### Include the library
```C++
#include <Potentiometer.h>
```

### Create an instance
```C++
Potentiometer pot(A0); // Pass the analog pin number (e.g., A0)
```

### Initialize in setup()
```C++
void setup() {
  pot.init(); // Sets the pin as INPUT
}
```

### Get raw and converted readings
```C++
void loop() {
  float raw = pot.rawReading(); // Get raw value (0–1023)
  float converted = pot.convertReading(180); // Convert to 0–180 range
  
  // Use the values as needed
}
```

# API Reference
```
Potentiometer(int pin)
```
Constructor. Pass the analog pin the potentiometer is connected to.

```
void init()
```
Initializes the potentiometer pin (sets it to INPUT).

```
float rawReading()
```
Reads and returns the raw analog value (0–1023).

```
float convertReading(int maxRange)
```
Converts the raw reading into a specified maximum range (e.g., 180 or 255) and returns the mapped value.

### Notes
Make sure the potentiometer is connected correctly to the Arduino analog pin.

Conversion assumes linear mapping from 0–1023 to the target range.

# License
This project is open-source and available under the MIT License."# Potentiometer-library" 
