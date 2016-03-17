//
//  SwipeView.h
//  simplestapp
//
//  Created by Erica Correa on 3/3/16.
//  Copyright © 2016 Aditya Narayan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwipeView : UIView {
    UIColor *blueColor;
    UIColor *purpleColor;
    UIColor *redColor;
    NSArray *colorArray;
}

@property (nonatomic, retain) IBOutlet UIView *viewBlue;

@property (nonatomic, retain) IBOutlet UIView *viewPurple;

@property (nonatomic, retain) IBOutlet UIView *viewRed;

@end
