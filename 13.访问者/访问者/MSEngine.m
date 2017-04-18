//
//  MSEngine.m
//  访问者
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSEngine.h"

@implementation MSEngine

- (id)initWithModelName:(NSString *)modelName {
    self = [super init];
    if (self) {
        self.modelName = [modelName copy];
    }
    return self;
}

- (id)init {
    return [self initWithModelName:@"test Engine"];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Engine:===%@",self.modelName];
}

- (void)acceptComponentVisitor:(id<MSComponentVisitor>) visitor
{
    [visitor visitEngine:self];
}

@end
