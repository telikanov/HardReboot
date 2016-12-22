//
//  PMModalCaseMainBoard.h
//  Portfolio
//
//  Created by Алексей Теликанов on 10.11.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface PMServer : MTLModel<MTLJSONSerializing>

@property (nonatomic, strong, readonly) NSString *name;
@property (nonatomic, strong, readonly) NSString *status;
@property (nonatomic, strong, readonly) NSNumber *idx;

+ (NSDictionary *)JSONKeyPathsByPropertyKey;

@end
