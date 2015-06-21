//
//  TWMinutelyForecast.h
//  TempoWeather
//
//  Created by John Yorke on 14/09/2014.
//  Copyright (c) 2014 John Yorke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface TWForecast : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy, readonly) NSString *summary;
@property (nonatomic, copy, readonly) NSString *icon;
@property (nonatomic, copy, readonly) NSArray *data;

- (NSArray *)getNumbersForNext:(NSUInteger)points usingKey:(NSString *)key;
- (NSArray *)getTimestampStringsForNext:(NSUInteger)points;

@end
