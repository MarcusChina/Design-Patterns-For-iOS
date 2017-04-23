//
//  MSInputValidator.m
//  策略模式
//
//  Created by marcus on 2017/4/23.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSInputValidator.h"

@implementation MSInputValidator

- (BOOL)validateInput:(UITextField*)input errorr:(NSError**)error{
    if (error) {
        error = nil;
    }
    return NO;
}

@end
