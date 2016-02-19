
//
//  UIBarButtonItem+XMGExtension.m
//  BSbudejie
//
//  Created by wacosoft on 16/2/19.
//  Copyright © 2016年 wacosoft. All rights reserved.
//

#import "UIBarButtonItem+XMGExtension.h"

@implementation UIBarButtonItem (XMGExtension)



+(instancetype)itemWithImage:(NSString*)image highImage:(NSString*)highImage target:(id)target action:(SEL)action
{
    UIButton *tagButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [tagButton setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [tagButton setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    tagButton.size = tagButton.currentBackgroundImage.size;
    [tagButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
   return [[self alloc] initWithCustomView:tagButton];
}
@end
