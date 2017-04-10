//
//  MSConcreteRemoteControl.m
//  桥接模式
//
//  Created by marcus on 2017/4/10.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSConcreteRemoteControl.h"

@implementation MSConcreteRemoteControl

- (void)detectTVFunction {
    [self.tvProtocol switchChannel];
    [self.tvProtocol adjustVolume];
    [self.tvProtocol powerSwitch];
}

@end
