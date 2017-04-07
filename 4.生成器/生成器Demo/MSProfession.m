//
//  MSProfession.m
//  生成器Demo
//
//  Created by marcus on 2017/4/7.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSProfession.h"

@interface MSProfession()

@property (nonatomic, strong) MSCharacter *character;

@end

@implementation MSProfession

- (MSProfession *)buildNewCharacter {
    
    self.character = nil;
    self.character = [[MSCharacter alloc] init];
    
    return self;
}



- (MSProfession *)buildStrength:(NSInteger)strength {
    
    self.character.strength = strength;
    
    return self;
}



- (MSProfession *)buildStamina:(NSInteger)stamina {
    
    self.character.stamina = stamina;
    
    return self;
}



- (MSProfession *)buildIntelligence:(NSInteger)intelligence {
    
    self.character.intelligence = intelligence;
    
    return self;
}

- (MSProfession *)buildAgility:(NSInteger)agility {
    
    self.character.agility = agility;
    
    return self;
}


@end
