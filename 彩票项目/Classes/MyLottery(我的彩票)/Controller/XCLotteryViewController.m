//
//  XCLotteryViewController.m
//  彩票项目
//
//  Created by liuxingchen on 16/11/1.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "XCLotteryViewController.h"

@interface XCLotteryViewController ()

@end

@implementation XCLotteryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpNav];
}
-(void)setUpNav
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"客服" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"FBMM_Barbutton"] forState:UIControlStateNormal];
    //自适应尺寸
    [button sizeToFit];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.leftBarButtonItem = leftItem;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageWithOriginalRenderingImage:@"Mylottery_config"] style:UIBarButtonItemStylePlain target:self action:@selector(setting)];
}
-(void)setting
{
    NSLog(@"setting");
}
@end
