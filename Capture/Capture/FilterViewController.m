//
//  FilterViewController.m
//  Capture
//
//  Created by User on 1/20/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import "FilterViewController.h"

//add segment controller for choosing front or rear camera
    //Add target method that changes the camera device

//Add methods to allow for video capture and stopping

//Add a UICollectionView to filterVC at the bottom of the storyboard (1 row of square filters)





@interface FilterViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *filterImageView;

@end

@implementation FilterViewController

- (void) setOriginalImage:(UIImage *)originalImage {
    
    self.filterImageView.image = originalImage;
    
    _originalImage = originalImage;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.filterImageView.image = self.originalImage;
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
