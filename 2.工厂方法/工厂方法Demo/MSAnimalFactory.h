//
//  MSAnimalFactory.h
//  工厂方法Demo
//
//  Created by marcus on 2017/4/5.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSAnimal.h"

@interface MSAnimalFactory : NSObject

+ (MSAnimal*)createAnimal;

@end
