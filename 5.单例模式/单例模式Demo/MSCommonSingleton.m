//
//  MSCommonSingleton.m
//  单例模式Demo
//
//  Created by marcus on 2017/4/7.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSCommonSingleton.h"

static id _instance;

@implementation MSCommonSingleton

+ (instancetype)sharedMSCommonSingleton {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}

- (id)copyWithZone:(NSZone *)zone
{
    return _instance;
}
- (id)mutableCopyWithZone:(NSZone *)zone {
    return _instance;
}

@end
