//
//  TWDataPoint.m
//  TempoWeather
//
//  Created by John Yorke on 06/09/2014.
//  Copyright (c) 2014 John Yorke. All rights reserved.
//

#import "TWDataPoint.h"

@implementation TWDataPoint

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"time" : @"time",
             @"summary" : @"summary",
             @"icon" : @"icon",
             @"sunriseTime" : @"sunriseTime",
             @"sunsetTime" : @"sunsetTime",
             @"moonPhase" : @"moonPhase",
             @"nearestStormDistance" : @"nearestStormDistance",
             @"nearestStormBearing" : @"nearestStormBearing",
             @"precipIntensity" : @"nearestIntensity",
             @"precipIntensityMax" : @"precipIntensityMax",
             @"precipIntensityMaxTime" : @"precipIntensityMaxTime",
             @"precipProbability" : @"precipProbability",
             @"precipType" : @"precipType",
             @"precipAccumulation" : @"precipAccumulation",
             @"temperature" : @"temperature",
             @"temperatureMin" : @"temperatureMin",
             @"temperatureMax" : @"temperatureMax",
             @"temperatureMinTime" : @"temperatureMinTime",
             @"temperatureMaxTime" : @"temperatureMaxTime",
             @"apparentTemperature" : @"apparentTemperature",
             @"apparentTemperatureMin" : @"apparentTemperatureMin",
             @"apparentTemperatureMax" : @"apparentTemperatureMax",
             @"apparentTemperatureMinTime" : @"apparentTemperatureMinTime",
             @"apparentTemperatureMaxTime" : @"apparentTemperatureMaxTime",
             @"dewPoint" : @"dewPoint",
             @"windSpeed" : @"windSpeed",
             @"windBearing" : @"windBearing",
             @"cloudCover" : @"cloudCover",
             @"humidity" : @"humidity",
             @"pressure" : @"pressure",
             @"visibility" : @"visibility",
             @"ozone" : @"ozone",
             @"alerts" : @"alerts"
             };
}

+ (NSValueTransformer *)timeJSONTransformer {
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^(NSString *str) {
        return [NSDate dateWithTimeIntervalSince1970:[str floatValue]];
    } reverseBlock:^(NSDate *date) {
        return [[NSDateFormatter new] stringFromDate:date];
    }];
}

+ (NSValueTransformer *)sunriseTimeJSONTransformer {
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^(NSString *str) {
        return [NSDate dateWithTimeIntervalSince1970:[str floatValue]];
    } reverseBlock:^(NSDate *date) {
        return [[NSDateFormatter new] stringFromDate:date];
    }];
}

+ (NSValueTransformer *)sunsetTimeJSONTransformer {
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^(NSString *str) {
        return [NSDate dateWithTimeIntervalSince1970:[str floatValue]];
    } reverseBlock:^(NSDate *date) {
        return [[NSDateFormatter new] stringFromDate:date];
    }];
}

+ (NSValueTransformer *)precipIntensityMaxTimeJSONTransformer {
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^(NSString *str) {
        return [NSDate dateWithTimeIntervalSince1970:[str floatValue]];
    } reverseBlock:^(NSDate *date) {
        return [[NSDateFormatter new] stringFromDate:date];
    }];
}

+ (NSValueTransformer *)temperatureMinTimeJSONTransformer {
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^(NSString *str) {
        return [NSDate dateWithTimeIntervalSince1970:[str floatValue]];
    } reverseBlock:^(NSDate *date) {
        return [[NSDateFormatter new] stringFromDate:date];
    }];
}

+ (NSValueTransformer *)temperatureMaxTimeJSONTransformer {
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^(NSString *str) {
        return [NSDate dateWithTimeIntervalSince1970:[str floatValue]];
    } reverseBlock:^(NSDate *date) {
        return [[NSDateFormatter new] stringFromDate:date];
    }];
}

+ (NSValueTransformer *)apparentTemperatureMinTimeJSONTransformer {
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^(NSString *str) {
        return [NSDate dateWithTimeIntervalSince1970:[str floatValue]];
    } reverseBlock:^(NSDate *date) {
        return [[NSDateFormatter new] stringFromDate:date];
    }];
}

+ (NSValueTransformer *)apparentTemperatureMaxTimeJSONTransformer {
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^(NSString *str) {
        return [NSDate dateWithTimeIntervalSince1970:[str floatValue]];
    } reverseBlock:^(NSDate *date) {
        return [[NSDateFormatter new] stringFromDate:date];
    }];
}

+ (NSValueTransformer *)alertsTransformer
{
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[TWAlert class]];
}

@end
