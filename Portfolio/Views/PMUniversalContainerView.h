//
//  PMUniversalContainer.h
//  Portfolio
//
//  Created by Алексей Теликанов on 06.12.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PMNibLinkableView/PMNibLinkableView.h"

@interface PMUniversalContainerView : PMNibLinkableView

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UITextField *fieldToFill;

@end
