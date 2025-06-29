#ifndef POTENTIOMETER_H
#define POTENTIOMETER_H

#include <Arduino.h>

class Potentiometer{
  private:
    int pin;
    float maxRange;
    float potReading;
    float outputReading;

    void read();

  public:
    Potentiometer(){};
    Potentiometer(int pin);

    void init();
    float rawReading();
    float convertReading(int maxRange);
};

#endif
