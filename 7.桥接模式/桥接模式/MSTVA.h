//
//  MSTVA.h
//  桥接模式
//
//  Created by marcus on 2017/4/10.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSAbstractTV.h"

@interface MSTVA : MSAbstractTV

// 重写这三个方法
- (void)switchChannel;
- (void)adjustVolume;
- (void)powerSwitch;

@end
