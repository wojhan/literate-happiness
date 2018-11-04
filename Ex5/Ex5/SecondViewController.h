//
//  SecondViewController.h
//  Ex5
//
//  Created by Wojciech on 04/11/2018.
//  Copyright © 2018 Wojciech. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SecondViewController;

@protocol SecondViewControllerDelegate <NSObject>

-(void) addItemViewController:(SecondViewController *)controller
        didFinishEnteringItem:(NSString *)item;

@end

@interface SecondViewController : UIViewController

@property NSString *surname;
@property (nonatomic, weak) id <SecondViewControllerDelegate> delegate;

@property (nonatomic, weak) IBOutlet UITextField *modifiedSurnameInputField;

@end
