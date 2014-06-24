//
//  ViewController.m
//  SpeedTap
//
//  Created by Matthew McComb on 24/06/2014.
//  Copyright (c) 2014 Instil. All rights reserved.
//

#import "ViewController.h"
#import "Stopwatch.h"


@implementation ViewController

- (IBAction)tappedGoButton:(UIButton*)goButton {
    [_goButton setHidden:YES];
    [_stopButton setHidden:NO];
    _stopwatch = [[Stopwatch alloc] initWithTargetTime:5.0f];
    [_stopwatch start];
    
    [_stopwatch addObserver:self
                 forKeyPath:@"elapsedTime"
                    options:NSKeyValueObservingOptionNew
                    context:nil];
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context {
    NSString *elapsedTimeText = [NSString stringWithFormat:@"%0.2f", [_stopwatch elapsedTime]];
    [_elapsedTimeLabel setText:elapsedTimeText];
}

- (IBAction)tappedStopButton:(UIButton*)stopButton {
    [_stopButton setHidden:YES];
    [_goButton setHidden:NO];
    [_stopwatch stop];
    [self displayScore];
}

- (void)displayScore {
    double timeDifference = fabs([_stopwatch elapsedTime] - 5.0f);
    NSString *resultsString = [NSString stringWithFormat:@"You were %0.2f seconds out!", timeDifference];
    [_resultsLabel setText:resultsString];
    [_resultsLabel setHidden:NO];
}

@end
