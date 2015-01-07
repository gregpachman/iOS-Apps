//
//  Body.h
//  Human
//
//  Created by User on 1/6/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import <Foundation/Foundation.h>



@class Arm;
@class Leg;
@class Neck;
@class Head;

@interface B : NSObject

@property (nonatomic) Arm * rightArm;
@property (nonatomic) Arm * leftArm;
@property (nonatomic) Leg * rightLeg;
@property (nonatomic) Leg * leftLeg;
@property (nonatomic) Head * myHead;
@property (nonatomic) Neck * myNeck;

@end
