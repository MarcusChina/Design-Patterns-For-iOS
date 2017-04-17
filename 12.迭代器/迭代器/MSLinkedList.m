 //
//  MSLinkedList.m
//  迭代器
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSLinkedList.h"

@interface MSLinkedList()

@property (nonatomic, strong) MSNode *headNode;
@property (nonatomic) NSInteger numberOfNodes;

@end

@implementation MSLinkedList

- (void)addItem:(id)item {
    if (self.headNode == nil) {
        self.headNode = [MSNode nodeWithItem:item];
    }else {
        [self addItem:item node:self.headNode];
    }
}

- (void)addItem:(id)item node:(MSNode*)node {
    if (node.nextNode == nil) {
        node.nextNode = [MSNode nodeWithItem:item];
    }else {
        [self addItem:item node:node.nextNode];
    }
}

@end
