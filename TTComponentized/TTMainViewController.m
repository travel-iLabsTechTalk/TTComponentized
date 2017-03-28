//
//  TTMainViewController.m
//  TTComponentized
//
//  Created by Travel Chu on 3/27/17.
//  Copyright © 2017 demo. All rights reserved.
//

#import "TTMainViewController.h"
#import "CTMediator+TTLogin.h"

@interface TTMainViewController ()

@end

@implementation TTMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
  [self loginIfNeeded];
}

- (void)loginIfNeeded {
  if (![[NSUserDefaults standardUserDefaults] boolForKey:TTLoggedInKey]) {
    UIViewController *loginVC = [[CTMediator sharedInstance] TTLogin_viewController];
    [self presentViewController:loginVC animated:YES completion:nil];
  }
}

- (IBAction)logoutPressed:(id)sender {
  [[NSUserDefaults standardUserDefaults] setBool:NO forKey:TTLoggedInKey];
  [[NSUserDefaults standardUserDefaults] synchronize];
  [self loginIfNeeded];
}

@end
