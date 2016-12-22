//
//  PMDataProvider.m
//  Portfolio
//
//  Created by Алексей Теликанов on 10.11.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import "PMServerProvider.h"

@interface PMServerProvider() 

@end

@implementation PMServerProvider

- (NSArray *)rawCases
{
    NSString *pathFile = [[NSBundle mainBundle] pathForResource:@"LocalServer" ofType:@"json"];
    NSData *jsonData =[NSData dataWithContentsOfFile:pathFile];
    NSError *error = nil;
    NSArray *rawServers = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&error];
    NSAssert(!error, @"raw");
    return rawServers;
}

- (NSArray *)servers
{
    NSMutableArray *servers = [[NSMutableArray alloc] init];
    NSArray *rawCases = [self rawCases];
    
    for (NSDictionary *rawCase in rawCases) {
        NSError *error = nil;
        PMServer *serverModal = [MTLJSONAdapter modelOfClass:[PMServer class] fromJSONDictionary:rawCase error:&error];
        NSAssert(!error, @"Invalid cases JSON");
        [servers addObject:serverModal];
    }
    return servers;
}

@end
