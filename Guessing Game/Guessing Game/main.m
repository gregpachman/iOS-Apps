//
//  main.m
//  Guessing Game
//
//  Created by User on 1/17/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int randomNumber = 1;
        int userGuess = 1;
        BOOL continueGuessing = true;
        BOOL keepPlaying = true;
        char yesNo = ' ';
        
        while (keepPlaying)
        {
            randomNumber = (arc4random() % 101);
            NSLog(@"The random number to continue guessing is %d", randomNumber);
            while (continueGuessing)
            {
                NSLog(@"Pick a number between 1 and 100 ");
                scanf("%i", &userGuess);
                fgetc(stdin);
                if
                    (userGuess == randomNumber){
                
                continueGuessing = false;
                NSLog(@"Correct Answer!");
                        
            }
            else if (userGuess > randomNumber)
            {
               NSLog(@"Your Guess is too high");
            }
            else
            {
                NSLog(@"Your Guess is too low");
                
            }
                NSLog(@"User Guessed %d", userGuess);
                
                
            }
            
            NSLog(@"Play Again? Y or N");
            
            yesNo = (fgetc(stdin));
                     
                     if (yesNo == 'N'|| yesNo == 'n')
                     
                     {
                         keepPlaying = false;
                     }
                     continueGuessing = true;
                     
                     }
                     
        
        
        
        
    }
    return 0;
}
