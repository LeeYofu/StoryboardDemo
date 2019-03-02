//
//  HahaViewController.m
//  StoryboardDemo
//
//  Created by 李友富 on 2019/3/2.
//  Copyright © 2019 李友富. All rights reserved.
//

#import "HahaViewController.h"

@interface HahaViewController ()

@end

@implementation HahaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)backAction:(id)sender {
    
    [self performSegueWithIdentifier:@"haha" sender:sender];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
