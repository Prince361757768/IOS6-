//
//  Singleton.h
//  ByValue
//
//  Created by SDC201 on 16/5/24.
//  Copyright © 2016年 PCEBG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

@property(nonatomic,strong)NSString *value;

+(Singleton *)shareData;

@end
