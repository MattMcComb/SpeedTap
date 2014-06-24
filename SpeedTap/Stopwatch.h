//
//  Stopwatch.h
//  SpeedTap
//
//  Created by Matthew McComb on 24/06/2014.
//  Copyright (c) 2014 Instil. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stopwatch : NSObject

@property (nonatomic, assign) double targetTime;
@property (nonatomic, assign) double elapsedTime;
@property (nonatomic, assign) double startTime;

@property (nonatomic, strong) NSTimer *timer;

- (id)initWithTargetTime:(double)targetTime;

- (void)start;
- (void)stop;

@end
