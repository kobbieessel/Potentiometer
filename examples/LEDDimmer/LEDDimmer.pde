/*
******************************************************************************************
Auther Name: Kwabena E. Amoako
Data: 6-29-2025
Description: 
  This Arduino code reads analog input from a potentiometer connected to pin A0, 
  converts the reading to a value between 0–255 using the Potentiometer library, and 
  controls the brightness of an LED on pin 6 using PWM (analogWrite). It also prints 
  the converted value to the Serial Monitor every 500 milliseconds.

******************************************************************************************
*/

#include <Potentiometer.h>

#define potPin A0
#define led 6

Potentiometer pot(potPin);

void setup() {
  Serial.begin(115200);
  pinMode(led, OUTPUT);
  pot.init();
}

void loop() {
  int reading = pot.convertReading(255);
  analogWrite(led, reading);
  Serial.println(reading);
  delay(500);
}