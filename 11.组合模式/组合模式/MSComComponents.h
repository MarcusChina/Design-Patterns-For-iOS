//
//  MSComComponents.h
//  组合模式
//
//  Created by marcus on 2017/4/13.
//  Copyright © 2017年 marcus. All rights reserved.
//  节点 父类

#import <Foundation/Foundation.h>

@interface MSComComponents : NSObject
@property (nonatomic, strong) NSString *name;

-(MSComComponents*)MyInit:(NSString*)myName;
-(void)Add:(MSComComponents*)com;
-(void)Remove:(MSComComponents*)com;
-(void)Display:(int)depth;
@end
