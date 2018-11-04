//
//  ViewController.m
//  Ex5
//
//  Created by Wojciech on 04/11/2018.
//  Copyright © 2018 Wojciech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize surname;

-(IBAction)enter {
    NSString *yourName = self.inputField.text;
    NSString *myName = @"YourName";
    NSString *message;
    
    if ([yourName length] == 0) {
        yourName = @"World";
    }
    
    if ([yourName isEqualToString:myName]) {
        message = [NSString stringWithFormat:@"Hello %@ We have the same name", yourName];
    } else {
        message = [NSString stringWithFormat:@"Hello %@", yourName];
    }
    
    self.messageLabel.text = message;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue
                sender:(id)sender {
    if ([segue.identifier isEqualToString:@"sendSurnameSegue"]) {
        SecondViewController *controller = (SecondViewController *)segue.destinationViewController;
        controller.surname = self.surnameInputField.text;
        controller.delegate = self;
        [[self navigationController] pushViewController:controller animated:YES];
    }
}

-(void)addItemViewController:(SecondViewController *)controller
       didFinishEnteringItem:(NSString *)item {
    self.surnameInputField.text = item;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
