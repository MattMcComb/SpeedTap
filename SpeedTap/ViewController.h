//
//  ViewController.h
//  SpeedTap
//
//  Created by Matthew McComb on 24/06/2014.
//  Copyright (c) 2014 Instil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Stopwatch.h"

@interface ViewController : UIViewController

@property(nonatomic, strong) IBOutlet UILabel *elapsedTimeLabel;
@property(nonatomic, strong) IBOutlet UILabel *resultsLabel;

@property(nonatomic, strong) IBOutlet UIButton *goButton;
@property(nonatomic, strong) IBOutlet UIButton *stopButton;

@property(nonatomic, strong) Stopwatch *stopwatch;

- (IBAction)tappedGoButton:(UIButton*)goButton;

- (IBAction)tappedStopButton:(UIButton*)stopButton;

@end
