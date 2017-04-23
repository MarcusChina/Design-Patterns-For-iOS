//
//  MSInvoker.h
//  命令模式
//
//  Created by marcus on 2017/4/23.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSInvokerProtocol.h"

@interface MSInvoker : NSObject

+(instancetype)sharedMSInvokerSingleton;

/**
 *  添加指令操作
 *
 *  @param command 指令
 */
- (void)addExcute:(id<MSInvokerProtocol>)command;

/**
 *  回退操作
 */
-(void)rollBack;

@end
