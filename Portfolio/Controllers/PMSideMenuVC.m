//
//  PMLeftMenuVC.m
//  Portfolio
//
//  Created by Алексей Теликанов on 25.10.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import "PMSideMenuVC.h"
#import "PMApplicationRouter.h"
#import "PMMenuButton.h"
#import "UIColor+PM.h"

@interface PMSideMenuVC ()

@property(nonatomic, strong) PMApplicationRouter *router;
@property (weak, nonatomic) IBOutlet PMMenuButton *caseButton;
@property (weak, nonatomic) IBOutlet PMMenuButton *contactButton;
@property (weak, nonatomic) IBOutlet PMMenuButton *requestButton;
@property (weak, nonatomic) IBOutlet PMMenuButton *vacanciesButton;
@property (weak, nonatomic) IBOutlet PMMenuButton *mainBoardButton;

@end

@implementation PMSideMenuVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.caseButton.menuItem = PMMenuItemCase;
    self.contactButton.menuItem = PMMenuItemContacts;
    self.vacanciesButton.menuItem = PMMenuItemVacancies;
    self.requestButton.menuItem = PMMenuItemRequest;
    self.mainBoardButton.menuItem = PMMenuItemMainBoard;
    [self setAttributedMainBoadrdButton];
    [self setupLocalization];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        self.router = [PMApplicationRouter new];
    }
    return self;
}

- (void)setAttributedMainBoadrdButton
{
    [self.mainBoardButton setAttributedTitle:[self completionMainBoardButton] forState:UIControlStateNormal];
}

- (NSMutableAttributedString *)completionMainBoardButton
{
    NSString *titleButton = @"HardReboot";
    NSRange rangeBrains = NSMakeRange(3, [titleButton length] - 3);
    NSRange rangeMad = NSMakeRange(0, [titleButton length] - 6);
    NSString *submitBrains = [titleButton substringWithRange:rangeBrains];
    NSString *submitMad = [titleButton substringWithRange:rangeMad];
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] init];
    [attributedString appendAttributedString:[[NSAttributedString alloc]
                                             initWithString:submitMad attributes:@{NSFontAttributeName: [UIFont fontWithName:@"Audiowide-Regular" size: 36.0],
                                                                                NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#eb7530" alpha:1.0]}]];
    [attributedString appendAttributedString:[[NSAttributedString alloc]
                                              initWithString:submitBrains attributes:@{NSFontAttributeName: [UIFont fontWithName:@"Audiowide-Regular" size: 36.0],
                                                                                    NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#808582" alpha:1.0]}]];
    return attributedString;
}



- (void)setupLocalization
{
    [self.contactButton setTitle:NSLocalizedString(@"menu.contact", nil) forState:UIControlStateNormal];
    [self.caseButton setTitle:NSLocalizedString(@"menu.case", nil) forState:UIControlStateNormal];
    [self.vacanciesButton setTitle:NSLocalizedString(@"menu.vacancies", nil) forState:UIControlStateNormal];
    [self.requestButton setTitle:NSLocalizedString(@"menu.request", nil) forState:UIControlStateNormal];
}

#pragma mark - actions

- (IBAction)menuButtonHandler:(PMMenuButton *)button
{
    [self.router openMenuItem:button.menuItem];
}

@end
