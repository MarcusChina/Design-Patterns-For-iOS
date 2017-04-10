//
//  MSAbstractRemoteControl.h
//  桥接模式
//
//  Created by marcus on 2017/4/10.
//  Copyright © 2017年 marcus. All rights reserved.
//  抽象部分的代码实现

#import <Foundation/Foundation.h>
#import "MSTVProtocol.h"

@interface MSAbstractRemoteControl : NSObject

@property (nonatomic, weak) id<MSTVProtocol> tvProtocol;

- (void)detectTVFunction;

@end
