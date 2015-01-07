//
//  Mouth.h
//  Human
//
//  Created by User on 1/6/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Mouth : NSObject

@property (nonatomic) NSArray * teeth;
@property (nonatomic) int size;


- (void)eatFood:(NSString *)food;
- (void)projectileVomit:(NSString *)vomit;

@end
