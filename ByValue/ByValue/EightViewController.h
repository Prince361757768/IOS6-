//
//  EightViewController.h
//  ByValue
//
//  Created by SDC201 on 16/5/24.
//  Copyright © 2016年 PCEBG. All rights reserved.
//

#import <UIKit/UIKit.h>
//定义finishBlock

typedef void(^finishBlock)(UIColor *color,NSString *name);

@interface EightViewController : UIViewController

//定义finishBlock方法

-(instancetype)initWithBlock:(finishBlock)block;

@end
