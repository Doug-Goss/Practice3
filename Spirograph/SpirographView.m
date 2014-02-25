//
//  SpirographView.m
//  Spirograph
//
//  Created by Doug Goss on 2/21/14.
//  Copyright (c) 2014 Michael Toth. All rights reserved.
//

#import "SpirographView.h"


@implementation SpirographView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGFloat x,y;
    CGFloat r = 120;
    CGFloat t = 0.0;
    UIBezierPath *bp = [[UIBezierPath alloc]init];
    
    x = 140 + r*((1-_k)*cos(t) + _l*_k*cos((1-_k/_k)*t));
    y = 140 + r*((1-_k)*sin(t) - _l*_k*sin((1-_k/_k)*t));
    CGPoint p = CGPointMake(x, y);
    [bp moveToPoint:p];
    
    for (t=0; t<(self.numberOfSteps * self.stepSize); t+= _stepSize) {
        x = 140 + r*((1-_k)*cos(t) + _l*_k*cos((1-_k/_k)*t));
        y = 140 + r*((1-_k)*sin(t) - _l*_k*sin((1-_k/_k)*t));
        CGPoint p = CGPointMake(x, y);
        [bp addLineToPoint:p];
    }
    
    [bp stroke];
    
    
}


@end
