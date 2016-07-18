//
//  GDTabBar.m
//  GDWeibo
//
//  Created by 锋之韵 on 16/7/17.
//  Copyright (c) 2016年 fz. All rights reserved.
//

#import "GDTabBar.h"

@interface GDTabBar ()

@property (nonatomic, weak) UIButton *plusButton;

@end

@implementation GDTabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 添加加号按钮
        UIButton *plusButton = [UIButton buttonWithType:UIButtonTypeCustom];
        // 加号按钮的背景图片
        [plusButton setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted_os7"] forState:UIControlStateHighlighted];
        [plusButton setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_os7"] forState:UIControlStateNormal];
        // 加号按钮的图片
        [plusButton setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted_os7"] forState:UIControlStateHighlighted];
        [plusButton setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_os7"] forState:UIControlStateNormal];
        self.plusButton = plusButton;
        [self addSubview:plusButton];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    // 设置加号按钮的位置
    self.plusButton.bounds = CGRectMake(0, 0, self.plusButton.currentBackgroundImage.size.width, self.plusButton.currentBackgroundImage.size.height);
    self.plusButton.center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5);
    
    // 设置tabBar里其它按钮
    CGFloat buttonY = 0;
    CGFloat buttonW = self.frame.size.width / 5;
    CGFloat buttonH = self.frame.size.height;
    int index = 0;
    for (UIView *button in self.subviews) {
        if ([button isKindOfClass:[UIControl class]] && (button != self.plusButton)) {
            CGFloat buttonX = buttonW * ((index > 1) ? index + 1 : index);
            index++;
            button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        }
    
    }
    
}


@end
