//
//  ViewController.m
//  HelloWorld
//
//  Created by Stephen Richter on 2/16/2014.
//  Copyright (c) 2014 Stephen Richter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)showMessageBox:(id)sender{
    
    UIAlertView *messageBox = [[UIAlertView alloc]
                               initWithTitle:(@"DAT BOX DO")
                               message:(@"Check it out.")
                               delegate:nil
                               cancelButtonTitle:(@"OK")
                               otherButtonTitles:nil];
    
    [messageBox show];
    
}

@synthesize helloLabel;
@synthesize whatToWrite;
@synthesize decisionTime;

- (IBAction)makeDecision:(id)sender {
    
    if(decisionTime.isOn) {
        [self writeText];
    }else{
        [self sayHello];
    }
    
}

- (void)sayHello {

    helloLabel.text = @"Hello World";

}

- (void)writeText {
    
    textToWrite = whatToWrite.text;
    helloLabel.text = textToWrite;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"Blue Screen";
    
    NSLog(@"Load Successful");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
