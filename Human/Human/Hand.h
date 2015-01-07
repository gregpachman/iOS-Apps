//
//  Hand.h
//  Human
//
//  Created by User on 1/6/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Thumb;
@class Finger;

@interface Hand : NSObject

@property (nonatomic) Finger * firstFinger;
@property (nonatomic) Finger * secondFinger;
@property (nonatomic) Finger * thirdFinger;
@property (nonatomic) Finger * fourthFinger;

@property (nonatomic) Finger * thumb;


@end
