//
//  LaunchViewController.m
//  The Annoying Quiz
//
//  Created by 黄聪 on 16/6/30.
//  Copyright © 2016年 黄聪. All rights reserved.
//

#import "LaunchViewController.h"
#import "LaunchAnimaViewController.h"

@interface LaunchViewController ()
@property (weak, nonatomic) IBOutlet UILabel *welcomeLbl;

@end

@implementation LaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.interactivePopGestureRecognizer setEnabled:NO];
    [self setUpSubViews];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark --SetUp SubViews
-(void)setUpSubViews{
    _welcomeLbl.alpha=0;
    [UIView animateWithDuration:1 delay:1 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        _welcomeLbl.alpha=1;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1 delay:1 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            _welcomeLbl.alpha=0;
        } completion:^(BOOL finished) {
            UIStoryboard *lanuchSB = [UIStoryboard storyboardWithName:@"Launch" bundle:nil];
            UIViewController *animaViewCtrl = [lanuchSB instantiateViewControllerWithIdentifier:@"LaunchAnimaViewController"];
            
//            LaunchAnimaViewController *animaView = [[LaunchAnimaViewController alloc]init];
            [self.navigationController pushViewController:animaViewCtrl animated:NO];
        }];
    }];
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
