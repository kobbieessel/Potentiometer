/*
******************************************************************************************
Auther Name: Kwabena E. Amoako
Data: 6-29-2025
Description: 
  This Arduino code reads and prints the raw analog value from a potentiometer connected 
  to pin A0 using the Potentiometer library. It displays values (typically 0–1023) on the 
  Serial Monitor every 500 milliseconds.

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
  int reading = pot.rawReading();
  Serial.println(reading);
  delay(500);
}