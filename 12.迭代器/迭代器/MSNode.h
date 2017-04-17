//
//  MSNode.h
//  迭代器
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//  节点类

#import <Foundation/Foundation.h>

@interface MSNode : NSObject

//指向下一个节点
@property (nonatomic, strong) MSNode *nextNode;
//节点挂载的对象
@property (nonatomic, strong) id item;

+ (instancetype)nodeWithItem:(id)item;

@end
