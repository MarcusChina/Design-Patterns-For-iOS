//
//  MSDogFactory.m
//  工厂方法Demo
//
//  Created by marcus on 2017/4/5.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSDogFactory.h"
#import "MSDog.h"

@implementation MSDogFactory

+ (MSAnimal*)createAnimal {
    MSDog *dog = [[MSDog alloc]init];
    return dog;
}

@end
