//
//  MSMoCha.h
//  装饰模式
//
//  Created by marcus on 2017/4/18.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSBeverage.h"
#import "MSCondimentDecorator.h"

@interface MSMoCha : NSObject <MSCondimentDecorator>

@property (strong, nonatomic)id<MSBeverage> beverage;

- (instancetype)initWithBeverage:(id<MSBeverage>) beverage;


@end
