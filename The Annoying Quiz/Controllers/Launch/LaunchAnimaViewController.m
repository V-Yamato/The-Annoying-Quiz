//
//  LaunchAnimaViewController.m
//  The Annoying Quiz
//
//  Created by 黄聪 on 16/7/1.
//  Copyright © 2016年 黄聪. All rights reserved.
//

#import "LaunchAnimaViewController.h"
#import "StartViewController.h"

@interface LaunchAnimaViewController ()
@property (weak, nonatomic) IBOutlet UILabel *quoteLbl;
@property (weak, nonatomic) IBOutlet UILabel *quoterLbl;

@end

@implementation LaunchAnimaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _quoteLbl.alpha=0;
    _quoterLbl.alpha=0;
    
    
    [UIView animateWithDuration:1 delay:1 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        _quoterLbl.alpha=1;
        _quoteLbl.alpha=1;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1 delay:1 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            _quoterLbl.alpha=0;
            _quoteLbl.alpha=0;
        } completion:^(BOOL finished) {
            UIStoryboard *startSB = [UIStoryboard storyboardWithName:@"Start" bundle:nil];
            StartViewController *startViewCtrl = [startSB instantiateViewControllerWithIdentifier:@"StartViewController"];
            [self.navigationController pushViewController:startViewCtrl animated:NO];
        
        }];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
