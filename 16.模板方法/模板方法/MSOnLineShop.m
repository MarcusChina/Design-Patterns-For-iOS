//
//  MSOnLineShop.m
//  模板方法
//
//  Created by marcus on 2017/4/21.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSOnLineShop.h"

@interface MSOnLineShop()

@end

@implementation MSOnLineShop

-(void)shop{
    [self accessURL];
    [self createOrder];
    [self pay];
    if ([self callMyMobileHook]) {
        [self receiptGoods];
    }
}

-(void)accessURL {
    
}

- (void)pay {
    
}

-(void)createOrder{
    NSLog(@"创建订单成功");
}

-(void)receiptGoods{
    NSLog(@"收到了物品");
}
//子类可以回调钩子
-(Boolean)callMyMobileHook{
    return true;
}

@end
