//
//  TWAlerts.h
//  TempoWeather
//
//  Created by John Yorke on 06/09/2014.
//  Copyright (c) 2014 John Yorke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface TWAlert : MTLModel <MTLJSONSerializing> 

@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, strong, readonly) NSDate *expires;
@property (nonatomic, copy, readonly) NSString *description;
@property (nonatomic, strong, readonly) NSURL *uri;

@end


/*
 title: A short text summary of the alert.
 expires: The UNIX time (that is, seconds since midnight GMT on 1 Jan 1970) at which the alert will cease to be valid.
 description: A detailed text description of the alert from the appropriate weather service.
 uri: An HTTP(S) URI that contains detailed information about the alert.
*/