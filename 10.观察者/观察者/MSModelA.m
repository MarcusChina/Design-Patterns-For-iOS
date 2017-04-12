//
//  MSModelA.m
//  观察者
//
//  Created by marcus on 2017/4/11.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSModelA.h"

@implementation MSModelA

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSNotificationCenter  * notificationCenter = [ NSNotificationCenter  defaultCenter];
        [notificationCenter addObserver: self  selector: @selector(update:) name:@"subjectMessage"  object: nil ];
    }
    return self;
}

- (void)update:(NSNotification*)notification{
    
    if ([[notification name] isEqualToString:@"subjectMessage"]) {
        NSDictionary *dic = notification.userInfo;
        NSLog(@"ModelA接收到通知内容：%@",[dic objectForKey:@"content"]);
        
    }
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
