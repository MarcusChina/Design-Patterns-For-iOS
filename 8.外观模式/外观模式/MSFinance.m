//
//  MSFinance.m
//  外观模式
//
//  Created by marcus on 2017/4/11.
//  Copyright © 2017年 marcus. All rights reserved.
//  

#import "MSFinance.h"

@implementation MSFinance

// 现金支付
- (void)cashPayment {
    NSLog(@"支付现金......");
}

// 申请贷款
- (BOOL)applyLoan {
    NSLog(@"申请贷款......");
    [self auditLoan];
    [self getLoad];
    return YES;
}

// 审核贷款
- (BOOL)auditLoan {
    NSLog(@"审核贷款......");
    return YES;
}

// 放款
- (BOOL)getLoad {
    NSLog(@"放款......");
    return YES;
}

@end
