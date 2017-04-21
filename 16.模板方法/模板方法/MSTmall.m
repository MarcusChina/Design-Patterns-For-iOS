//
//  MSTmall.m
//  模板方法
//
//  Created by marcus on 2017/4/21.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSTmall.h"

@implementation MSTmall

-(void)accessURL{
    NSLog(@"https://www.taobao.com/");
}

-(void)pay{
    NSLog(@"支付宝");
}

-(Boolean)callMyMobileHook{
    return true;
}

@end
