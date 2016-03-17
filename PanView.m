//
//  PanView.m
//  simplestapp
//
//  Created by Erica Correa on 3/3/16.
//  Copyright © 2016 Aditya Narayan. All rights reserved.
//

#import "PanView.h"

@implementation PanView

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    UIPanGestureRecognizer *pg = [[UIPanGestureRecognizer alloc] initWithTarget: self action: @selector(usePanGesture:)];
    
    [self addGestureRecognizer:pg];
    
    self.backgroundColor = [UIColor colorWithRed:0.40 green:0.40 blue:0.40 alpha:1.0];
    UILabel *panLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
    
    [panLabel setTextColor:[UIColor whiteColor]];
    [panLabel setText:@"Pan Me"];
    [panLabel setBackgroundColor:[UIColor clearColor]];
    [panLabel setTextAlignment: NSTextAlignmentCenter];
    [panLabel setFont:[UIFont fontWithName: @"Helvetica-Bold" size: 15.0f]];
    [self addSubview:panLabel];
    
    return self;
}

- (void)usePanGesture: (UIPanGestureRecognizer*) panGesture {
    CGPoint touchLocation = [panGesture locationInView:self.superview];
    
    self.center = touchLocation;
}

@end
