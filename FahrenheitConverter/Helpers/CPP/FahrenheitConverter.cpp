//
//  FahrenheitConverter.cpp
//  FahrenheitConverter
//
//  Created by Jacob Conner on 2/14/23.
//

#include "FahrenheitConverter.hpp"

float FahrenheitConverter::convertToFahrenheit(float temp){
    return (temp * 9/5) + 32;
};

float FahrenheitConverter::convertToCelsius(float temp){
    return (temp - 32) * 5/9;
};

