//
//  MSHandlers.h
//  责任链
//
//  Created by marcus on 2017/4/21.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSHandlers : NSObject {
    MSHandlers *mySuccessor;
}

- (void)SetSuccessor:(MSHandlers*)successor;
- (void)HandleRequest:(int)request;


@end
