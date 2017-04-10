//
//  MSConcreteRemoteControl.h
//  桥接模式
//
//  Created by marcus on 2017/4/10.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSAbstractRemoteControl.h"

@interface MSConcreteRemoteControl : MSAbstractRemoteControl

// 重写该方法
- (void)detectTVFunction;

@end
