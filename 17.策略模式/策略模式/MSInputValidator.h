//
//  MSInputValidator.h
//  策略模式
//
//  Created by marcus on 2017/4/23.
//  Copyright © 2017年 marcus. All rights reserved.
//  验证器 抽象基类

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

static NSString * const MSInputValidationErrorDomain = @"MSInputValidationErrorDomain";

@interface MSInputValidator : NSObject

- (BOOL)validateInput:(UITextField*)input errorr:(NSError**)error;

@end
