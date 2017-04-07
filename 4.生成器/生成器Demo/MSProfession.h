//
//  MSProfession.h
//  生成器Demo
//
//  Created by marcus on 2017/4/7.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSCharacter.h"

@interface MSProfession : NSObject


// 最后所生成的角色（Character） 
 @property (nonatomic, strong, readonly) MSCharacter *character;
 
 /*初始化并且创建一个新的职业 */
 
 - (MSProfession *)buildNewCharacter;

 - (MSProfession *)buildStrength:(NSInteger)strength;
 - (MSProfession *)buildStamina:(NSInteger)stamina;
 - (MSProfession *)buildIntelligence:(NSInteger)intelligence;
 - (MSProfession *)buildAgility:(NSInteger)agility;


@end
