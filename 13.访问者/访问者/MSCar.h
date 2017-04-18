//
//  MSCar.h
//  访问者
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSEngine.h"
#import "MSWheel.h"
#import "MSComponentVisitor.h"

@interface MSCar : NSObject

@property (nonatomic, strong) MSEngine *engine;
@property (nonatomic, readonly) NSArray *arrayOfWheels;

- (void)addWheel:(MSWheel *)wheel atIndex:(NSUInteger) index;
- (void)acceptComponentVisitor:(id<MSComponentVisitor>) visitor;

@end
