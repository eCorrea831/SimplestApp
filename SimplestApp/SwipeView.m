//
//  SwipeView.m
//  simplestapp
//
//  Created by Erica Correa on 3/3/16.
//  Copyright © 2016 Aditya Narayan. All rights reserved.
//

#import "SwipeView.h"

@implementation SwipeView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
 
    self.viewBlue = [[UIView alloc] initWithFrame:(CGRectMake(-1*frame.size.width, 0, frame.size.width, frame.size.height))];
    [self.viewBlue setBackgroundColor:[UIColor colorWithRed:0.44 green:0.66 blue:0.86 alpha:1.0]];
    [self addSubview:self.viewBlue];

    self.viewPurple = [[UIView alloc] initWithFrame:(CGRectMake(0, 0, frame.size.width, frame.size.height))];
    [self.viewPurple setBackgroundColor:[UIColor colorWithRed:0.40 green:0.31 blue:0.65 alpha:1.0]];
    [self addSubview:self.viewPurple];
    
    self.viewRed = [[UIView alloc] initWithFrame:(CGRectMake(1*frame.size.width, 0, frame.size.width, frame.size.height))];
    [self.viewRed setBackgroundColor:[UIColor colorWithRed:0.88 green:0.40 blue:0.40 alpha:1.0]];
    [self addSubview:self.viewRed];
    
    //Swipe Purple
    UISwipeGestureRecognizer *swipeRightPurple = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    swipeRightPurple.direction = UISwipeGestureRecognizerDirectionRight;
    
    UISwipeGestureRecognizer *swipeLeftPurple = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
    swipeLeftPurple.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.viewPurple addGestureRecognizer:swipeRightPurple];
    [self.viewPurple addGestureRecognizer:swipeLeftPurple];
    
    //Swipe Red
    UISwipeGestureRecognizer *swipeRightRed = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    swipeRightRed.direction = UISwipeGestureRecognizerDirectionRight;
    [self.viewRed addGestureRecognizer:swipeRightRed];
    
    //Swipe Blue
    UISwipeGestureRecognizer *swipeLeftBlue = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
    swipeLeftBlue.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.viewBlue addGestureRecognizer:swipeLeftBlue];
    
    //Label
    UILabel *swipeLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
    
    [swipeLabel setTextColor:[UIColor whiteColor]];
    [swipeLabel setText:@"Swipe Me"];
    [swipeLabel setBackgroundColor:[UIColor clearColor]];
    [swipeLabel setTextAlignment: NSTextAlignmentCenter];
    [swipeLabel setFont:[UIFont fontWithName: @"Helvetica-Bold" size: 15.0f]];
    [self addSubview:swipeLabel];

    return self;
}

-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
        self.viewPurple.frame = CGRectOffset(self.viewPurple.frame, 768.0, 0.0);
        self.viewRed.frame = CGRectOffset(self.viewRed.frame, 768.0, 0.0);
        self.viewBlue.frame = CGRectOffset(self.viewBlue.frame, 768.0, 0.0);
    }];
}

-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
        self.viewPurple.frame = CGRectOffset(self.viewPurple.frame, -768.0, 0.0);
        self.viewRed.frame = CGRectOffset(self.viewRed.frame, -768.0, 0.0);
        self.viewBlue.frame = CGRectOffset(self.viewBlue.frame, -768.0, 0.0);
    }];
}

@end
