//
//  GDSearchBar.m
//  GDWeibo
//
//  Created by 锋之韵 on 16/7/18.
//  Copyright (c) 2016年 fz. All rights reserved.
//

#import "GDSearchBar.h"
#import "UIImage+GD.h"

@implementation GDSearchBar

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        // 设置背景图片
        self.background = [UIImage resizedImageWithName:@"searchbar_textfield_background_os7"];
        // 添加搜索图片
        UIImageView *searchView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"searchbar_textfield_search_icon"]];
//        searchView.backgroundColor = [UIColor redColor];
        self.leftView = searchView;
        self.leftViewMode = UITextFieldViewModeAlways;
        // 设置占位文字
        self.placeholder = @"搜索";
        // 搜索键
        self.returnKeyType = UIReturnKeySearch;
        // 添加快捷删除键
        self.clearButtonMode = UITextFieldViewModeWhileEditing;
        // 文字大小
        self.font = [UIFont systemFontOfSize:14];
    }
    return self;
}

@end
