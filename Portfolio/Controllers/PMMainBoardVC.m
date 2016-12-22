//
//  PMMainBoadrdVC.m
//  Portfolio
//
//  Created by Алексей Теликанов on 26.10.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import "PMMainBoardVC.h"
#import "PMServerInfoView.h"
#import "UIView+PMNibManagement.h"
#import "PMServerProvider.h"
#import "UIColor+PM.h"
#import "PMSocialsView.h"
#import "PMServer.h"

@interface PMMainBoardVC () <PMServerInfoViewDelegate>

@property (nonatomic, weak) IBOutlet UIStackView *stackView;
@property (nonatomic, strong) PMServerProvider *serverProvider;

@end

@implementation PMMainBoardVC

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        self.serverProvider = [PMServerProvider new];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setContenView];
}

#pragma mark - PMCaseViewDelegate

- (void)serverView:(PMServerInfoView *)serverView idx:(NSNumber *)idx
{
    NSLog(@"Too %@", idx);
    
}


- (void)setContenView
{
    NSArray *servers = [self.serverProvider servers];
    for (PMServer *currentServer in servers) {
        PMServerInfoView *serverInfo = [PMServerInfoView viewFromNib];
        serverInfo.delegate = self;
        serverInfo.idx = currentServer.idx;
        serverInfo.serverNameLabel.text = currentServer.name;
        [serverInfo.statusServerSwitch setOn:[currentServer.status boolValue]];
        [self.stackView insertArrangedSubview:serverInfo atIndex:0];
    }
}

@end
