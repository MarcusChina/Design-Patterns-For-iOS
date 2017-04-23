//
//  MSInvoker.m
//  命令模式
//
//  Created by marcus on 2017/4/23.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSInvoker.h"

@interface MSInvoker()

/** 存储指令对象 */
@property (nonatomic,strong)NSMutableArray *commandArray;

@end

static id _instance;

@implementation MSInvoker

-(NSMutableArray*)commandArray{
    if (_commandArray == nil) {
        NSLog(@"创建了一次NSMutableArray对象");
        _commandArray = [NSMutableArray array];
    }
    return _commandArray;
}

- (void)addExcute:(id<MSInvokerProtocol>)command{
    [command excute];
    NSLog(@"开始执行了");
    [self.commandArray addObject:command];
    NSLog(@"执行结束了");
}


-(void)rollBack{
    NSLog(@"撤销操作");
    [self.commandArray.lastObject rollBackExcute];
    [self.commandArray removeLastObject];
}

+(instancetype)sharedMSInvokerSingleton {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}

- (id)copyWithZone:(NSZone *)zone
{
    return _instance;
}
- (id)mutableCopyWithZone:(NSZone *)zone {
    return _instance;
}

@end
