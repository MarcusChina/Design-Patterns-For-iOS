//
//  MSNumericInputValidator.m
//  策略模式
//
//  Created by marcus on 2017/4/23.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSNumericInputValidator.h"

@implementation MSNumericInputValidator

- (BOOL)validateInput:(UITextField*)input errorr:(NSError**)error{
    NSError *regError = nil;
    //使用配置的NSRegularExpression对象，检查文本框中数值型的匹配次数。
    //正则表达式：^[0-9]*$:意思是从行的开头（表示为^）到结尾(表示为$)应该有数字集（标示为[0-9]）中的0或者更多个字符（表示为*）
    NSRegularExpression *regex = [NSRegularExpression
                                  regularExpressionWithPattern:@"^[0-9]*$"
                                  options:NSRegularExpressionAnchorsMatchLines
                                  error:&regError];
    NSUInteger numberofMatches = [regex
                                  numberOfMatchesInString:[input text]
                                  options:NSMatchingAnchored
                                  range:NSMakeRange(0, [[input text] length])];
    
   //如果没有匹配，就返回错误和NO  
    if (numberofMatches == 0) {
        if (error != nil) {
            NSString *description = NSLocalizedString(@"Input Validation Faild", @"");
            
            NSString *reason = NSLocalizedString(@"The input can contain only numerical values", @"");
            
            
            NSArray *objArray = [NSArray arrayWithObjects:description,reason, nil];
            
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey,NSLocalizedFailureReasonErrorKey ,nil];
            
            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
            
            
            *error = [NSError errorWithDomain:MSInputValidationErrorDomain
                                         code:1001
                                     userInfo:userInfo];
        }
        return NO;
    }
    return YES;
}

@end
