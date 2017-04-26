//
//  MSWebSiteFactory.m
//  享元模式
//
//  Created by marcus on 2017/4/26.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSWebSiteFactory.h"
#import "MSConcreteWebSite.h"

@implementation MSWebSiteFactory

- (instancetype)init {
    self = [super init];
    if (self) {
        _flyweights = [NSDictionary dictionary];
    }
    return self;
}

- (id<MSWebSiteProtocol>)getWebSiteCategory:(NSString *)webKey {
    __block id<MSWebSiteProtocol> webset = nil;
    [self.flyweights enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        if (webKey == key) {
            webset = obj;
            *stop = YES;
        }
    }];
    
    if (webset == nil) {
        MSConcreteWebSite *concreteWebset = [[MSConcreteWebSite alloc] init];
        concreteWebset.webName = webKey;
        webset = concreteWebset;
        
        NSMutableDictionary *mutabledic = [NSMutableDictionary dictionaryWithDictionary:self.flyweights];
        [mutabledic setObject:webset forKey:webKey];
        self.flyweights = [NSDictionary dictionaryWithDictionary:mutabledic];
    }
    
    return webset;
}

- (NSInteger)getWebSiteCount {
    return self.flyweights.count;
}

@end
