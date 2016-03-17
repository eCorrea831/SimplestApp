//
//  PinchView.m
//  simplestapp
//
//  Created by Erica Correa on 3/3/16.
//  Copyright © 2016 Aditya Narayan. All rights reserved.
//

#import "PinchView.h"

@implementation PinchView

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    UIPinchGestureRecognizer *png = [[UIPinchGestureRecognizer alloc] initWithTarget: self action: @selector(usePinchGesture:)];
    
    [self addGestureRecognizer:png];
    
    self.backgroundColor = [UIColor colorWithRed:1.00 green:0.00 blue:0.47 alpha:1.0];
    UILabel *pinchLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
    
    [pinchLabel setTextColor:[UIColor blackColor]];
    [pinchLabel setText:@"Pinch Me"];
    [pinchLabel setBackgroundColor:[UIColor clearColor]];
    [pinchLabel setTextAlignment: NSTextAlignmentCenter];
    [pinchLabel setFont:[UIFont fontWithName: @"Helvetica-Bold" size: 15.0f]];
    [self addSubview:pinchLabel];
    
    return self;
}

- (void)usePinchGesture: (UIPinchGestureRecognizer*) pinchGesture {
    pinchGesture.view.transform = CGAffineTransformScale(pinchGesture.view.transform, pinchGesture.scale, pinchGesture.scale);
    pinchGesture.scale = 1.0;
}

@end
