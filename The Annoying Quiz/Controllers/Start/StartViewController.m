//
//  StartViewController.m
//  The Annoying Quiz
//
//  Created by 黄聪 on 16/7/1.
//  Copyright © 2016年 黄聪. All rights reserved.
//

#import "StartViewController.h"
#import "Quest1ViewController.h"

@interface StartViewController ()

@end

@implementation StartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *lifeDefaults = [NSUserDefaults standardUserDefaults];
    [lifeDefaults setInteger:3 forKey:@"lifes"];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark --Action

- (IBAction)startBtnClick:(id)sender {
    UIStoryboard *allQuestSB = [UIStoryboard storyboardWithName:@"AllQuestions" bundle:nil];
    Quest1ViewController *questViewCtrl = [allQuestSB instantiateViewControllerWithIdentifier:@"Quest1ViewController"];
    [self.navigationController pushViewController:questViewCtrl animated:NO];
}





@end
