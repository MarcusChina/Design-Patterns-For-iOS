//
//  MSSaber.m
//  生成器Demo
//
//  Created by marcus on 2017/4/7.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSSaber.h"

@implementation MSSaber

- (MSProfession *)buildStrength:(NSInteger)strength {
    
    [super buildStrength:strength];
    
    self.character.power += strength * 2;
    
    self.character.protection += strength * 2;
    
    return self;
}

- (MSProfession *)buildStamina:(NSInteger)stamina {
    
    [super buildStamina:stamina];
    
    self.character.power += stamina * 2;
    
    self.character.protection -= stamina * 1;
    
    return self;
}

- (MSProfession *)buildIntelligence:(NSInteger)intelligence {
    
    [super buildIntelligence:intelligence];
    
    self.character.power -= intelligence * 2;
    
    self.character.protection += intelligence * 2;
    
    return self;
}

- (MSProfession *)buildAgility:(NSInteger)agility {
    
    [super buildAgility:agility];
    
    self.character.power += agility * 1;
    
    self.character.protection -= agility * 1;
    
    return self;
}

@end
