//
//  TTCodingViewController.m
//  TTComponentized
//
//  Created by Travel Chu on 3/27/17.
//  Copyright © 2017 demo. All rights reserved.
//

#import "TTCodingViewController.h"
#import "TTDemoViewController.h"

@interface TTCodingViewController () <UITextFieldDelegate>
  @property (weak, nonatomic) IBOutlet UITextField *textField;
  @property (weak, nonatomic) IBOutlet UIButton *runButton;
  
@end

@implementation TTCodingViewController
  
- (void)viewDidLoad {
  [super viewDidLoad];
  self.runButton.layer.cornerRadius = 5.0;
}
  
- (IBAction)runPressed:(id)sender {
  TTDemoViewController *demoVC = [self.storyboard instantiateViewControllerWithIdentifier:@"TTDemoViewController"];
  demoVC.text = self.textField.text;
  [self.navigationController pushViewController:demoVC animated:YES];
}
  
#pragma mark - UITextFieldDelegate
  
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
  [textField resignFirstResponder];
  return YES;
}
  
  @end
