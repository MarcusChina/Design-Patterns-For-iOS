//
//  MSMilk.m
//  装饰模式
//
//  Created by marcus on 2017/4/18.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSMilk.h"

@interface MSMilk()

@property (nonatomic, strong) NSString *name;

@end

@implementation MSMilk

- (instancetype)initWithBeverage:(id<MSBeverage>)beverage{
    if (self = [super init]) {
        self.name = @"Milk";
        self.beverage = beverage;
    }
    return self;
}

- (NSString *)getName{
    return [NSString stringWithFormat:@"%@ + %@", [self.beverage getName], self.name ];
}

- (double)cost{
    return .30 + [self.beverage cost];
}

@end
