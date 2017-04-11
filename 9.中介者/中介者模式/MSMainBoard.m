//
//  MSMainBoard.m
//  中介者模式
//
//  Created by marcus on 2017/4/11.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSMainBoard.h"
#import "MSCpu.h"
#import "MSCDDriver.h"
#import "MSVideoCard.h"

@implementation MSMainBoard

static MSMainBoard *instance = nil;

+(instancetype)shareInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if(instance == nil){
            instance = [[self alloc]init];
        }
    });
    return instance;
}

-(void)handleData:(NSMutableString *)data dataSource:(id)source{
    if  ([source isKindOfClass:[MSCDDriver class]]){
        MSCpu *cpu = [MSCpu new];
        [cpu executeData:data];
    }else if ([source isKindOfClass:[MSCpu class]]){
        MSVideoCard *video = [MSVideoCard new];
        [video executeData:data];
    }
}

@end
