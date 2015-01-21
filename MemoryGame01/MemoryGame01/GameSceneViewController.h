//
//  GameSceneViewController.h
//  MemoryGame01
//
//  Created by User on 1/16/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameSceneViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *topButton;

@property (weak, nonatomic) IBOutlet UILabel *gameScoreLabel;

-(IBAction) tileClicked: (id) sender;
    

@end
