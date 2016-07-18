//
//  GDViewController.m
//  GDWeibo
//
//  Created by 锋之韵 on 16/7/16.
//  Copyright (c) 2016年 fz. All rights reserved.
//

#import "GDViewController.h"
#import "GDMessageViewController.h"
#import "GDMeViewController.h"
#import "GDDiscoverViewController.h"
#import "GDHomeViewController.h"
#import "GDTabBar.h"
#import "GDNavigationController.h"

@interface GDViewController ()

@end

@implementation GDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 初始化tabBar
    [self setupTabBar];
    //初始化所有子控制器
    [self setupAllChildVc];
    
    UITabBarItem *item = [UITabBarItem appearance];
    // UITabBarItem文字的设置
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
}

// 初始化tabBar
- (void)setupTabBar
{
    GDTabBar *myTabBar = [[GDTabBar alloc] init];
    [self setValue:myTabBar forKey:@"tabBar"];
}

// 初始化所有子控制器
- (void)setupAllChildVc
{
    UIViewController *home = [[GDHomeViewController alloc] init];
    [self setupChildVc:home title:@"首页" imageName:@"tabbar_home_os7" selectedImageName:@"tabbar_home_selected_os7"];
    
    UIViewController *message = [[GDMessageViewController alloc] init];
    [self setupChildVc:message title:@"消息" imageName:@"tabbar_message_center_os7" selectedImageName:@"tabbar_message_center_selected_os7"];
    
    UIViewController *discover = [[GDDiscoverViewController alloc] init];
    [self setupChildVc:discover title:@"广场" imageName:@"tabbar_discover_os7" selectedImageName:@"tabbar_discover_selected_os7"];
    
    
    UIViewController *me = [[GDMeViewController alloc] init];
    [self setupChildVc:me title:@"我" imageName:@"tabbar_profile_os7" selectedImageName:@"tabbar_profile_selected_os7"];
}

- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    vc.title = title;
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.image = [UIImage imageNamed:imageName];
    GDNavigationController *nav = [[GDNavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
}



@end
