//
//  MSComComponents.m
//  组合模式
//
//  Created by marcus on 2017/4/13.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSComComponents.h"

@implementation MSComComponents

-(MSComComponents*)MyInit:(NSString *)myName{
    self.name = myName;
    return self;
}
-(void)Add:(MSComComponents *)c{
    return;
}
-(void)Remove:(MSComComponents *)c{
    return;
}
-(void)Display:(int)depth{
    return;
}

@end
