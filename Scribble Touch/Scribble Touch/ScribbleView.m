//
//  ScribbleView.m
//  Scribble Touch
//
//  Created by User on 1/14/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import "ScribbleView.h"

@implementation ScribbleView

//  @[
//
//    @[
//        @"type":@"path",
//        @"fillColor": [UIColor greenColor],
//        @"strokeColor": [UIColor blackColor],
//        @"strokeWidth": @2,
//        @"points": @[point,point,point]
//  },
//
//    @[
//        @"type":@"circle",
//        @"fillColor": [UIColor greenColor],
//        @"strokeColor": [UIColor blackColor],
//        @"strokeWidth": @2,
//        @"frame": CGRect
//  }
//
//   ];


- (NSMutableArray *)scribbles {
    
    if (_scribbles == nil) {_scribbles = [@[] mutableCopy]; }
    
    return _scribbles;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineJoin(context, kCGLineJoinRound);
    CGContextSetLineCap(context, kCGLineCapRound);
    
    
    
    
    
    
    for (NSDictionary * scribble in self.scribbles) {
        
        CGContextSetLineWidth(context, [scribble[@"strokeWidth"] floatValue]);
        
        UIColor * strokeColor = scribble[@"strokeColor"];
        [strokeColor set];
        
        
        CGPoint firstPoint = [scribble[@"points"][0] CGPointValue];
        CGContextMoveToPoint(context, firstPoint.x, firstPoint.y);
        
        for (NSValue * pointValue in scribble[@"points"]) {
            
            CGPoint point = [pointValue CGPointValue];CGContextAddLineToPoint(context, point.x, point.y);
            
            
        }
        
        CGContextStrokePath(context);
        
        
        UIColor * fillColor = scribble[@"fillColor"];
        [fillColor set];
        
        
        CGContextMoveToPoint(context, firstPoint.x, firstPoint.y);
        
        for (NSValue * pointValue in scribble[@"points"]) {
            
            CGPoint point = [pointValue CGPointValue];CGContextAddLineToPoint(context, point.x, point.y);
            
            
        }
        
        CGContextFillPath(context);
        
        

    }
    
    
    // Drawing code


}
@end
