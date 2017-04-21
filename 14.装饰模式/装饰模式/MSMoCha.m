//
//  MSMoCha.m
//  装饰模式
//
//  Created by marcus on 2017/4/18.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSMoCha.h"

@interface MSMoCha()

@property (nonatomic, strong)NSString *name;

@end

@implementation MSMoCha


- (instancetype)initWithBeverage:(id<MSBeverage>)beverage{
    if (self = [super init]) {
        self.beverage = beverage;
        self.name = @"Mocha";
    }
    return self;
}

- (NSString *)getName{
    return [NSString stringWithFormat:@"%@ + %@", [self.beverage getName], self.name];
}

- (double)cost{
    return .20 + [self.beverage cost];
}

@end
