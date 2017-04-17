 //
//  ViewController.m
//  迭代器
//
//  Created by marcus on 2017/4/13.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MSExternalIterator.h"
#import "MSInsideIterator.h"
#import "MSLinkedList.h"
#import "MSLinkedListIterator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//   测试迭代器使用
    [self testIterator];
    
    
//    测试迭代器的实现
    [self iteratorImplementation];
}

- (void)testIterator {
    //外部迭代器
    [MSExternalIterator externalIterator];
    
    //内部迭代器
    MSInsideIterator *iterator = [[MSInsideIterator alloc]init];
    [iterator testInsideIterator];
}

- (void)iteratorImplementation {
    MSLinkedList *linkedList = [[MSLinkedList alloc]init];
    [linkedList addItem:@"测试AAA"];
    [linkedList addItem:@"测试BBB"];
    [linkedList addItem:@"测试ccc"];
    [linkedList addItem:@"测试DDD"];
    [linkedList addItem:@"测试WWW"];
    
    MSLinkedListIterator *linkedIterator = [MSLinkedListIterator linkedListIteratorWithLinkedList:linkedList];
    
    MSNode *node = nil;
    while (node = [linkedIterator nextObject]) {
        NSLog(@"======%@",node.item);
    }
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
