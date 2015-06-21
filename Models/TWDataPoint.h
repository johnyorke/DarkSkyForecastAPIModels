//
//  TWDataPoint.h
//  TempoWeather
//
//  Created by John Yorke on 06/09/2014.
//  Copyright (c) 2014 John Yorke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>
#import "TWAlert.h"

@interface TWDataPoint : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong, readonly) NSDate *time;
@property (nonatomic, copy, readonly) NSString *summary;
@property (nonatomic, copy, readonly) NSString *icon;
@property (nonatomic, strong, readonly) NSDate *sunriseTime;
@property (nonatomic, strong, readonly) NSDate *sunsetTime;
@property (nonatomic, strong, readonly) NSNumber *moonPhase;
@property (nonatomic, strong, readonly) NSNumber *nearestStormDistance;
@property (nonatomic, strong, readonly) NSNumber *nearestStormBearing;
@property (nonatomic, strong, readonly) NSNumber *precipIntensity;
@property (nonatomic, strong, readonly) NSNumber *precipIntensityMax;
@property (nonatomic, strong, readonly) NSDate *precipIntensityMaxTime;
@property (nonatomic, strong, readonly) NSNumber *precipProbability;
@property (nonatomic, copy, readonly) NSString *precipType;
@property (nonatomic, strong, readonly) NSNumber *precipAccumulation;
@property (nonatomic, strong, readonly) NSNumber *temperature;
@property (nonatomic, strong, readonly) NSNumber *temperatureMin;
@property (nonatomic, strong, readonly) NSNumber *temperatureMax;
@property (nonatomic, strong, readonly) NSDate *temperatureMinTime;
@property (nonatomic, strong, readonly) NSDate *temperatureMaxTime;
@property (nonatomic, strong, readonly) NSNumber *apparentTemperature;
@property (nonatomic, strong, readonly) NSNumber *apparentTemperatureMin;
@property (nonatomic, strong, readonly) NSNumber *apparentTemperatureMax;
@property (nonatomic, strong, readonly) NSDate *apparentTemperatureMinTime;
@property (nonatomic, strong, readonly) NSDate *apparentTemperatureMaxTime;
@property (nonatomic, strong, readonly) NSNumber *dewPoint;
@property (nonatomic, strong, readonly) NSNumber *windSpeed;
@property (nonatomic, strong, readonly) NSNumber *windBearing;
@property (nonatomic, strong, readonly) NSNumber *cloudCover;
@property (nonatomic, strong, readonly) NSNumber *humidity;
@property (nonatomic, strong, readonly) NSNumber *pressure;
@property (nonatomic, strong, readonly) NSNumber *visibility;
@property (nonatomic, strong, readonly) NSNumber *ozone;
@property (nonatomic, strong, readonly) NSArray *alerts;

@end
