//
//  MSAlphaInputValidator.h
//  策略模式
//
//  Created by marcus on 2017/4/23.
//  Copyright © 2017年 marcus. All rights reserved.
//  字母 验证器 是否只包含字母

#import "MSInputValidator.h"

@interface MSAlphaInputValidator : MSInputValidator

- (BOOL)validateInput:(UITextField*)input errorr:(NSError**)error;

@end
