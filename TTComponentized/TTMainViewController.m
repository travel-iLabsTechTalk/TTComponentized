//
//  TTMainViewController.m
//  TTComponentized
//
//  Created by Travel Chu on 3/27/17.
//  Copyright © 2017 demo. All rights reserved.
//

#import "TTMainViewController.h"
#import "CTMediator+TTLogin.h"
#import "CTMediator+TTCoding.h"
#import "CTMediator+TTDemo.h"

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

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
  if (indexPath.row == 0) {
    UIViewController *codingVC = [[CTMediator sharedInstance] TTCoding_viewController];
    [self.navigationController pushViewController:codingVC animated:YES];
  } else if (indexPath.row == 1) {
    UIViewController *demoVC = [[CTMediator sharedInstance] TTDemo_viewControllerWithText:@"Demo from main page"];
    [self.navigationController pushViewController:demoVC animated:YES];
  }
}

@end
