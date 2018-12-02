		//
//  SecondViewController.m
//  Ex5
//
//  Created by Wojciech on 04/11/2018.
//  Copyright © 2018 Wojciech. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController()

@end

@implementation SecondViewController

@synthesize surname;

-(IBAction)back {
    NSString *itemToPassBack = self.modifiedSurnameInputField.text;
    [self.delegate addItemViewController:self
                   didFinishEnteringItem:itemToPassBack];
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)viewDidLoad {
    [super viewDidLoad];
    self.modifiedSurnameInputField.text = self.surname;
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
