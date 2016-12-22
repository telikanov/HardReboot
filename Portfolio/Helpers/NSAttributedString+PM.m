//
//  NSAttributedString+PM.m
//  Portfolio
//
//  Created by Алексей Теликанов on 25.11.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import "NSAttributedString+PM.h"

@implementation NSAttributedString (PM)

+ (NSAttributedString *)attributedStringWith:(NSString *)text textColor:(UIColor *)textColor substring:(NSString *)substring
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:text];
    NSRange range = [text rangeOfString:substring];
    [attributedString setAttributes:@{NSForegroundColorAttributeName:textColor} range:range];
    return attributedString;

}

@end
