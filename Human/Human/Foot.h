//
//  Foot.h
//  Human
//
//  Created by User on 1/6/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import <Foundation/Foundation.h>


@class Toe;

@interface Foot : NSObject

@property (nonatomic) Toe * firstToe;
@property (nonatomic) Toe * secondToe;
@property (nonatomic) Toe * thirdToe;
@property (nonatomic) Toe * fourthToe;
@property (nonatomic) Toe * fifthToe;


- (void)footSize: (int) size;
- (void)degreeOfSmell:(NSString *)smell;
@end