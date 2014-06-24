//
//  Stopwatch.m
//  SpeedTap
//
//  Created by Matthew McComb on 24/06/2014.
//  Copyright (c) 2014 Instil. All rights reserved.
//

#import "Stopwatch.h"

@implementation Stopwatch

- (id)initWithTargetTime:(double)targetTime {
    if (self = [super init]) {
        _targetTime = targetTime;
    }
    return self;
}

- (void)start {
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.01f
                                              target:self
                                            selector:@selector(updateElapsedTime)
                                            userInfo:nil
                                             repeats:YES];
    _startTime = [NSDate timeIntervalSinceReferenceDate];
}

- (void)stop {
    [_timer invalidate];
    _timer = nil;
}

- (void)updateElapsedTime {
    double timePassed = [NSDate timeIntervalSinceReferenceDate] - _startTime;
    [self setElapsedTime:timePassed];
}

@end
