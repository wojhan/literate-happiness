//
//  ViewController.h
//  Ex5
//
//  Created by Wojciech on 04/11/2018.
//  Copyright © 2018 Wojciech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController<SecondViewControllerDelegate>

@property NSString *surname;

@property (nonatomic, weak) IBOutlet UILabel *messageLabel;
@property (nonatomic, weak) IBOutlet UITextField *inputField;
@property (nonatomic, weak) IBOutlet UITextField *surnameInputField;

@end

