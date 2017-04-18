//
//  MSBeverage.h
//  装饰模式
//
//  Created by marcus on 2017/4/18.
//  Copyright © 2017年 marcus. All rights reserved.
//  饮料协议

#import <Foundation/Foundation.h>

@protocol MSBeverage <NSObject>

@optional
- (NSString *)getName;

- (double)cost;

@end
