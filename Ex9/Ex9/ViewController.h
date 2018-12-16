//
//  ViewController.h
//  Ex9
//
//  Created by Wojciech on 29/10/2018.
//  Copyright © 2018 Wojciech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *gestureLabel;

- (IBAction) tapGesture: (UITapGestureRecognizer *) sender;
- (IBAction) pinchGesture: (UIPinchGestureRecognizer *) sender;
- (IBAction) swipeGesture: (UISwipeGestureRecognizer *) sender;
- (IBAction) longPressGesture: (UILongPressGestureRecognizer *) sender;

@end

