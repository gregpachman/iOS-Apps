//
//  ViewController.h
//  First App
//
//  Created by User on 1/5/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UITextField *myText;
- (IBAction)myButton:(id)sender;

@end

