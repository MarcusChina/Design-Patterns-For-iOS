//
//  MSCDDriver.m
//  中介者模式
//
//  Created by marcus on 2017/4/11.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSCDDriver.h"
#import "MSMainBoard.h"

@implementation MSCDDriver

-(void)readCD{
    NSString *data = @"BBC地球探索之旅";
    NSMutableString *mStr = [[NSMutableString alloc]initWithString:data];
    [[MSMainBoard shareInstance] handleData:mStr dataSource:self];
}

@end
