//
//  MSAnimalFactory.m
//  工厂方法Demo
//
//  Created by marcus on 2017/4/5.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSAnimalFactory.h"

@implementation MSAnimalFactory

+ (MSAnimal*)createAnimal {
    MSAnimal *animal = [[MSAnimal alloc]init];
    return animal;
}

@end
