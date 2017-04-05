//
//  MSPrototype.h
//  原型模式Demo
//
//  Created by marcus on 2017/4/5.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSPrototype : NSObject<NSCopying>

//通过name属性，检测复制的变化
@property (nonatomic,strong) NSString *name;

@end
