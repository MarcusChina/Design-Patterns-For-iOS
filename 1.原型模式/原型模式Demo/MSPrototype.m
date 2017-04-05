//
//  MSPrototype.m
//  原型模式Demo
//
//  Created by marcus on 2017/4/5.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSPrototype.h"

@implementation MSPrototype

- (id)init {
    if (self = [super init]) {
        self.name = @"My name is MSPrototype";
    }
    return self;
}

//实现NSCopying协议中的方法
- (id)copyWithZone:(NSZone *)zone {
    return [[[self class] allocWithZone:zone] init];
}

@end
