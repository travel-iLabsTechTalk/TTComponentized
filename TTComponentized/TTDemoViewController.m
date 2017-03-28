//
//  TTDemoViewController.m
//  TTComponentized
//
//  Created by Travel Chu on 3/27/17.
//  Copyright © 2017 demo. All rights reserved.
//

#import "TTDemoViewController.h"

@interface TTDemoViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation TTDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
  self.textView.text = self.text;
}

@end
