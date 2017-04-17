//
//  MSNode.m
//  迭代器
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSNode.h"

@implementation MSNode

+ (instancetype)nodeWithItem:(id)item {
    //这里之所以使用self 关键字开辟对象，是考虑到有继承的问题
    MSNode *node = [[[self class] alloc]init];
    node.item = item;
    return node;
}

@end
