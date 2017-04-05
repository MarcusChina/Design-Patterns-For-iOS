//
//  MSCatFactory.m
//  工厂方法Demo
//
//  Created by marcus on 2017/4/5.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSCatFactory.h"
#import "MSCat.h"

@implementation MSCatFactory

+ (MSAnimal*)createAnimal {
    MSCat *cat = [[MSCat alloc]init];
    return cat;
}

@end
