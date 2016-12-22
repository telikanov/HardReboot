//
//  PMCaseMainBoard.h
//  Portfolio
//
//  Created by Алексей Теликанов on 07.11.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PMNibLinkableView/PMNibLinkableView.h"

@class PMCaseView;

@protocol PMCaseViewDelegate <NSObject>

- (void)caseView:(PMCaseView *)caseView idx:(NSNumber *)idx;

@end

@interface PMCaseView : PMNibLinkableView

@property (nonatomic, weak) id<PMCaseViewDelegate> delegate;
@property (nonatomic, weak) IBOutlet UIImageView *backgroungImageView;
@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *descriptionLabel;
@property (nonatomic, strong) NSNumber *idx;

@end

