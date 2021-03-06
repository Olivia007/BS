//
//  XMGTabBarController.m
//  01-百思不得姐
//
//  Created by xiaomage on 15/7/22.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "XMGTabBarController.h"
#import "XMGEssenceViewController.h"
#import "XMGNewViewController.h"
#import "XMGFriendTrendsViewController.h"
#import "XMGMeViewController.h"
#import "XMGTabBar.h"

@implementation XMGTabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 通过appearance统一设置所有UITabBarItem的文字属性
    // 后面带有UI_APPEARANCE_SELECTOR的方法, 都可以通过appearance对象来统一设置
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = attrs[NSFontAttributeName];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    // 添加子控制器
 
    [self setupChildVc:[[XMGEssenceViewController alloc]init] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
     [self setupChildVc:[[XMGNewViewController alloc]init] title:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
     [self setupChildVc:[[XMGFriendTrendsViewController alloc]init] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
     [self setupChildVc:[[XMGMeViewController alloc]init] title:@"我" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
    // 设置背景色
//    self.view.backgroundColor = XMGGlobalBg; /*重点不要在这里设置*/
    
    //    // 更换tabBar
    //    self.tabBar = [[XMGTabBar alloc] init];
    [self setValue:[[XMGTabBar alloc] init] forKeyPath:@"tabBar"];
    
    
}


-(void)setupChildVc:(UIViewController*)vc01 title:(NSString*)title image:(NSString*)image selectedImage:(NSString*)selectedImage{
    // 添加子控制器
   vc01.tabBarItem.title = title;
    vc01.tabBarItem.image = [UIImage imageNamed:image];
    vc01.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    vc01.view.backgroundColor = [UIColor redColor];
    vc01.navigationItem.title=title;
    UINavigationController *nav=[[UINavigationController alloc]initWithRootViewController:vc01];
    
    
    [self addChildViewController:nav];

}


@end
