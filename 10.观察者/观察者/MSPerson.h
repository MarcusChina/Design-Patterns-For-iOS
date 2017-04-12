//
//  MSPerson.h
//  观察者
//
//  Created by marcus on 2017/4/12.
//  Copyright © 2017年 marcus. All rights reserved.
//  外界无法通过Setter、Getter方法访问到 MSPerson，MSAddress 中的属性  而可以通过KVC的方式访问

#import <Foundation/Foundation.h>
#import "MSAddress.h"

@interface MSPerson : NSObject
{
    NSString * _name;
    NSInteger _height;
   __strong MSAddress *address;
}

@property (strong, nonatomic) NSString *idNumber;


@end
