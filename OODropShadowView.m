//
//  OODropShadowView.m
//  QuartzGLDemo
//
//  Created by Omonayajo Oladapo Adeola on 10/27/15.
//  Copyright © 2015 lawpavilion. All rights reserved.
//

#import "OODropShadowView.h"

@implementation OODropShadowView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIBezierPath *shadowPath = [UIBezierPath bezierPathWithRect: self.viewForBaselineLayout.bounds];
    self.viewForBaselineLayout.layer.masksToBounds = NO;
    self.viewForBaselineLayout.layer.shadowColor = [UIColor blackColor].CGColor;
    self.viewForBaselineLayout.layer.shadowOffset = CGSizeMake(0.0f, 5.0f);
    self.viewForBaselineLayout.layer.shadowOpacity = 0.5f;
    self.viewForBaselineLayout.layer.shadowPath = shadowPath.CGPath;
}

@end
