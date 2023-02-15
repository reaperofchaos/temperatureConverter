//
//  FahrenheitConverterWrapper.m
//  FahrenheitConverter
//
//  Created by Jacob Conner on 2/14/23.
//

#import <Foundation/Foundation.h>
#import "FahrenheitConverterWrapper.h"
#import "FahrenheitConverter.hpp"

@implementation FahrenheitConverterWrapper

- (float) convertToCelsius:(float) temp{
    FahrenheitConverter fahrenheitConverter;
    float celsius = fahrenheitConverter.convertToCelsius(temp);
    return celsius;
    
}

- (float) convertToFahrenheit:(float) temp{
    FahrenheitConverter fahrenheitConverter;
    float fahrenheit = fahrenheitConverter.convertToFahrenheit(temp);
    return fahrenheit;
}

@end
