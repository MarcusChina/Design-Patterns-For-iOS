//
//  MSLeaf.m
//  组合模式
//
//  Created by marcus on 2017/4/13.
//  Copyright © 2017年 marcus. All rights reserved.
//  

#import "MSLeaf.h"

@implementation MSLeaf

-(MSLeaf*)MyInit:(NSString *)myName{
    self.name = myName;
    return self;
}
-(void)Add:(MSComComponents *)c{
    NSLog(@"Cannot add to a leaf");
}
-(void)Remove:(MSComComponents *)c{
    NSLog(@"Cannot remove from a leaf");
}
-(void)Display:(int)depth{
    NSLog(@"[%dLevel]%@", depth,self.name);
}

@end
