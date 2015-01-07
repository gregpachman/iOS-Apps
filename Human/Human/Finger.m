//
//  Finger.m
//  Human
//
//  Created by User on 1/6/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import "Finger.h"

@implementation Finger

@synthesize fingerPrint = _fingerPrint;


-(NSString *)fingerPrint {
    
    return _fingerPrint;
    
}

    
    -(void)setFingerPrint:(NSString *)fingerPrint {
        
        _fingerPrint = fingerPrint;
}



@end
