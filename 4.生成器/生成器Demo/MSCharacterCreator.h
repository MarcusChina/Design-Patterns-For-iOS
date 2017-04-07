//
//  MSCharacterCreator.h
//  生成器Demo
//
//  Created by marcus on 2017/4/7.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSCharacter.h"
#import "MSProfession.h"

@interface MSCharacterCreator : NSObject

// 创建兽人角色

 - (MSCharacter*)createOrcPlayerWithProfession:(MSProfession*)profession;
 
// 创建人类角色
 - (MSCharacter*)createHumanPlayerWithProfession:(MSProfession*)profession;

 
@end
