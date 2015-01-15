//
//  ViewController.m
//  Shapes
//
//  Created by User on 1/13/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import "ViewController.h"
#import "Rectangle.h"
#import "Triangle.h"
#import "Ellipse.h"

//Make 3 classes based on UIView (rectangle, ellipse, triangle)

//uncomment the drawRect function

//google CGContext drawing in drawRect

//10 different shapes with different colors



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    Rectangle *rectangle1 = [[Rectangle alloc] initWithFrame:CGRectMake(10, 10, 20, 20)];
    rectangle1.backgroundColor = [UIColor clearColor]; 
    [self.view addSubview:rectangle1];
    
    Rectangle *rectangle2 = [[Rectangle alloc] initWithFrame:CGRectMake(50, 50, 20, 20)];
    rectangle2.backgroundColor = [UIColor clearColor];
    [self.view addSubview:rectangle2];
    
    Rectangle *rectangle3 = [[Rectangle alloc] initWithFrame:CGRectMake(90, 90, 20, 20)];
    rectangle3.backgroundColor = [UIColor clearColor];
    [self.view addSubview:rectangle3];
    
    Rectangle *rectangle4 = [[Rectangle alloc] initWithFrame:CGRectMake(130, 130, 20, 20)];
    rectangle4.backgroundColor = [UIColor clearColor];
    [self.view addSubview:rectangle4];
    
    
    
    Triangle *triangle1 = [[Triangle alloc] initWithFrame:CGRectMake(170, 170, 20, 20)];
    triangle1.backgroundColor = [UIColor clearColor];
    [self.view addSubview:triangle1];
    
    Triangle *triangle2 = [[Triangle alloc] initWithFrame:CGRectMake(210, 210, 20, 20)];
    triangle2.backgroundColor = [UIColor clearColor];
    [self.view addSubview:triangle2];

    Triangle *triangle3 = [[Triangle alloc] initWithFrame:CGRectMake(250, 250, 20, 20)];
    triangle3.backgroundColor = [UIColor clearColor];
    [self.view addSubview:triangle3];
    
    
    Ellipse *ellipse1 = [[Ellipse alloc] initWithFrame:CGRectMake(250, 290, 20, 20)];
    ellipse1.backgroundColor = [UIColor clearColor];
    [self.view addSubview:ellipse1];
    
    Ellipse *ellipse2 = [[Ellipse alloc] initWithFrame:CGRectMake(210, 330, 20, 20)];
    ellipse2.backgroundColor = [UIColor clearColor];
    [self.view addSubview:ellipse2];
    
    Ellipse *ellipse3 = [[Ellipse alloc] initWithFrame:CGRectMake(170, 370, 20, 20)];
    ellipse3.backgroundColor = [UIColor clearColor];
    [self.view addSubview:ellipse3];
    
    
    

    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

