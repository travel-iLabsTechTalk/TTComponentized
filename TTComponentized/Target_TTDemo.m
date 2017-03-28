//
//  Target_TTDemo.m
//  TTComponentized
//
//  Created by Travel Chu on 3/28/17.
//  Copyright © 2017 demo. All rights reserved.
//

#import "Target_TTDemo.h"
#import "TTDemoViewController.h"

@implementation Target_TTDemo

- (UIViewController *)Action_viewControllerWithParams:(NSDictionary *)params {
  TTDemoViewController *demoVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"TTDemoViewController"];
  demoVC.text = params[@"text"];
  return demoVC;
}

@end
