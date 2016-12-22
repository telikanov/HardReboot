//
//  PMChangeContentControllerSegue.m
//  Portfolio
//
//  Created by Алексей Теликанов on 05.12.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import "PMChangeContentControllerSegue.h"
#import <RESideMenu/RESideMenu.h>
#import "PMRootVC.h"

@implementation PMChangeContentControllerSegue

- (void)perform
{
    RESideMenu *sideMenu = [self.sourceViewController sideMenuViewController];
    NSAssert(sideMenu != nil, @"Side menu should not be bil");
    sideMenu.contentViewController = self.destinationViewController;
    [sideMenu hideMenuViewController];
}

@end
