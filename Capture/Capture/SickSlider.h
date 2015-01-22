//
//  SickSlider.h
//  Capture
//
//  Created by User on 1/21/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SickSliderDelegate;

IB_DESIGNABLE

@interface SickSlider : UIView

@property (nonatomic) IBInspectable float startPosition;

@property (nonatomic,assign) id <SickSliderDelegate> delegate;

@property (nonatomic) IBInspectable UIColor * sliderColor;

@property (nonatomic) IBInspectable BOOL reverseColor;

@end

@protocol SickSliderDelegate <NSObject>

- (void)sliderDidFinishUpdatingWithValue:(float)value;

@end