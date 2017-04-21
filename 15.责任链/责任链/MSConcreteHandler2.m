//
//  MSConcreteHandler2.m
//  责任链
//
//  Created by marcus on 2017/4/21.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSConcreteHandler2.h"

@implementation MSConcreteHandler2

-(void)HandleRequest:(int)request{
    if (request >=10 && request <20) {
        NSLog(@"ConcreteHandler2处理%d", request);
    }
    else if(mySuccessor !=nil) {
        [mySuccessor HandleRequest:request];
    }
}

@end
