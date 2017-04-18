//
//  MSComponentMaintenance.m
//  访问者
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSComponentMaintenance.h"

@implementation MSComponentMaintenance

- (void) visitEngine:(MSEngine *) engine
{
    NSLog(@"我是维修人员，正在对引擎<%@>进行维修", engine);
}

- (void) visitWheel:(MSWheel *) wheel
{
    NSLog(@"我是维修人员，正在对车轮<%@>进行维修", wheel);
}

@end
