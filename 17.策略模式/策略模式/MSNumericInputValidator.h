//
//  MSNumericInputValidator.h
//  策略模式
//
//  Created by marcus on 2017/4/23.
//  Copyright © 2017年 marcus. All rights reserved.
//  数值型 验证器  是否只有数值

#import "MSInputValidator.h"

@interface MSNumericInputValidator : MSInputValidator

- (BOOL)validateInput:(UITextField*)input errorr:(NSError**)error;

@end
