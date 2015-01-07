//
//  Ears.h
//  Human
//
//  Created by User on 1/6/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ears : NSObject

@property (nonatomic) NSArray * ridges;
@property (nonatomic) int size;


- (void)listenSound:(NSString *)sound;
- (void)startBleeding:(NSString *)bleed;


@end
