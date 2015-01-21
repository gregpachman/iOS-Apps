//
//  GameSceneViewController.m
//  MemoryGame01
//
//  Created by User on 1/16/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import "GameSceneViewController.h"

@interface GameSceneViewController ()

@property UIImage *blankTileImage;
@property UIImage *backTileImage;
@property NSMutableArray *tiles;
@property NSMutableArray *tileshufflenumbers;
@property NSInteger matchCounter;
@property NSInteger guessCounter;
@property NSInteger tileFlipped;
@property UIButton *tile1;
@property UIButton *tile2;
@property NSMutableArray *shuffledTiles;
- (void)shuffleTiles;
- (void)resetTiles;
- (void) winner;

@end

@implementation GameSceneViewController

static bool isDisabled = false;
static bool isMatch = false;


- (IBAction) tileClicked: (id) sender {
    
    if(isDisabled == true)
        return;
    
    int senderID = [sender tag];
    
    if(self.tileFlipped >= 0 && senderID != self.tileFlipped)
        self.tile2 = sender;
    
    UIImage *lastImage = [self.tiles objectAtIndex: self.
                          tileFlipped];
    UIImage *tileImage = [self.tiles objectAtIndex:senderID];
    //NSLog(@"Our ID is: %d", senderID);
    
    [sender setImage: tileImage forState:UIControlStateNormal];
    //Increase the guessCounter by 1.
    self.guessCounter++;
    
    if(tileImage == lastImage) {
        [self.tile1 setEnabled:false];
        [self.tile2 setEnabled:false];
         self.matchCounter++;
        
        isMatch = true;
        isDisabled = true;
        
    [NSTimer scheduledTimerWithTimeInterval:1.0
                                     target:self
                                   selector:@selector(resetTiles)
                                   userInfo:nil
                                    repeats:NO];
            self.tileFlipped = 0;
        
    }
    
    else {self.tileFlipped = senderID;
        self.tile1 = sender;
    
    UIImage *tileImage = [self.tiles objectAtIndex: senderID];
    [sender setImage: tileImage forState:UIControlStateNormal];
}
    
    self.gameScoreLabel.text = [NSString stringWithFormat:@"Matches: %d Guesses: %d", self.matchCounter, self.guessCounter];
                                }
    
- (void)resetTiles
{
 
    if(isMatch)
    {
        [self.tile1 setImage: self.blankTileImage
                    forState:UIControlStateNormal];
        [self.tile2 setImage: self.blankTileImage
                    forState:UIControlStateNormal];
    } else {
        [self.tile1 setImage: self.backTileImage
                    forState:UIControlStateNormal];
        [self.tile2 setImage: self.backTileImage
                 forState:UIControlStateNormal];
    }
    
    
    isDisabled = false;
    isMatch = false;
    
    if(self.matchCounter == (self.tiles.count/2))
        [self gameWon];
}

-(void)  gameWon;
{
    self.gameScoreLabel.text = [NSString stringWithFormat:@"You won with %d Guesses", self.guessCounter];
                                }
                                -(void) viewWillDisappear:(BOOL)animated
                                {
                                 [super viewWillDisappear:animated];
                                }





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.backTileImage = [UIImage imageNamed:@"GPLogo20090203.jpg"];
    self.blankTileImage = [UIImage imageNamed:@"black.png"];
    self.tileFlipped = 0;
    self.matchCounter = 0;
    self.guessCounter = 0;
    
    self.gameScoreLabel.text = [NSString stringWithFormat:@"Matches: %d Guesses: %d", self.matchCounter, self.guessCounter];
    
    
    self.tiles = [[NSMutableArray alloc] initWithObjects:
                  [UIImage imageNamed:@"IMG1"],
                  [UIImage imageNamed:@"IMG2"],
                  [UIImage imageNamed:@"IMG3"],
                  [UIImage imageNamed:@"IMG4"],
                  [UIImage imageNamed:@"IMG5"],
                  [UIImage imageNamed:@"IMG6"],
                  [UIImage imageNamed:@"IMG7"],
                  [UIImage imageNamed:@"IMG8"],
                  [UIImage imageNamed:@"IMG9"],
                  [UIImage imageNamed:@"IMG10"],
                  [UIImage imageNamed:@"IMG11"],
                  [UIImage imageNamed:@"IMG12"],
                  [UIImage imageNamed:@"IMG13"],
                  [UIImage imageNamed:@"IMG14"],
                  [UIImage imageNamed:@"IMG15"],
                  nil];
    
  [self shuffleTiles];
    
}

 -(void) shuffleTiles
{

    int tileCount = [self.tiles count];
    for (int tileID = 0; tileID < (tileCount/2); tileID++)
    {
        [self.shuffledTiles addObject:[NSNumber numberWithInt:tileID]];
        [self.shuffledTiles addObject:[NSNumber numberWithInt:tileID]];
    }


    for (NSUInteger i = 0; i < tileCount; ++i) {
            NSInteger nElements = tileCount - i;
            NSInteger n = (arc4random() % nElements) + i;
        [self.shuffledTiles exchangeObjectAtIndex:i withObjectAtIndex:n];
        [self.tiles exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
