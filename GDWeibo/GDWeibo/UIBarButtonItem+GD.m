//
//  UIBarButtonItem+GD.m
//  GDWeibo
//
//  Created by 锋之韵 on 16/7/17.
//  Copyright (c) 2016年 fz. All rights reserved.
//

#import "UIBarButtonItem+GD.h"

@implementation UIBarButtonItem (GD)

+ (instancetype)itemWithimageName:(NSString *)imageName highImageName:(NSString *)highImageName target:(id)target action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(0, 0, btn.currentImage.size.width,btn.currentImage.size.height);
    return [[self alloc] initWithCustomView:btn];
}

@end
