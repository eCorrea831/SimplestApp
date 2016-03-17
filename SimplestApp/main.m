//
//  main.m
//  SimplestApp
//
//  Created by Aditya Narayan on 1/14/14.
//  Copyright (c) 2014 Aditya Narayan. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TapView.h"
#import "SwipeView.h"
#import "PanView.h"
#import "RotateView.h"
#import "PinchView.h"
#import "LongPressView.h"

@interface MyView : UIView
@end
@implementation MyView

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    // How can I get this to show up even when the button is touched?
    NSLog(@"%@", [touches anyObject]);
}


- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"hitTest called");
    return [super hitTest:point withEvent:event];
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"pointInside called");
    return [super pointInside:point withEvent:event];
}

@end

@interface TestViewAppDelegate : NSObject <UIApplicationDelegate>
{
    UIWindow *window;
}

@end

@implementation TestViewAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application
{
    window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    MyView *view = [[MyView alloc] initWithFrame:[window frame]];
    [view setBackgroundColor:[UIColor colorWithRed:0.96 green:0.93 blue:0.85 alpha:1.0]];
    UIViewController *viewController = [[UIViewController alloc]init];
    
    //button
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Hi! Welcome to @TurnToTech" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:17.0f];
    [button setTitleColor:[UIColor colorWithRed:1.00 green:1.00 blue:1.00 alpha:1.0] forState:UIControlStateNormal];
    [button setFrame:CGRectMake(234.0, 100.0, 300.0, 100.0)];
    button.backgroundColor = [UIColor colorWithRed:0.11 green:0.84 blue:0.75 alpha:1.0];
    
    //tap square
    TapView *tapSquare = [[TapView alloc] initWithFrame:(CGRectMake(100, 250, 150, 150))];
    //swipe square - purple
    SwipeView *swipeSquarePurple = [[SwipeView alloc] initWithFrame:(CGRectMake(0, 450, 768, 150))];
    //pan square
    PanView *panSquare = [[PanView alloc] initWithFrame:(CGRectMake(309, 850, 150, 150))];
    //rotate square
    RotateView *rotateSquare = [[RotateView alloc] initWithFrame:(CGRectMake(100, 650, 150, 150))];
    //pinch square
    PinchView *pinchSquare = [[PinchView alloc] initWithFrame:(CGRectMake(518, 250, 150, 150))];
    //long press square
    LongPressView *longPressSquare = [[LongPressView alloc] initWithFrame:(CGRectMake(518, 650, 150, 150))];
    
    //add subViews
    [view addSubview:button];
    [view addSubview:tapSquare];
    [view addSubview:swipeSquarePurple];
    [view addSubview:panSquare];
    [view addSubview:rotateSquare];
    [view addSubview:pinchSquare];
    [view addSubview:longPressSquare];
    
    viewController.view = view;
    [window setRootViewController:viewController];
    [window makeKeyAndVisible];
}

- (void)dealloc
{
    [window release];
    [super dealloc];
}

@end

int main(int argc, char * argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([TestViewAppDelegate class]));
    }
}
