//
//  MSOnLineShop.h
//  模板方法
//
//  Created by marcus on 2017/4/21.
//  Copyright © 2017年 marcus. All rights reserved.
//  父类

#import <Foundation/Foundation.h>

@interface MSOnLineShop : NSObject

- (void)shop;

-(void)accessURL;

-(void)pay;

- (Boolean)callMyMobileHook;

@end
