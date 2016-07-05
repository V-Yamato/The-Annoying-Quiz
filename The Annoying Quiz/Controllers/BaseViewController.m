//
//  BaseViewController.m
//  The Annoying Quiz
//
//  Created by 黄聪 on 16/7/5.
//  Copyright © 2016年 黄聪. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController (){
    UILabel *lifeIbl;
    

}

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpSubviews];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark --Set Up SubViews
-(void)setUpSubviews{
    UIView *scoreView = [[UIView alloc]init];
    [scoreView setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:scoreView];
    [scoreView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view.mas_bottom);
        make.left.equalTo(self.view.mas_left);
        make.right.equalTo(self.view.mas_right);
        make.size.height.mas_equalTo(50);
    }];
    
    lifeIbl=[[UILabel alloc]init];
    NSUserDefaults *lifeDefaults = [NSUserDefaults standardUserDefaults];
    NSString *lifeStr = [[lifeDefaults objectForKey:@"lifes"] stringValue];
    lifeIbl.text=[NSString stringWithFormat:@"life:%@",lifeStr];
    lifeIbl.font = [UIFont systemFontOfSize:17];
    lifeIbl.textColor = [UIColor redColor];
    [scoreView addSubview:lifeIbl];
    [lifeIbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(scoreView.mas_left).with.offset(20);
        make.centerY.equalTo(scoreView.mas_centerY);
    }];
    
    UIImageView *skipImg = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"skip_forward_48px"]];
    [scoreView addSubview:skipImg];
    [skipImg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(scoreView.mas_right).with.offset(-20);
        make.centerY.equalTo(scoreView.mas_centerY);
    }];
    
    
    
}

-(void)refreshLife{
    NSUserDefaults *lifeDefaults = [NSUserDefaults standardUserDefaults];
    NSString *lifeStr = [[lifeDefaults objectForKey:@"lifes"] stringValue];
    lifeIbl.text=[NSString stringWithFormat:@"life:%@",lifeStr];
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
