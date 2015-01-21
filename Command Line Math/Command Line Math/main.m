//
//  main.m
//  Command Line Math
//
//  Created by User on 1/17/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        
        int firstNumber = 2;
        int secondNumber = 3;
        int totalSum = 0;
        firstNumber = firstNumber + 1;
        secondNumber = firstNumber + 1;
        totalSum = firstNumber + secondNumber;
        NSLog(@"%d", totalSum);
        
        
        int greg = 6;
        int kathy = 5;
        int total = 0;
        total = greg * kathy;
        NSLog(@"%d", total);
        
        float num1 = 4.56;
        float square = 0;
        square = num1 * num1;
        NSLog(@"%f", square);
        
        float num3 = 4.25;
        float num4 = 1.75;
        int result = 0;
        result = num3 - num4;
        NSLog(@"%d", result);
        
        
        
        
        
        
        NSLog(@"The program has terminated successfully");
    }
    return 0;
}
