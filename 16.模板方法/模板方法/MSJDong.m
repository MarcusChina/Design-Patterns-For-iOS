//
//  MSJDong.m
//  模板方法
//
//  Created by marcus on 2017/4/21.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSJDong.h"

@implementation MSJDong

-(void)accessURL{
    NSLog(@"http://www.jd.com/");
}

-(void)pay{
    NSLog(@"货到付款");
}

-(Boolean)callMyMobileHook{
    NSLog(@"博客园-FlyElephant");
    return false;
}

@end
