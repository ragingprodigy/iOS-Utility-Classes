//
//  OORadialGradientView.m
//  QuartzGLDemo
//
//  Created by Omonayajo Oladapo Adeola on 10/27/15.
//  Copyright © 2015 Oonayajo. All rights reserved.
//

#import "OORadialGradientView.h"

@implementation OORadialGradientView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing Code
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // Draw A Gradient from yellow to Orange
    NSArray *colors = [NSArray arrayWithObjects:(id)[UIColor yellowColor].CGColor, (id)[UIColor orangeColor].CGColor, nil];
    
    CGColorSpaceRef myColorspace=CGColorSpaceCreateDeviceRGB();
    
    CGGradientRef myGradient = CGGradientCreateWithColors(myColorspace, (CFArrayRef) colors, nil);
    
    double circleWidth = self.viewForBaselineLayout.frame.size.width;
    double circleHeight = self.viewForBaselineLayout.frame.size.height;
    
    CGPoint theCenter = CGPointMake(circleWidth/2, circleHeight/2);
    
    CGGradientDrawingOptions options = kCGGradientDrawsBeforeStartLocation;
    CGContextDrawRadialGradient(context, myGradient, theCenter, 0.0, theCenter, circleHeight/1.3, options);
}

@end
