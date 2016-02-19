//
//  XMGMeViewController.m
//  BSbudejie
//
//  Created by wacosoft on 16/2/19.
//  Copyright © 2016年 wacosoft. All rights reserved.
//

#import "XMGMeViewController.h"

@interface XMGMeViewController ()

@end

@implementation XMGMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置导航栏右边的按钮
    // 设置导航栏右边的按钮
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithImage:@"mine-setting-icon" highImage:@"mine-setting-icon-click" target:self action:@selector(settingClick)];
    UIBarButtonItem *moonItem = [UIBarButtonItem itemWithImage:@"mine-moon-icon" highImage:@"mine-moon-icon-click" target:self action:@selector(moonClick)];
    self.navigationItem.rightBarButtonItems = @[settingItem, moonItem];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)settingClick
{
    XMGLogFunc;
}

- (void)moonClick
{
    XMGLogFunc;
}

@end
