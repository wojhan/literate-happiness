//
//  ViewController.m
//  Ex9
//
//  Created by Wojciech on 29/10/2018.
//  Copyright © 2018 Wojciech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self becomeFirstResponder];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)MotionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        [self showShakeDetectedAlert];
    }
}

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (IBAction)showShakeDetectedAlert {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Shake gesture detected" message:@"Do you want to change the background colour?" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *yesButton = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){}];
    
    UIAlertAction *noButton = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){}];
    
    [alertController addAction:yesButton];
    [alertController addAction:noButton];
    [self presentViewController:alertController animated:YES completion:nil];
    
}

- (IBAction)tapGesture:(UITapGestureRecognizer *)sender {
    _gestureLabel.text = @"Tap detected";
}

- (IBAction)pinchGesture:(UIPinchGestureRecognizer *)sender {
    _gestureLabel.text = @"Pinch detected";
}

- (IBAction)swipeGesture:(UISwipeGestureRecognizer *)sender {
    _gestureLabel.text = @"Swipe detected";
}

- (IBAction)longPressGesture:(UILongPressGestureRecognizer *)sender {
    _gestureLabel.text = @"Long press detected";
}

@end
