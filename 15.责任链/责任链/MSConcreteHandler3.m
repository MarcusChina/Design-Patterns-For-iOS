//
//  MSConcreteHandler3.m
//  责任链
//
//  Created by marcus on 2017/4/21.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSConcreteHandler3.h"

@implementation MSConcreteHandler3

-(void)HandleRequest:(int)request{
    if (request >=20 && request <30) {
        NSLog(@"ConcreteHandler3处理%d", request);
    }
    else if (mySuccessor !=nil) {
        [mySuccessor HandleRequest:request];
    }
}

@end
