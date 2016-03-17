//
//  RotateView.m
//  simplestapp
//
//  Created by Erica Correa on 3/3/16.
//  Copyright © 2016 Aditya Narayan. All rights reserved.
//

#import "RotateView.h"

@implementation RotateView

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    UIRotationGestureRecognizer *rg = [[UIRotationGestureRecognizer alloc] initWithTarget: self action: @selector(useRotateGesture:)];
    
    [self addGestureRecognizer:rg];
    
    self.backgroundColor = [UIColor colorWithRed:0.96 green:0.70 blue:0.42 alpha:1.0];
    UILabel *rotateLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
    
    [rotateLabel setTextColor:[UIColor blackColor]];
    [rotateLabel setText:@"Rotate Me"];
    [rotateLabel setBackgroundColor:[UIColor clearColor]];
    [rotateLabel setTextAlignment: NSTextAlignmentCenter];
    [rotateLabel setFont:[UIFont fontWithName: @"Helvetica-Bold" size: 15.0f]];
    [self addSubview:rotateLabel];
    
    return self;
}

- (void)useRotateGesture: (UIRotationGestureRecognizer*) rotateGesture {
    self.transform = CGAffineTransformRotate(self.transform, rotateGesture.rotation);
    
    rotateGesture.rotation = 0.0;
}

@end
