//
//  Triangle.m
//  Shapes
//
//  Created by User on 1/13/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import "Triangle.h"

IB_DESIGNABLE

@implementation Triangle


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [self.fillColor set];
    
    CGContextMoveToPoint(context, 0, 0);
    
    CGContextAddLineToPoint(context, rect.size.width/2, 0);
    CGContextAddLineToPoint(context, rect.size.width, rect.size.height);
    CGContextAddLineToPoint(context, 0, rect.size.height);
    CGContextAddLineToPoint(context, rect.size.width/2, 0);
    
    CGContextFillPath(context);
    // Drawing code

}

@end
