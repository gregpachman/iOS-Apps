//
//  ViewController.m
//  Friends
//
//  Created by User on 1/22/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h> 

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    testObject[@"foo"] = @"bar";
    [testObject saveInBackground];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
