//
//  MS4SWaiter.h
//  外观模式
//
//  Created by marcus on 2017/4/11.
//  Copyright © 2017年 marcus. All rights reserved.
//  4S 销售人员

#import <Foundation/Foundation.h>

@interface MS4SWaiter : NSObject

- (void)buyCarWithCash;// 现金买车

- (void)buyCarWithLoad;// 贷款买车


@end
