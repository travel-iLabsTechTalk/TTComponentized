//
//  TTCodingViewController.m
//  TTComponentized
//
//  Created by Travel Chu on 3/27/17.
//  Copyright © 2017 demo. All rights reserved.
//

#import "TTCodingViewController.h"

static NSString *const TTDemoTextKey = @"TTDemoTextKey";

@interface TTCodingViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation TTCodingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillDisappear:(BOOL)animated {
  [super viewWillDisappear:animated];
  [[NSUserDefaults standardUserDefaults] setObject:self.textField.text forKey:TTDemoTextKey];
  [[NSUserDefaults standardUserDefaults] synchronize];
}

#pragma mark - Public Methods

+ (NSString *)outputText {
  return [[NSUserDefaults standardUserDefaults] objectForKey:TTDemoTextKey];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
  [textField resignFirstResponder];
  return YES;
}

@end
