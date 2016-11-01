//
//  XCTabBarController.m
//  彩票项目
//
//  Created by liuxingchen on 16/11/1.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "XCTabBarController.h"
#import "XCArenaViewController.h"
#import "XCDiscoverViewController.h"
#import "XCHallViewController.h"
#import "XCHistoryViewController.h"
#import "XCLotteryViewController.h"
#import "XCTabbar.h"
#import "XCTabbarButton.h"
#import "XCNavigationController.h"
@interface XCTabBarController ()<XCTabbarDelegate>
// 保存所有控制器对应按钮的内容（UITabBarItem）
@property (nonatomic, strong) NSMutableArray *items;
@end

@implementation XCTabBarController

-(NSMutableArray *)items
{
    if (_items==nil) {
        _items =[NSMutableArray array];
    }
    return _items;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpViewController];
    //添加自定义tabbar
    [self setUpTabbar];
    
}
-(void)setUpTabbar
{
    //移除系统的tabbar，就是移除了系统的tabbar，这里需要注意，把一个控件移除父控件，被移除的控件不会立即销毁。一般在下一次运行循环的时候，才会勘查有没有被强引用，没有就销毁。
    [self.tabBar removeFromSuperview];
    XCTabbar *tabbar = [[XCTabbar alloc]init];
    
    tabbar.items = self.items;
    tabbar.delegate = self;
    tabbar.backgroundColor = [UIColor orangeColor];
    tabbar.frame = self.tabBar.frame;
    [self.view addSubview:tabbar];
}
-(void)tabbar:(XCTabbar *)tabbar didClickButtonIndex:(NSInteger)index
{
    self.selectedIndex = index;
    
}
#pragma mark - 添加所有子控制器
// tabBar上面按钮的图片尺寸是有规定，不能超过44
-(void)setUpViewController
{
    XCArenaViewController *arena = [[XCArenaViewController alloc]init];
    [self setUpOneViewController:arena image:[UIImage imageNamed:@"TabBar_Arena_new"] selectImge:[UIImage imageNamed:@"TabBar_Arena_selected_new"]];
    XCDiscoverViewController *discover = [[XCDiscoverViewController alloc]init];
    [self setUpOneViewController:discover image:[UIImage imageNamed:@"TabBar_LotteryHall_new"] selectImge:[UIImage imageNamed:@"TabBar_LotteryHall_selected_new"]];
    XCHallViewController *hall = [[XCHallViewController alloc]init];
    [self setUpOneViewController:hall image:[UIImage imageNamed:@"TabBar_Discovery_new"] selectImge:[UIImage imageNamed:@"TabBar_Discovery_selected_new"]];
    XCHistoryViewController *history = [[XCHistoryViewController alloc]init];
    [self setUpOneViewController:history image:[UIImage imageNamed:@"TabBar_History_new"] selectImge:[UIImage imageNamed:@"TabBar_History_selected_new"]];
    XCLotteryViewController *lottery = [[XCLotteryViewController alloc]init];
    [self setUpOneViewController:lottery image:[UIImage imageNamed:@"TabBar_MyLottery_new"] selectImge:[UIImage imageNamed:@"TabBar_MyLottery_selected_new"]];
}
#pragma mark - 添加一个子控制器
-(void)setUpOneViewController:(UIViewController *)vc image:(UIImage *)image selectImge:(UIImage *)selectimage
{
    vc.tabBarItem.image = image;
    vc.tabBarItem.selectedImage = selectimage;
    //记录所有控制器对应的按钮内容
    [self.items addObject:vc.tabBarItem];
    vc.view.backgroundColor = [self randomColor];
    //把控制器包装成导航控制器
    XCNavigationController *nav = [[XCNavigationController alloc]initWithRootViewController:vc];
//    //设置导航空调背景图片，一定要在导航条显示之前设置
//    [nav.navigationBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
//    [self addChildViewController:nav];
}
- (UIColor *)randomColor
{
    
    CGFloat r = arc4random_uniform(256) / 255.0;
    CGFloat g = arc4random_uniform(256) / 255.0;
    CGFloat b = arc4random_uniform(256) / 255.0;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
}

@end
