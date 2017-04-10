//
//  MSAbstractRemoteControl.m
//  桥接模式
//
//  Created by marcus on 2017/4/10.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSAbstractRemoteControl.h"

@implementation MSAbstractRemoteControl

- (void)detectTVFunction {
    NSLog(@"检测电视机具备的功能，由子类来进行实现");
}

@end
