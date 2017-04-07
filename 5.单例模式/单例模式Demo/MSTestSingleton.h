//
//  MSTestSingleton.h
//  单例模式Demo
//
//  Created by marcus on 2017/4/7.
//  Copyright © 2017年 marcus. All rights reserved.
//  利用宏模式创建单例

#import <Foundation/Foundation.h>
#import "MSSingleton.h"

@interface MSTestSingleton : NSObject

SingletonH(MSTestSingleton)

@end
