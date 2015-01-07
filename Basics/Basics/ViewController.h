//
//  ViewController.h
//  Basics
//
//  Created by User on 1/5/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *password;



- (IBAction)Clear:(id)sender;


- (IBAction)Enter:(id)sender;




@end

