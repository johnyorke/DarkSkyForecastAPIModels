//
//  TWAlerts.m
//  TempoWeather
//
//  Created by John Yorke on 06/09/2014.
//  Copyright (c) 2014 John Yorke. All rights reserved.
//

#import "TWAlert.h"

@implementation TWAlert

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"title" : @"title",
             @"expires" : @"expires",
             @"summary" : @"summary",
             @"uri" : @"uri"
             };
}

+ (NSValueTransformer *)expiresJSONTransformer {
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^(NSString *str) {
        return [NSDate dateWithTimeIntervalSince1970:[str floatValue]];
    } reverseBlock:^(NSDate *date) {
        return [[NSDateFormatter new] stringFromDate:date];
    }];
}

+ (NSValueTransformer *)uriJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

@end
