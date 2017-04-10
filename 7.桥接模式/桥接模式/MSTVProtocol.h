//
//  MSTVProtocol.h
//  桥接模式
//
//  Created by marcus on 2017/4/10.
//  Copyright © 2017年 marcus. All rights reserved.
//  MSTVProtocol协议

#import <Foundation/Foundation.h>

@protocol MSTVProtocol <NSObject>

@required

- (void)switchChannel; // 切换频道

- (void)adjustVolume;  // 调节音量

- (void)powerSwitch;   // 电源开关

@end
