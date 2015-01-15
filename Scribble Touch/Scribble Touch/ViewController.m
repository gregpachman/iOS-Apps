//
//  ViewController.m
//  Scribble Touch
//
//  Created by User on 1/14/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import "ViewController.h"
#import "ScribbleView.h"

@interface ViewController ()

@end

@implementation ViewController

{
    NSMutableDictionary * currentScribble;
    UIColor * selectedColor;
    int selectedStrokeWidth;
    UIColor * fillColor;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    selectedColor = [UIColor blackColor];
    selectedStrokeWidth = 1;
    fillColor = [UIColor clearColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)changeColor:(UIButton *)sender {

    selectedColor = sender.backgroundColor;

}

- (IBAction)changeStrokeWidth:(UISlider *)sender {

    selectedStrokeWidth = sender.value;

}


- (IBAction)changeFillColor:(UIButton *)sender {
    
    fillColor = sender.backgroundColor;
}







-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch * touch = touches.allObjects.firstObject;
    
    CGPoint location = [touch locationInView: self.view];
    
    NSLog(@"x %f y %f",location.x,location.y);
    
    
    
    currentScribble = [@{
                         @"type":@"path",
                         @"fillColor": fillColor,
                         @"strokeColor": selectedColor,
                         @"strokeWidth":@(selectedStrokeWidth),
                         @"points":[@[[NSValue valueWithCGPoint:location]] mutableCopy]
                         }mutableCopy];
    
    ScribbleView * sView = (ScribbleView *)self.view;
    
    [sView.scribbles addObject:currentScribble];
    
    //[((ScribbleView *)self.view).scribbles addObject:currentScribble];
    
    
    
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch * touch = touches.allObjects.firstObject;
    
    CGPoint location = [touch locationInView: self.view];

    [currentScribble[@"points"] addObject:[NSValue valueWithCGPoint:location]];
    
    [self.view setNeedsDisplay];
    
    
}


@end
