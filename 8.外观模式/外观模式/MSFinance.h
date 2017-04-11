//
//  MSFinance.h
//  外观模式
//
//  Created by marcus on 2017/4/11.
//  Copyright © 2017年 marcus. All rights reserved.
//  财务部门管理：现金付款、申请贷款、审核贷款、放款等业务。

#import <Foundation/Foundation.h>

@interface MSFinance : NSObject

// 现金支付
- (void)cashPayment;

// 申请贷款
- (BOOL)applyLoan;

// 审核贷款
- (BOOL)auditLoan;

// 放款
- (BOOL)getLoad;

@end
