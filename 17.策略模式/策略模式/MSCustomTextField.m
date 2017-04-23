//
//  MSCustomTextField.m
//  策略模式
//
//  Created by marcus on 2017/4/23.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSCustomTextField.h"

@implementation MSCustomTextField

-(BOOL)validate {
    NSError *error = nil;

    BOOL validationResult = [self.inputValidator validateInput:self errorr:&error];
    
    if (!validationResult) {
        NSLog(@"验证失败：%@",error);
    }
    return validationResult;
}

@end
