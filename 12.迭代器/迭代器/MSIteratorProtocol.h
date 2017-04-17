//
//  MSIteratorProtocol.h
//  迭代器
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//  创建一个迭代器协议类

#import <Foundation/Foundation.h>

@protocol MSIteratorProtocol <NSObject>

@required

//下一个对象
- (id)nextObject;

@end
