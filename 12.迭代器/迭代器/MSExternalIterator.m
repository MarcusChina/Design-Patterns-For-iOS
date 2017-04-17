//
//  MSExternalIterator.m
//  迭代器
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSExternalIterator.h"

@interface MSExternalIterator()

@end

@implementation MSExternalIterator

+ (void)externalIterator {
    //1.NSEnumerator 使用NSEnumerator来枚举NSArray、NSDictionary和NSSet
    NSArray *array = @[@"张三", @"李四", @"王五"];
    NSEnumerator *itemEnumerator = [array objectEnumerator];  //正序  0,1,2
    NSString *item;
    while (item = [itemEnumerator nextObject]) {
        NSLog(@"item is :%@", item);
    }
    
    NSEnumerator *itemEnumerator1 = [array reverseObjectEnumerator]; //倒序  2,1,0
    NSString *item1;
    while (item1 = [itemEnumerator1 nextObject]) {
        NSLog(@"item is :%@", item1);
    }
    
    NSDictionary *myDic=[[NSDictionary alloc]initWithObjectsAndKeys:@"张三",@"name",@"李四",@"name1", nil];
    NSUInteger count = [myDic count];
    NSLog(@"词典的数量为：  %lu",count);
    NSEnumerator * myEnumerator = [myDic keyEnumerator];
    
    for (NSObject *object in myEnumerator) {
        NSLog(@"遍历KEY的值: %@",object);
    }
    
    NSEnumerator * myEnumerator1  = [[myDic allValues] objectEnumerator];
    NSString *value;
    while((value = [myEnumerator1 nextObject]))
    {
        NSLog(@"遍历的值: %@",value);
    }
    
    //2.基于块的枚举
    NSArray *arrayBlock = @[@"张三", @"李四", @"王五"];
    NSString *str = @"李四";
    [arrayBlock enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"item is :%@", obj);
        
        if ([obj localizedStandardCompare:str] == NSOrderedSame) {
            *stop = YES;
            NSLog(@"停止遍历");
        }
    }];
    
    //3.快速枚举
    NSArray *arrayQuick = @[@"张三", @"李四", @"王五"];
    for (id item in arrayQuick) {
        NSLog(@"item is :%@", item);
    }
}


@end
