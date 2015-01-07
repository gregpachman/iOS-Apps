//
//  Leg.h
//  Human
//
//  Created by User on 1/6/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Foot;

@interface Leg : NSObject

@property (nonatomic) Foot * rightFoot;
@property (nonatomic) Foot * leftFoot;

@end
