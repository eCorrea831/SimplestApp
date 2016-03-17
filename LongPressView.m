//
//  LongPressView.m
//  simplestapp
//
//  Created by Erica Correa on 3/3/16.
//  Copyright © 2016 Aditya Narayan. All rights reserved.
//

#import "LongPressView.h"

@implementation LongPressView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    //set colors for method
    self.yellow = [[UIColor alloc] init];
    self.yellow = [UIColor colorWithRed:.95 green:.82 blue:.41 alpha:1];
    self.red = [[UIColor alloc] init];
    self.red = [UIColor colorWithRed:.80 green:.25 blue:.15 alpha:1];
    
    //set initial color
    [self setBackgroundColor:self.yellow];
    
    UILongPressGestureRecognizer *lpg = [[UILongPressGestureRecognizer alloc] initWithTarget: self action: @selector(useLongPressGesture:)];
    
    [self addGestureRecognizer:lpg];
    
    //label
    UILabel *pressLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
    
    [pressLabel setTextColor:[UIColor blackColor]];
    [pressLabel setText:@"Press Me"];
    [pressLabel setBackgroundColor:[UIColor clearColor]];
    [pressLabel setTextAlignment: NSTextAlignmentCenter];
    [pressLabel setFont:[UIFont fontWithName: @"Helvetica-Bold" size: 15.0f]];
    [self addSubview:pressLabel];
    
    return self;
}

- (void)useLongPressGesture: (UILongPressGestureRecognizer*) longPressGesture {
    if (longPressGesture.state == UIGestureRecognizerStateBegan) {
        if ([self.backgroundColor isEqual: self.yellow]) {
            [self setBackgroundColor:self.red];
        } else {
            [self setBackgroundColor:self.yellow];
        }
    }
}

@end
