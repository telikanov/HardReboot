//
//  PMServerInfoView.m
//  Portfolio
//
//  Created by Алексей Теликанов on 23.12.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import "PMServerInfoView.h"

@implementation PMServerInfoView
    
- (IBAction)didTapForButton:(id)sender
    {
        [self.delegate serverView:self idx:self.idx];
    }

@end
