//
//  MSCpu.m
//  中介者模式
//
//  Created by marcus on 2017/4/11.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSCpu.h"
#import "MSMainBoard.h"

@implementation MSCpu

-(void )executeData:(NSMutableString *)data{
    [data appendString:@"+经过cpu处理"];
    [[MSMainBoard shareInstance] handleData:data dataSource:self];
}

@end
