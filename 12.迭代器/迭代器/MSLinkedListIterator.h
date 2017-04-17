//
//  MSLinkedListIterator.h
//  迭代器
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//  创建迭代器

#import <Foundation/Foundation.h>
#import "MSLinkedList.h"
#import "MSIteratorProtocol.h"

@interface MSLinkedListIterator : NSObject <MSIteratorProtocol>

//返回一个链表的迭代器的遍历构造器
+ (instancetype)linkedListIteratorWithLinkedList:(MSLinkedList *)linkedList;

@end
