//
//  XCActiveMenu.m
//  彩票项目
//
//  Created by liuxingchen on 16/11/3.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "XCActiveMenu.h"
#import "XCCover.h"
@implementation XCActiveMenu
+(instancetype)acitveWithXib
{
    return [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:nil]lastObject];
}
+(void)showInpoint:(CGPoint)point
{
    XCActiveMenu *menu = [XCActiveMenu acitveWithXib];
    menu.center = point;
    [XCKeyWindow addSubview:menu];
}
- (IBAction)clickCancle:(id)sender
{
    [UIView animateWithDuration:1 animations:^{
        
        CGAffineTransform transform = self.transform;
       transform = CGAffineTransformTranslate(transform, -self.center.x + 44, -self.center.y+ 44);
        transform = CGAffineTransformScale(transform,0.001, 0.001);
        self.transform = transform;
    } completion:^(BOOL finished) {
        [XCCover hide];
    }];
    
    
    
}
@end
