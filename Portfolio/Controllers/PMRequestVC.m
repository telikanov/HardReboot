//
//  PMRequestVC.m
//  Portfolio
//
//  Created by Алексей Теликанов on 27.10.16.
//  Copyright © 2016 Perpentuum Mobile lab. All rights reserved.
//

#import "PMRequestVC.h"
#import "PMRequestProvider.h"
#import "UIView+PMNibManagement.h"
#include "PMUniversalContainerView.h"
#import "PMRequest.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface PMRequestVC ()

@property (nonatomic, strong) PMRequestProvider *requestProvider;
@property (nonatomic, weak) IBOutlet PMUniversalContainerView *telephoneContainer;
@property (nonatomic, weak) IBOutlet PMUniversalContainerView *appealContainer;
@property (nonatomic, weak) IBOutlet PMUniversalContainerView *emailContainer;
@property (nonatomic, weak) IBOutlet UITextView *storyTextView;
@property (nonatomic, weak) IBOutlet UIButton *sendRequestButton;

@end

@implementation PMRequestVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setContent];
    [self restrictAllFieds];
}

- (void)setContent
{
    [self setContentEmailContainer];
    [self setContentAppealContainer];
    [self setContentTelephoneContainer];
}

- (void)setContentTelephoneContainer
{
    self.telephoneContainer.titleLabel.text = @"Телефон";
    self.telephoneContainer.fieldToFill.placeholder = NSLocalizedString(@"request.phone.textField", nil);
    
    [self.telephoneContainer.fieldToFill setKeyboardType:UIKeyboardTypeNumberPad];
}

- (void)setContentAppealContainer
{
    self.appealContainer.titleLabel.text = @"Как к вам обращаться";
    self.appealContainer.fieldToFill.placeholder = @"Мария";
    
    self.appealContainer.fieldToFill.autocapitalizationType =   UITextAutocapitalizationTypeWords;
}

- (void)setContentEmailContainer
{
    self.emailContainer.titleLabel.text = @"Email";
    self.emailContainer.fieldToFill.placeholder = @"example@gmail.com";
    
    [self.emailContainer.fieldToFill setKeyboardType:UIKeyboardTypeEmailAddress];
}

- (BOOL)restrictEmail
{
    BOOL valid = NO;
    PMRequest *validf = [PMRequest new];
    valid = [validf NSStringIsValidEmail:self.emailContainer.fieldToFill.text];
    if(valid)
    {
        NSLog(@"Почта введена правльно");
    }else{
        NSLog(@"Почта не верная");
    }
    
    return valid;
}
- (IBAction)checkEmail:(id)sender
{
    [self restrictEmail];
}
    
- (void)restrictAllFieds
    {
        RACSignal *formValid = [RACSignal
                                combineLatest:@[
                                                self.telephoneContainer.fieldToFill.rac_textSignal,
                                                    self.appealContainer.fieldToFill.rac_textSignal,
                                                    self.emailContainer.fieldToFill.rac_textSignal,
                                                    self.storyTextView.rac_textSignal
                                                    ]
                                reduce:^(NSString *telephone, NSString *name, NSString *email, NSString *story) {
                                    return @([telephone length] > 4 && [telephone length] < 14 && [name length] > 0 && [self restrictEmail] == YES && [story length] >0);
                                }];
        
        RAC(self.sendRequestButton, enabled) = formValid;
    }


@end
