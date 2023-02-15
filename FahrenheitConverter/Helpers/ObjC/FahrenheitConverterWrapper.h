//
//  FahrenheitConverterWraapper.h
//  FahrenheitConverter
//
//  Created by Jacob Conner on 2/14/23.
//

#ifndef FahrenheitConverterWrapper_h
#define FahrenheitConverterWrapper_h
#import <Foundation/Foundation.h>

@interface FahrenheitConverterWrapper : NSObject
- (float) convertToCelsius:(float) temp;
- (float) convertToFahrenheit:(float) temp;

@end

#endif /* FahrenheitConverterWraapper_h */
