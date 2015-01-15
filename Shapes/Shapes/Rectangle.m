//
//  Rectangle.m
//  Shapes
//
//  Created by User on 1/13/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import "Rectangle.h"

IB_DESIGNABLE

@implementation Rectangle


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    

//        [super drawRect:rect];
//        CGRect rectangle = CGRectMake(0, 100, 320, 100);
//        CGContextRef context = UIGraphicsGetCurrentContext();
//        CGContextSetRGBFillColor(context, 1.0, 0.0, 0.0, 1.0);
//        CGContextSetRGBStrokeColor(context, 1.0, 0.0, 0.0, 1.0);
//          CGContextFillRect(context, rectangle);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [self.fillColor set];
    
    CGContextMoveToPoint(context, 0, 0);
    
    CGContextAddLineToPoint(context, rect.size.width, 0);
    CGContextAddLineToPoint(context, rect.size.width, rect.size.height);
    CGContextAddLineToPoint(context, 0, rect.size.height);
    CGContextAddLineToPoint(context, 0, 0);
    
    
    CGContextFillPath(context);

//        CGContextRef context = UIGraphicsGetCurrentContext();
//        CGContextClearRect(context, rect);
//        CGContextSetStrokeColorWithColor(context, [UIColor whiteColor].CGColor);
//        CGContextSetLineWidth(context, 5.0);
//        CGContextMoveToPoint(context, 100.0,0.0);
//        CGContextAddLineToPoint(context,100.0, 100.0);
//        CGContextStrokePath(context);
    
    
    }


@end
