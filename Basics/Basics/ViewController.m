//
//  ViewController.m
//  Basics
//
//  Created by User on 1/5/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import "ViewController.h"

//Create 2 View Controllers

//View Controller 1
//-2 buttons (one will clear textfields, one will log all textfields)
//-3 textfields (username, email, password)
//-password field should hide text with dots (right panel)
//-email field should use email keyboard (right panel)

//View Controller 2
//-4 buttons with different color backgrounds
//-each button changes the main view controllers background color
//-Add constraints
//-buttons on VC2 circles with no text.




@interface ViewController ()

@end

@implementation ViewController











- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Clear:(id)sender {
    
    self.username.text = @"";
    self.email.text = @"";
    self.password.text = @"";


    
    
}

- (IBAction)Enter:(id)sender {
    

}

@end
