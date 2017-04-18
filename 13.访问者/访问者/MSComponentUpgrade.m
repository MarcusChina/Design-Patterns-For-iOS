//
//  MSComponentUpgrade.m
//  访问者
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSComponentUpgrade.h"

@implementation MSComponentUpgrade

- (void)visitEngine:(MSEngine*)engine
{
    NSLog(@"我是升级人员，正在对引擎<%@>进行升级", engine);
}

- (void)visitWheel:(MSWheel*)wheel
{
    NSLog(@"我是升级人员，正在对车轮<%@>进行升级", wheel);
}
@end
