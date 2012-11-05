//
//  DetailViewController.h
//  各种控件
//
//  Created by Ibokan on 12-10-17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol EdititleDelegate<NSObject>
-(void)setTitle:(NSString *)titile tag:(NSInteger)tag;
@end

@interface DetailViewController : UIViewController<UITextFieldDelegate>
{
    UIImage *_imgv;
    UITextField *_tf;
    NSInteger tag;
}
@property(nonatomic)NSInteger tag;
@property(nonatomic,retain)id<EdititleDelegate>delegate;
@end
