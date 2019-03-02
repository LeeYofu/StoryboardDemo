//
//  ViewController.m
//  StoryboardDemo
//
//  Created by 李友富 on 2019/3/2.
//  Copyright © 2019 李友富. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *logInButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self config];
}

- (void)config {
    
    self.logInButton.layer.cornerRadius = 4.0f;
    self.logInButton.layer.masksToBounds = YES;
}

- (IBAction)logInButtonDidClicked:(UIButton *)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Login" bundle:nil];
    UINavigationController *naviC = [storyboard instantiateInitialViewController];
//
//    [self presentViewController:naviC animated:YES completion:nil];
    
    UIViewController * svc = self;
    UIViewController * dvc = naviC;
    [svc.view addSubview:dvc.view];
    [dvc.view setFrame:svc.view.frame];
    [dvc.view setTransform:CGAffineTransformMakeScale(0.5, 0.5)];
    [dvc.view setAlpha:0.0];
    [UIView animateWithDuration:1.0
                     animations:^{
                         [dvc.view setTransform:CGAffineTransformMakeScale(1.0, 1.0)];
                         [dvc.view setAlpha:1.0];
                     }
                     completion:^(BOOL finished) {
                         [svc presentViewController:dvc animated:NO completion:nil];
                          }];

}

@end
