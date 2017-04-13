//
//  MSComposite.m
//  组合模式
//
//  Created by marcus on 2017/4/13.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSComposite.h"

@implementation MSComposite

-(MSComposite*)MyInit:(NSString *)myName{
    self.name = myName;
    self.children= [NSMutableArray new];
    return self;
}

-(void)Add:(MSComComponents *)c{
    [self.children addObject:c];
}

-(void)Remove:(MSComComponents *)c{
    [self.children addObject:c];
}

-(void)Display:(int)depth{
    NSLog(@"[%d Level] %@", depth,self.name);
    for(MSComComponents *component in self.children)
        [component Display:depth +1];
}

@end
