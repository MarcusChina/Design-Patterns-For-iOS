//
//  MSWheel.m
//  访问者
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSWheel.h"

@implementation MSWheel

- (id)init {
    self = [super init];
    if (self) {
        self.diameter = 400.0f;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Wheel: %f mm", self.diameter];
}

- (void)acceptComponentVisitor:(id<MSComponentVisitor>) visitor
{
    [visitor visitWheel:self];
}

@end
