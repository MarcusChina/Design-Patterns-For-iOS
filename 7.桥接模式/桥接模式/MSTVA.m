//
//  MSTVA.m
//  桥接模式
//
//  Created by marcus on 2017/4/10.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSTVA.h"

@implementation MSTVA

- (void)switchChannel {
    NSLog(@"电视机A 具备了切换频道的功能");
}

- (void)adjustVolume {
    NSLog(@"电视机A 具备了调节音量的功能");
}

- (void)powerSwitch {
    NSLog(@"电视机A 具备了电源开关的功能");
}

@end
