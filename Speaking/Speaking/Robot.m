//
//  Robot.m
//  Speaking
//
//  Created by User on 1/13/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import "Robot.h"

@implementation Robot
//{
//    int powerLevel;
//}



-(void)cleanHouse {
    
    int rooms = [self.delegate howManyRoomsDoIHaveToClean];
    
    NSLog(@"Robot starts cleaning %d rooms",rooms);
    
}


-(void)dance {
    
    NSString * danceStyle = [self.delegate whatTypeOfDance];
    
    NSLog(@"Robot starts to %@",danceStyle);
    
    
}

-(void)checkPower {
    
}


@end
