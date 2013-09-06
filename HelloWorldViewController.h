//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Girish Pandit on 7/25/13.
//  Copyright (c) 2013 Girish Pandit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)changeGreeting:(id)sender;

@property (copy, nonatomic) NSString *userName;

@end
