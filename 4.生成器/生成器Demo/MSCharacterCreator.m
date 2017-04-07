//
//  MSCharacterCreator.m
//  生成器Demo
//
//  Created by marcus on 2017/4/7.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSCharacterCreator.h"

@implementation MSCharacterCreator

// 创建兽类角色
- (MSCharacter*)createOrcPlayerWithProfession:(MSProfession*)profession{
    return [[[[[profession buildNewCharacter]
                           buildStrength: 30]
                           buildStamina: 30]
                           buildIntelligence: 20]
                           buildAgility: 20].character;
}

// 创建人类角色
- (MSCharacter*)createHumanPlayerWithProfession:(MSProfession*)profession{
    return [[[[[profession buildNewCharacter]
               buildStrength: 20]
              buildStamina: 20]
             buildIntelligence: 30]
            buildAgility: 30].character;
}

@end
