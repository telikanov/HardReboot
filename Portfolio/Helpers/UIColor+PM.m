//
//  UIColor+PM.m
//  Portfolio
//
//  Created by Алексей Теликанов on 15.11.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import "UIColor+PM.h"

@implementation UIColor (PM)

+ (UIColor *)colorWithHexString:(NSString *)hexStr alpha:(CGFloat)alpha;
{
    unsigned int hexint = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexStr];
    [scanner setCharactersToBeSkipped:[NSCharacterSet
                                       characterSetWithCharactersInString:@"#"]];
    [scanner scanHexInt:&hexint];
    UIColor *color = [UIColor colorWithRed:((CGFloat) ((hexint & 0xFF0000) >> 16))/255
                                     green:((CGFloat) ((hexint & 0xFF00) >> 8))/255
                                      blue:((CGFloat) (hexint & 0xFF))/255
                                     alpha:alpha];
    return color;
}

@end
