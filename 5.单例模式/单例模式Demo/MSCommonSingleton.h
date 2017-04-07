//
//  MSCommonSingleton.h
//  单例模式Demo
//
//  Created by marcus on 2017/4/7.
//  Copyright © 2017年 marcus. All rights reserved.
//  常规方式创建单例

#import <Foundation/Foundation.h>

@interface MSCommonSingleton : NSObject

+ (instancetype)sharedMSCommonSingleton;

@end
