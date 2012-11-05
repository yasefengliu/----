//
//  UIAdditions.m
//  BokanUINavigationController
//
//  Created by sunpengzhen on 12-6-3.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "UIAdditions.h"

@implementation UIButton(Additions)

+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titlecolor target:(id)target action:(SEL)action 
{
    UIButton * button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = frame;
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titlecolor forState:UIControlStateNormal];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}
+ (UIButton *)buttonWithType:(UIButtonType)buttonType frame:(CGRect)frame title:(NSString *)title backgroundImage:(UIImage *)backgroundImage target:(id)target action:(SEL)action
{
    UIButton * button = [UIButton buttonWithType:buttonType];
    button.frame = frame;
    [button setTitle:title forState:UIControlStateNormal];
    [button setBackgroundImage:backgroundImage forState:UIControlStateNormal];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}

@end


@implementation UIImageView(Additions)

+ (UIImageView *)imageViewWithFrame:(CGRect)frame image:(UIImage *)image userInteractionEnabled:(BOOL)userInteractionEnabled
{
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.image = image;
    imageView.userInteractionEnabled = userInteractionEnabled;
    return [imageView autorelease];
}

@end