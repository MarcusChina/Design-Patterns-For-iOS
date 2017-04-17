//
//  MSLinkedListIterator.m
//  迭代器
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSLinkedListIterator.h"

@interface MSLinkedListIterator()

@property (nonatomic, strong) MSLinkedList *linkedList;
@property (nonatomic, strong) MSNode *currentNode;

@end

@implementation MSLinkedListIterator

+ (instancetype)linkedListIteratorWithLinkedList:(MSLinkedList *)linkedList {
    MSLinkedListIterator *linkedListIterator = [[MSLinkedListIterator alloc]init];
    linkedListIterator.linkedList = linkedList;
    linkedListIterator.currentNode = linkedList.headNode;
    
    return linkedListIterator;
}

- (id)nextObject {
    MSNode *node = self.currentNode;
    self.currentNode = self.currentNode.nextNode;
    return node;
}

@end
