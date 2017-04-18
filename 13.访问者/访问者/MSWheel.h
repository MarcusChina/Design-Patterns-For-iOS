//
//  MSWheel.h
//  访问者
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSComponentVisitor.h"

@interface MSWheel : NSObject

@property (nonatomic, assign) float diameter; //车轮直径

- (void)acceptComponentVisitor:(id<MSComponentVisitor>) visitor;

@end
