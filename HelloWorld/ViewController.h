//
//  ViewController.h
//  HelloWorld
//
//  Created by Stephen Richter on 2/16/2014.
//  Copyright (c) 2014 Stephen Richter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

-(IBAction)showMessageBox:(id)sender;

@property(nonatomic, retain) IBOutlet UILabel *helloLabel;

// Make the decision using decisionTime UISwitch
- (IBAction)makeDecision:(id)sender;

// Write "Hello World" string
- (void)sayHello;

// Write text from UITextField
- (void)writeText;

@property(nonatomic, retain) IBOutlet UITextField *whatToWrite;

@property(nonatomic, retain) IBOutlet UISwitch *decisionTime;

@end

NSString *textToWrite;