//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Girish Pandit on 7/25/13.
//  Copyright (c) 2013 Girish Pandit. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController

@synthesize userName = _userName;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    
    if([nameString length] ==0){
        nameString = @"World";
    }
    
    NSString *greeting = [[NSString alloc] initWithFormat:@"Bonjour, %@!", nameString];
    
    self.label.text = greeting;
}

-(BOOL)textFieldShouldReturn:(UITextField *)theTextField{
    if(theTextField == self.textField){
        [theTextField resignFirstResponder];
    }
    return YES;
}
@end
