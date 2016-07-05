//
//  Quest1ViewController.m
//  The Annoying Quiz
//
//  Created by 黄聪 on 16/7/5.
//  Copyright © 2016年 黄聪. All rights reserved.
//

#import "Quest1ViewController.h"

@interface Quest1ViewController ()

@end

@implementation Quest1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark --Actions
- (IBAction)wrongAnswerBtnClk:(id)sender {
    NSUserDefaults *lifeDefaults = [NSUserDefaults standardUserDefaults];
    NSInteger remainLife = [[lifeDefaults objectForKey:@"lifes"]integerValue];
    remainLife--;
    [lifeDefaults setInteger:remainLife forKey:@"lifes"];
    if (remainLife <=0) {
        [self showAlert];
    }else{
        [super refreshLife];
    
    }

}

#pragma mark --SubViews

-(void)showAlert{
    UIAlertController *alertCtrl = [UIAlertController alertControllerWithTitle:@"失败啦" message:@"没命啦~~" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *playAgain = [UIAlertAction actionWithTitle:@"再玩一次" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    [alertCtrl addAction:playAgain];
    [self presentViewController:alertCtrl animated:YES completion:nil];
    
    

}




@end
