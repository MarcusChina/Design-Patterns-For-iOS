//
//  MSLeaf.h
//  组合模式
//
//  Created by marcus on 2017/4/13.
//  Copyright © 2017年 marcus. All rights reserved.
//  叶子节点 继承于跟节点  叶子节点中没有子节点

#import "MSComComponents.h"

@interface MSLeaf : MSComComponents

-(MSLeaf*)MyInit:(NSString*)myName;

@end
