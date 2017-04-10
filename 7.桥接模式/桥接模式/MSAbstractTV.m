//
//  MSAbstractTV.m
//  桥接模式
//
//  Created by marcus on 2017/4/10.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSAbstractTV.h"

@implementation MSAbstractTV 

- (void)switchChannel {
    NSLog(@"切换频道，由具体的子类来实现");
}

- (void)adjustVolume {
    NSLog(@"调节音量，由具体的子类来实现");
}

- (void)powerSwitch {
    NSLog(@"电源开关，由具体的子类来实现");
}

@end
