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
    UIButton *settingButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [settingButton setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon"] forState:UIControlStateNormal];
    [settingButton setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon-click"] forState:UIControlStateHighlighted];
    settingButton.size = settingButton.currentBackgroundImage.size;
    [settingButton addTarget:self action:@selector(settingClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *nightModeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [nightModeButton setBackgroundImage:[UIImage imageNamed:@"mine-moon-icon"] forState:UIControlStateNormal];
    [nightModeButton setBackgroundImage:[UIImage imageNamed:@"mine-moon-icon-click"] forState:UIControlStateHighlighted];
    nightModeButton.size = nightModeButton.currentBackgroundImage.size;
    [nightModeButton addTarget:self action:@selector(nightModeClick) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.rightBarButtonItems = @[
                                                [[UIBarButtonItem alloc] initWithCustomView:settingButton],
                                                [[UIBarButtonItem alloc] initWithCustomView:nightModeButton]
                                                ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)settingClick
{
    XMGLogFunc;
}

- (void)nightModeClick
{
    XMGLogFunc;
}

@end
