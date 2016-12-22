//
//  NSAttributedString+PM.h
//  Portfolio
//
//  Created by Алексей Теликанов on 25.11.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSAttributedString (PM)

+ (NSAttributedString *)attributedStringWith:(NSString *)text textColor:(UIColor *)textColor substring:(NSString *)substring;

@end
