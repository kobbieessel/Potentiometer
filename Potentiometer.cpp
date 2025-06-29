#include "Potentiometer.h"
#include <Arduino.h>

Potentiometer::Potentiometer(int pin){
  this->pin = pin;
}

void Potentiometer::init(){
  pinMode(pin, INPUT);
}

void Potentiometer::read(){
  potReading = analogRead(pin);
}

float Potentiometer::rawReading(){
  read();
  return potReading;
}

float Potentiometer::convertReading(int maxRange){
  read();
  outputReading = ((maxRange/1023.0) * (potReading - 1023.0)) + maxRange;
  return outputReading;
}