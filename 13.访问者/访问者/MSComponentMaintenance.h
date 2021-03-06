//
//  MSComponentMaintenance.h
//  访问者
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSComponentVisitor.h"

@interface MSComponentMaintenance : NSObject <MSComponentVisitor>

- (void) visitEngine:(MSEngine *) engine;
- (void) visitWheel:(MSWheel *) wheel;

@end
