//
//  MSWebSiteFactory.h
//  享元模式
//
//  Created by marcus on 2017/4/26.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSWebSiteProtocol.h"

@interface MSWebSiteFactory : NSObject

@property (nonatomic, strong) NSDictionary *flyweights; //共享对象

- (id<MSWebSiteProtocol>)getWebSiteCategory:(NSString *)webKey;

- (NSInteger)getWebSiteCount;

@end
