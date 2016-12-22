//
//  UIView+PM.m
//  Portfolio
//
//  Created by Алексей Теликанов on 07.11.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import "UIView+PM.h"


@implementation UIView (PM)

- (void)setBorderWidh:(CGFloat)borderWidh
{
    self.layer.borderWidth = borderWidh;
}

- (CGFloat)borderWidh
{
    return self.layer.borderWidth;
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

@end
