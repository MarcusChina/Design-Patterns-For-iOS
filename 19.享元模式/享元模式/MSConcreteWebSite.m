//
//  MSConcreteWebSite.m
//  享元模式
//
//  Created by marcus on 2017/4/26.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSConcreteWebSite.h"

@implementation MSConcreteWebSite

- (void)use:(MSUser *)user {
    NSLog(@"网站分类:%@ 用户名字:%@", self.webName, user.userName);
}

@end
