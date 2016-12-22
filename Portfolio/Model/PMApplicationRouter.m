//
//  PMRouter.m
//  Portfolio
//
//  Created by Алексей Теликанов on 22.11.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import "PMApplicationRouter.h"
#import "PMSideMenuVC.h"
#import "PMMainBoardVC.h"

NSString * const kPMSegueIdentifierSideMenuToCaseVC = @"kPMSegueIdentifierSideMenuToCaseVC";
NSString * const kPMSegueIdentifierSideMenuToVacanciesVC = @"kPMSegueIdentifierSideMenuToVacanciesVC";
NSString * const kPMSegueIdentifierSideMenuToRequestVC = @"kPMSegueIdentifierSideMenuToRequestVC";
NSString * const kPMSegueIdentifierSideMenuToContactsVC = @"kPMSegueIdentifierSideMenuToContactsVC";
NSString * const kPMSegueIdentifierSideMenuToMainBoardVC = @"kPMSegueIdentifierSideMenuToMainBoardVC";

@implementation PMApplicationRouter

- (void)openMenuItem:(PMMenuItem)menuItem
{
    RESideMenu *sideMenu = (RESideMenu *)[[[UIApplication sharedApplication] delegate] window].rootViewController;
    UIViewController *menuVC = sideMenu.leftMenuViewController;
    [menuVC performSegueWithIdentifier:[self segueIdentifierForMenuItem:menuItem] sender:nil];

    [sideMenu hideMenuViewController];
}

- (NSString *)segueIdentifierForMenuItem:(PMMenuItem) menuItem
{
    switch (menuItem) {
        case PMMenuItemCase:
            return kPMSegueIdentifierSideMenuToCaseVC;
        case PMMenuItemRequest:
            return kPMSegueIdentifierSideMenuToRequestVC;
        case PMMenuItemContacts:
            return kPMSegueIdentifierSideMenuToContactsVC;
        case PMMenuItemMainBoard:
            return kPMSegueIdentifierSideMenuToMainBoardVC;
        case PMMenuItemVacancies:
            return kPMSegueIdentifierSideMenuToVacanciesVC;
    }
}

@end
