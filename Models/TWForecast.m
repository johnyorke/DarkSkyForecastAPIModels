//
//  TWMinutelyForecast.m
//  TempoWeather
//
//  Created by John Yorke on 14/09/2014.
//  Copyright (c) 2014 John Yorke. All rights reserved.
//

#import "TWForecast.h"
#import "TWDataPoint.h"

@implementation TWForecast

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"summary" : @"summary",
             @"icon" : @"icon",
             @"data" : @"data"
             };
}

+ (NSValueTransformer *)dataJSONTransformer
{
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[TWDataPoint class]];
}

- (NSArray *)getNumbersForNext:(NSUInteger)points usingKey:(NSString *)key
{
    NSMutableArray *mutableArray = [NSMutableArray new];
    
    NSArray *dataPoints = self.data;
    
    for (NSInteger x = 0; x < points; x++) {
        TWDataPoint *dataPoint = [dataPoints objectAtIndex:x];
        
        NSNumber *number = [dataPoint valueForKey:key];
        
        [mutableArray addObject:[NSNumber numberWithInt:[number intValue]]];
    }
    
    return [NSArray arrayWithArray:mutableArray];
}

- (NSArray *)getTimestampStringsForNext:(NSUInteger)points
{
    NSMutableArray *mutableArray = [NSMutableArray new];
    
    NSArray *dataPoints = self.data;
    
    for (NSInteger x = 0; x < points; x++) {
        TWDataPoint *dataPoint = [dataPoints objectAtIndex:x];
        
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"HH:mm";
        
        NSString *string = [formatter stringFromDate:dataPoint.time];
        
        [mutableArray addObject:string];
    }
    
    return [NSArray arrayWithArray:mutableArray];
}

@end
