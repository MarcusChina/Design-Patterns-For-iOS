//
//  MSComposite.h
//  组合模式
//
//  Created by marcus on 2017/4/13.
//  Copyright © 2017年 marcus. All rights reserved.
//  枝节点：

#import "MSComComponents.h"

@interface MSComposite : MSComComponents

@property (nonatomic,strong) NSMutableArray *children;
-(MSComposite*)MyInit:(NSString*)myName;

@end
