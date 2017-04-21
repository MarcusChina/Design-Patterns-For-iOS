//
//  MSConcreteHandler1.m
//  责任链
//
//  Created by marcus on 2017/4/21.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSConcreteHandler1.h"

@implementation MSConcreteHandler1

-(void)HandleRequest:(int)request{
    if (request >=0 && request <10) {
        NSLog(@"ConcreteHandler1处理%d", request);
    }
    else if (mySuccessor !=nil) {
        [mySuccessor HandleRequest:request];
    }
}

@end
