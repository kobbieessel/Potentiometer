/*
******************************************************************************************
Auther Name: Kwabena E. Amoako
Data: 6-29-2025
Description: 
  This Arduino code reads an analog signal from a potentiometer on pin A0, scales it to a 
  range of 0–255 using the convertReading() function from the Potentiometer library, and 
  prints the result to the Serial Monitor every 500 milliseconds.

******************************************************************************************
*/

#include <Potentiometer.h>

const int potPin = A0;

Potentiometer pot(potPin);

void setup() {
  Serial.begin(115200);
  pot.init();
}

void loop() {
  int reading = pot.convertReading(255);
  Serial.println(reading);
  delay(500);
}