//
//  TapView.m
//  simplestapp
//
//  Created by Erica Correa on 3/3/16.
//  Copyright © 2016 Aditya Narayan. All rights reserved.
//

#import "TapView.h"

@implementation TapView

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    UITapGestureRecognizer *tg = [[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(useTapGesture:)];
    
    [self addGestureRecognizer:tg];
    
    self.backgroundColor = [UIColor colorWithRed:0.41 green:0.84 blue:0.06 alpha:1.0];
    
    tapLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
    [tapLabel setTextColor:[UIColor blackColor]];
    [tapLabel setText:@"Tap Me"];
    [tapLabel setBackgroundColor:[UIColor clearColor]];
    [tapLabel setTextAlignment: NSTextAlignmentCenter];
    [tapLabel setFont:[UIFont fontWithName: @"Helvetica-Bold" size: 15.0f]];
    [self addSubview:tapLabel];
   
    return self;
}

- (void)useTapGesture: (UITapGestureRecognizer*) tapGesture {
    CGFloat newWidth = 150.0;
    CGFloat newHeight = 150.0;
    
    if (self.frame.size.width == 150.0 && self.frame.size.height == 150.0) {
        newWidth = 200.0;
        newHeight = 200.0;
        [tapLabel setFrame:(CGRectMake(0, 0, 200, 200))];
        [tapLabel setFont:[UIFont fontWithName: @"Helvetica-Bold" size: 20.0f]];

    } else {
        [tapLabel setFrame:(CGRectMake(0, 0, 150, 150))];
        [tapLabel setFont:[UIFont fontWithName: @"Helvetica-Bold" size: 15.0f]];
    }
    
    CGPoint currentCenter = self.center;
    
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, newWidth, newHeight);
    self.center = currentCenter;
}

@end
