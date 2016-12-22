//
//  PMModalCaseMainBoard.m
//  Portfolio
//
//  Created by Алексей Теликанов on 10.11.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import "PMServer.h"

@implementation PMServer

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"idx": @"id",
             @"name": @"name",
             @"status": @"status",
             };
}

@end
