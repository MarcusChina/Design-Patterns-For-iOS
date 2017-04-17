//
//  MSLinkedList.h
//  迭代器
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//  链表类

#import <Foundation/Foundation.h>
#import "MSNode.h"

@interface MSLinkedList : NSObject

//头节点
@property (nonatomic, strong, readonly) MSNode *headNode;
//有几个节点
@property (nonatomic, readonly) NSInteger numberOfNodes;
//节点挂载的对象
- (void)addItem:(id)item;

@end
