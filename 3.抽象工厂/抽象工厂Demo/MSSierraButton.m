//
//  MSSierraButton.m
//  抽象工厂Demo
//
//  Created by marcus on 2017/4/6.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSSierraButton.h"

@implementation MSSierraButton

#pragma mark - initialize
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor blueColor];
        [self setTitle:@"SierraButton" forState:UIControlStateNormal];
    }
    
    return self;
}


@end
