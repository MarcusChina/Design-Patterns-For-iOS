//
//  MSCharacter.h
//  生成器Demo
//
//  Created by marcus on 2017/4/7.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSCharacter : NSObject

// 攻击力
@property (nonatomic, assign) NSInteger protection;
// 防御力
@property (nonatomic, assign) NSInteger power;
// 力量
@property (nonatomic, assign) NSInteger strength;
// 耐力
@property (nonatomic, assign) NSInteger stamina;
// 智力
@property (nonatomic, assign) NSInteger intelligence;
// 敏捷
@property (nonatomic, assign) NSInteger agility;

@end
