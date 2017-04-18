//
//  MSEspresso.m
//  装饰模式
//
//  Created by marcus on 2017/4/18.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSEspresso.h"

@interface MSEspresso()

@property (nonatomic, strong) NSString *name;

@end

@implementation MSEspresso


- (instancetype)init{
    
    if (self = [super init]) {
        self.name = @"Espresso";
    }
    return self;
}

- (NSString *)getName{
    return self.name;
}

- (double)cost{
    return 1.99;
}

@end
