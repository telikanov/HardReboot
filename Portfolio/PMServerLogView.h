//
//  PMServerLogView.h
//  Portfolio
//
//  Created by Алексей Теликанов on 23.12.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PMNibLinkableView/PMNibLinkableView.h"

@interface PMServerLogView : PMNibLinkableView
    @property (weak, nonatomic) IBOutlet UILabel *serverDataLabel;
    @property (weak, nonatomic) IBOutlet UILabel *serverNameLabel;

@end
