//
//  MSEngine.h
//  访问者
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSComponentVisitor.h"

@interface MSEngine : NSObject

@property (nonatomic, copy) NSString *modelName;

- (id)initWithModelName:(NSString *)modelName;

- (void)acceptComponentVisitor:(id<MSComponentVisitor>) visitor;

@end
