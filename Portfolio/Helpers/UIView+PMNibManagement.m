//
//  UIView+PMNibManagement.m
//  Portfolio
//
//  Created by Алексей Теликанов on 09.11.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import "UIView+PMNibManagement.h"

@implementation UIView (PMNibManagement)

+ (instancetype)viewFromNib
{
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([self class]) bundle:nil];
    id view = [nib instantiateWithOwner:nil options:nil].firstObject;
    return view;
}

@end
