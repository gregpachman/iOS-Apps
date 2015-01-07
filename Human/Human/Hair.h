//
//  Hair.h
//  Human
//
//  Created by User on 1/6/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hair : NSObject

@property (nonatomic) NSArray * strands;
@property (nonatomic) BOOL isShort;

- (void)combHair:(NSString *)comb;
- (void)dyeHair:(NSString *)dye;





@end




