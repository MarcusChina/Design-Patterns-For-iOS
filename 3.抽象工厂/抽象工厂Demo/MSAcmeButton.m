//
//  MSAcmeButton.m
//  抽象工厂Demo
//
//  Created by marcus on 2017/4/6.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSAcmeButton.h"

@implementation MSAcmeButton

#pragma mark - initialize
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor redColor];
        [self setTitle:@"acmeButton" forState:UIControlStateNormal];
    }
    
    return self;
}

@end
