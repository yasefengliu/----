//
//  UIAdditions.h
//  BokanUINavigationController
//
//  Created by sunpengzhen on 12-6-3.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIButton(Additions)

+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titlecolor target:(id)target action:(SEL)action;
+ (UIButton *)buttonWithType:(UIButtonType)buttonType frame:(CGRect)frame title:(NSString *)title backgroundImage:(UIImage *)backgroundImage target:(id)target action:(SEL)action;

@end

@interface UIImageView(Additions)

+ (UIImageView *)imageViewWithFrame:(CGRect)frame image:(UIImage *)image userInteractionEnabled:(BOOL)userInteractionEnabled;

@end


