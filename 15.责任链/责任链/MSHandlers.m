//
//  MSHandlers.m
//  责任链
//
//  Created by marcus on 2017/4/21.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSHandlers.h"

@implementation MSHandlers

-(void)SetSuccessor:(MSHandlers *)successor{
    mySuccessor = successor;
}
-(void)HandleRequest:(int)request{
    return;
}

@end
