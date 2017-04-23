//
//  MSDarkerCommand.m
//  命令模式
//
//  Created by marcus on 2017/4/23.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSDarkerCommand.h"

@interface MSDarkerCommand ()
/** 接受者 */
@property (nonatomic,strong)MSReceiver *receiver;

/** 数值 */
@property (nonatomic,assign)CGFloat paramter;

@end

@implementation MSDarkerCommand

- (instancetype)initWithReceiver:(MSReceiver*)receiver withParamter:(CGFloat)paramter
{
    self = [super init];
    if (self) {
        self.receiver = receiver;
        self.paramter = paramter;
    }
    return self;
}

/**
 *  命令的执行 思考一下，命令怎么执行让任务实现？
 *
 */
- (void)excute{
    [self.receiver makeViewDarker:self.paramter];
}

/**
 *  撤销命令
 */
- (void)rollBackExcute{
    [self.receiver makeViewLighter:self.paramter];
}

@end
