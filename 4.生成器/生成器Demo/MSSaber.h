//
//  MSSaber.h
//  生成器Demo
//
//  Created by marcus on 2017/4/7.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSProfession.h"

@interface MSSaber : MSProfession

- (MSProfession *)buildStrength:(NSInteger)strength;
- (MSProfession *)buildStamina:(NSInteger)stamina;
- (MSProfession *)buildIntelligence:(NSInteger)intelligence;
- (MSProfession *)buildAgility:(NSInteger)agility;

@end
