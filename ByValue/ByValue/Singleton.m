//
//  Singleton.m
//  ByValue
//
//  Created by SDC201 on 16/5/24.
//  Copyright © 2016年 PCEBG. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

static Singleton *singletonData = nil;
+(Singleton *)shareData{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singletonData = [[Singleton alloc]init];
    });
    return singletonData;
}
-(id)init{
    if (self = [super init]) {
        
    }
    return self;
}
@end
