//
//  PMServerInfoView.h
//  Portfolio
//
//  Created by Алексей Теликанов on 23.12.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PMNibLinkableView/PMNibLinkableView.h"

@class PMServerInfoView;

@protocol PMServerInfoViewDelegate <NSObject>
    
- (void)serverView:(PMServerInfoView *)serverView idx:(NSNumber *)idx;
    
    @end

@interface PMServerInfoView : PMNibLinkableView
    @property (nonatomic, weak) id<PMServerInfoViewDelegate> delegate;
    @property (weak, nonatomic) IBOutlet UILabel *serverNameLabel;
    @property (weak, nonatomic) IBOutlet UISwitch *statusServerSwitch;
    @property (nonatomic, strong) NSNumber *idx;

@end
