//
//  TTLoginViewController.m
//  TTComponentized
//
//  Created by Travel Chu on 3/27/17.
//  Copyright © 2017 demo. All rights reserved.
//

#import "TTLoginViewController.h"

NSString *const TTLoggedInKey = @"isLoggedIn";

@interface TTLoginViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@end

@implementation TTLoginViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.loginButton.layer.cornerRadius = 5.0;
  
  [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://ilabs-web-test.cloudapp.net/"]]];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)loginPressed:(id)sender {
  [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"isLoggedIn"];
  [[NSUserDefaults standardUserDefaults] synchronize];
  [self dismissViewControllerAnimated:YES completion:nil];
}


@end
