//
//  UIBarButtonItem+XMGExtension.h
//  BSbudejie
//
//  Created by wacosoft on 16/2/19.
//  Copyright © 2016年 wacosoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (XMGExtension)
+(instancetype)itemWithImage:(NSString*)image highImage:(NSString*)highImage target:(id)target action:(SEL)action;
@end
