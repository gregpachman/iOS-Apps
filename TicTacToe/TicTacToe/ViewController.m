//
//  ViewController.m
//  TicTacToe
//
//  Created by User on 1/12/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import "ViewController.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

//center squares on view
//score label on top that keeps track of wins for each player
//make buttons change color instead of title (reset title on play again)
//Button at bottom that resets game score

@interface ViewController () <UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *player1;
@property (weak, nonatomic) IBOutlet UILabel *player2;

@property (nonatomic) int score1;
@property (nonatomic) int score2;

@end

@implementation ViewController
{
    int playerTurn;
    
    NSMutableArray * squares;
    NSMutableArray * buttons;
    
    NSArray * playerColors;
    
}

- (void)setScore1:(int)score1 {
    
    self.player1.text = [NSString stringWithFormat:@"Player1 :%d",score1];
    _score1 = score1;
    
}


- (void)setScore2:(int)score2
{
    self.player2.text = [NSString stringWithFormat:@"Player2 :%d",score2];
    _score2 = score2;

    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    playerColors = @[
                     [UIColor lightGrayColor],
                     [UIColor magentaColor],
                     [UIColor cyanColor]
                     ];
    
    
    // Do any additional setup after loading the view, typically from a nib.
    
    buttons =[@[] mutableCopy];
    
    playerTurn = 1;
    
    squares = [@[
                 @0,@0,@0,
                 @0,@0,@0,
                 @0,@0,@0,
                 ] mutableCopy];
    
    
    int rowCount = 3;
    int colCount = 3;
    
    CGFloat width = 100;
    CGFloat height = 100;
    
    int buttonCount = 0;
    
    for (int r = 0; r < rowCount; r++) {
        
        //loop per row
        
        for (int c = 0; c < colCount; c++) {
            
            
            //loop per column
            
            CGFloat x = c * (width + 10) + (SCREEN_WIDTH - 320) / 2;
            CGFloat y = r * (width + 10) + (SCREEN_HEIGHT - 320) /2;
            
            UIButton * button = [[UIButton alloc] initWithFrame:CGRectMake(x, y, width, height)];
            
            button.backgroundColor = playerColors[0];
            
            //[button setTitle:[NSString stringWithFormat:@"%d",buttonCount] forState:UIControlStateNormal];
            
            
            button.tag = buttonCount;
            
            [button addTarget:self action:@selector(squareTapped:) forControlEvents:UIControlEventTouchUpInside];
            
            
            button.layer.cornerRadius = height/2;
            button.alpha = 0.6;
            
            
            [self.view addSubview:button];
            [buttons addObject:button];
            
            
            buttonCount++;
            
            
//            {
//                
//                if (self.button == playerTurn) {
//                    
//                    [self.button setBackgroundColor:[UIColor redColor]];
//                    [self.button setBackgroundColor:[UIColor greenColor]];
//                    
//                }else{
//                    
//                    [self.button setBackgroundColor:[UIColor greenColor]];
//                    [self.button setBackgroundColor:[UIColor redColor]];
//                    
//                }
            
            
        }
    }
    //NSLog(@"subView count %@", self.view.subviews);
    
    
    //_player2.textAlignment = NSTextAlignmentRight;
    //_player1.textAlignment = NSTextAlignmentLeft;

    self.score1 = 0;
    self.score2 = 0;

}


-(void)squareTapped:(UIButton *)button {
    
    if ([squares[button.tag] intValue] != 0)  {return; }
    
    
    squares[button.tag] = @(playerTurn);
    
    
    // set button color based on who is current player
    if (playerTurn == 1) {
        button.backgroundColor = [UIColor redColor];
    } else {
        button.backgroundColor = [UIColor greenColor];
    }
    //[button setTitle:[NSString stringWithFormat:@"%d",playerTurn] forState:UIControlStateNormal];
    
    
    button.backgroundColor = playerColors[playerTurn];
    
    playerTurn = (playerTurn == 2) ? 1 : 2;
    
    
    [self checkForWin];
    
//    NSLog(@"button tapped %d",(int)button.tag);
    
    
}

-(void)checkForWin {
    
    NSArray * posibilities = @[
                               //rows
                               @[@0,@1,@2],
                               @[@3,@4,@5],
                               @[@6,@7,@8],
                               //columns
                               @[@0,@3,@6],
                               @[@1,@4,@7],
                               @[@2,@5,@8],
                               //diagonals
                               @[@0,@4,@8],
                               @[@2,@4,@6],
                               ];
    
    for (NSArray * possibility in posibilities) {
        
        
        [self checkPossibility:possibility withPlayer:1];
        [self checkPossibility:possibility withPlayer:2];
//        
//        BOOL player1InSquare1 = ([squares[[possibility[0] intValue]]intValue] ==1);
//        BOOL player1InSquare2 = ([squares[[possibility[1] intValue]]intValue] ==1);
//        BOOL player1InSquare3 = ([squares[[possibility[2] intValue]]intValue] ==1);
//        
//                                
//        if (player1InSquare1 && player1InSquare2 && player1InSquare3) {
//            
//            // player 1 win
//            
//            NSLog(@"Player 1 Won");
//        }
//        
//        
//        BOOL player2InSquare1 = ([squares[[possibility[0] intValue]]intValue] ==2);
//        BOOL player2InSquare2 = ([squares[[possibility[1] intValue]]intValue] ==2);
//        BOOL player2InSquare3 = ([squares[[possibility[2] intValue]]intValue] ==2);
//        
//        
//        if (player2InSquare1 && player2InSquare2 && player2InSquare3) {
//            
//            // player 2 win
//            
//            NSLog(@"Player 2 Won");
    }
}

-(void)checkPossibility:(NSArray *)possibility withPlayer:(int)player {
        
        BOOL player1InSquare1 = ([squares[[possibility[0] intValue]]intValue] ==player);
        BOOL player1InSquare2 = ([squares[[possibility[1] intValue]]intValue] ==player);
        BOOL player1InSquare3 = ([squares[[possibility[2] intValue]]intValue] ==player);
        
        
        if (player1InSquare1 && player1InSquare2 && player1InSquare3) {
            
            
            switch (player) {
                case 1:
                    
                    self.score1++;
                    
                    break;
                    
                case 2:
                    
                    self.score2++;
                    
                    
                    break;
            }
            
            
            
            
            
            NSLog(@"Player %d Won",player);
            
            NSString * message = [NSString stringWithFormat:@"Player %d Won", player];
            
            UIAlertView * alertView = [[UIAlertView alloc] initWithTitle:@"Winner" message:message delegate:self cancelButtonTitle:@"Play Again Now!" otherButtonTitles:nil];
            
            [alertView show];
        }
    
    
        
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    //square titles
    //player turn = 1
    
    for (UIButton * button in buttons) {
        
        button.backgroundColor = [UIColor blueColor];
    }
    
    playerTurn = 1;
    
    squares = [@[
                 @0,@0,@0,
                 @0,@0,@0,
                 @0,@0,@0,
                 ] mutableCopy];
    
    NSLog(@"Play Again");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
