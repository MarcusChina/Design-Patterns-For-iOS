//
//  MSCar.m
//  访问者
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSCar.h"

@interface MSCar()

@property (nonatomic, strong) NSMutableArray *mutableArrayOfWheels;

@end

@implementation MSCar

- (id)init
{
    if (self = [super init]) {
        self.mutableArrayOfWheels = [[NSMutableArray alloc] initWithCapacity:4];
    }
    
    return self;
}

- (void)addWheel:(MSWheel *)wheel atIndex:(NSUInteger) index
{
    [self.mutableArrayOfWheels insertObject:wheel atIndex:index];
}

- (NSArray *)arrayOfWheels
{
    return [self.mutableArrayOfWheels copy];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"My car: %@", [NSDictionary dictionaryWithObjects:@[self.engine, self.arrayOfWheels] forKeys:@[@"Engine", @"Wheels"]]];
}

-(void)acceptComponentVisitor:(id<MSComponentVisitor>) visitor
{
    [self.engine acceptComponentVisitor:visitor];
    for (MSWheel *wheel in self.arrayOfWheels) {
        [wheel acceptComponentVisitor:visitor];
    }
}

@end
