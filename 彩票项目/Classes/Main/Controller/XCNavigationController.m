//
//  XCNavigationController.m
//  彩票项目
//
//  Created by liuxingchen on 16/11/1.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "XCNavigationController.h"

@interface XCNavigationController ()

@end

@implementation XCNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
}
//当程序一启动就会调用该方法
+(void)load
{
    
}
//当前类或者他的子类第一次使用的时候才会调用
+(void)initialize
{
    // 获取哪个类下面的导航条
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    
    [bar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
}
@end
