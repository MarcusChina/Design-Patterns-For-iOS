//
//  MSComponentVisitor.h
//  访问者
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//  定义访问者协议

@class MSEngine,MSWheel;

@protocol MSComponentVisitor <NSObject>

- (void)visitEngine:(MSEngine *)engine;
- (void)visitWheel:(MSWheel *) wheel;

@end
