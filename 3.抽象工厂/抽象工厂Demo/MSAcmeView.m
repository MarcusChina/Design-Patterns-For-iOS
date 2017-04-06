//
//  MSAcmeView.m
//  抽象工厂Demo
//
//  Created by marcus on 2017/4/6.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSAcmeView.h"

@implementation MSAcmeView

#pragma mark - initialize
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor redColor];
    }
    
    return self;
}

@end
