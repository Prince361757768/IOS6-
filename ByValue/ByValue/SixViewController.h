//
//  SixViewController.h
//  ByValue
//
//  Created by SDC201 on 16/5/24.
//  Copyright © 2016年 PCEBG. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 定义协议，用来实现传值代理
 */
@protocol SixViewControllerDelegate <NSObject>

/**
 此方为必须实现的协议方法，用来传值
 */
- (void)changeValue:(NSString *)value;

@end

@interface SixViewController : UIViewController
/**
 此处利用协议来定义代理
 */
@property (nonatomic, unsafe_unretained) id<SixViewControllerDelegate> delegate;

@end
