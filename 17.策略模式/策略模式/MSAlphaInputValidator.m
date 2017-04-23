//
//  MSAlphaInputValidator.m
//  策略模式
//
//  Created by marcus on 2017/4/23.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSAlphaInputValidator.h"

@implementation MSAlphaInputValidator

- (BOOL)validateInput:(UITextField*)input errorr:(NSError**)error {
    NSError *regError = nil;
    //使用配置的NSRegularExpression对象，检查文本框中字母型的匹配次数。
    //检查字母的正则表达式："^[a-zA-Z]*$"
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$" options:NSRegularExpressionAnchorsMatchLines error:&regError];
    
    
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:[input text] options:NSMatchingAnchored range:NSMakeRange(0, [[input text] length])];
    
    //如果没有匹配，就返回错误和NO
    if (numberOfMatches==0) {
        if (error != nil) {
            NSString *description = NSLocalizedString(@"Input Validation Faild", @"");
            
            NSString *reason = NSLocalizedString(@"The input can contain only letters ", @"");
            
            
            NSArray *objArray = [NSArray arrayWithObjects:description,reason, nil];
            
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey,NSLocalizedFailureReasonErrorKey ,nil];
            
            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
            
            *error = [NSError errorWithDomain:MSInputValidationErrorDomain code:1002 userInfo:userInfo];
        }
        return NO;
    }
    return YES;}

@end
