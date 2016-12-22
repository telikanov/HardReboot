//
//  PMCaseMainBoard.m
//  Portfolio
//
//  Created by Алексей Теликанов on 07.11.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import "PMCaseView.h"

@interface PMCaseView ()

@end

@implementation PMCaseView

- (IBAction)didTapForButton:(id)sender
{
    [self.delegate caseView:self idx:self.idx];
}

@end
