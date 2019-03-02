//
//  LoginViewController.m
//  StoryboardDemo
//
//  Created by 李友富 on 2019/3/2.
//  Copyright © 2019 李友富. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)backButtonDidClicked:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
}

- (IBAction)buttonAction:(id)sender {
    
    [self performSegueWithIdentifier:@"segue" sender:sender];
}

- (IBAction)viewControllerUnbindSegue:(UIStoryboardSegue *)segue {
    
    
}

@end
