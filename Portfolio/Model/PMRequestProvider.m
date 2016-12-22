//
//  PMRequestProvider.m
//  Portfolio
//
//  Created by Алексей Теликанов on 06.12.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import "PMRequestProvider.h"

@implementation PMRequestProvider


- (NSDictionary *)makeContainer
{    
    NSDictionary *cotainer = @{@"Телефон":@"+7 (906) 123 45 67",
                               @"Как к вам обращаться":@"Мария",
                               @"Email":@"example@gmail.com"};
    return cotainer;
}

@end
