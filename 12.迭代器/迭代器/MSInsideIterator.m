//
//  MSInsideIterator.m
//  迭代器
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSInsideIterator.h"
#import "MSInsideMode.h"

@implementation MSInsideIterator

- (void)testInsideIterator{
    MSInsideMode *mode1 = [[MSInsideMode alloc]init];
    mode1.currentValue = 1;
    MSInsideMode *mode2 = [[MSInsideMode alloc]init];
    mode2.currentValue = 2;
    MSInsideMode *mode3 = [[MSInsideMode alloc]init];
    mode3.currentValue = 3;
    MSInsideMode *mode4 = [[MSInsideMode alloc]init];
    mode4.currentValue = 100;
    NSMutableArray *array = [NSMutableArray arrayWithObjects:mode1,mode2,mode3,mode4, nil];
    
    [array makeObjectsPerformSelector:@selector(squareValue)];
    
    for (MSInsideMode *mode in array) {
        NSLog(@"mode value:%ld",mode.currentValue);
    }
}

@end
