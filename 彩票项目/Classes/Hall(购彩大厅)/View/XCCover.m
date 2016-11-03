//
//  XCCover.m
//  彩票项目
//
//  Created by liuxingchen on 16/11/3.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "XCCover.h"
#import "XCActiveMenu.h"
@implementation XCCover
+(void)show
{
    XCCover *cover = [[XCCover alloc]initWithFrame:XCScreenBouns];
    cover.backgroundColor = [UIColor blackColor];
    cover.alpha = 0.5;
    [XCKeyWindow addSubview:cover];
}
+(void)hide
{
    //遍历UIWindow中所有的子控件 有子控件就删除
    for (UIView * childView in XCKeyWindow.subviews) {
        if ([childView isKindOfClass:self]) {
            [childView removeFromSuperview];
        }
    }
}
@end
