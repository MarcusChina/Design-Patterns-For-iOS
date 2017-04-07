//
//  ViewController.m
//  生成器Demo
//
//  Created by marcus on 2017/4/6.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MSSaber.h"
#import "MSCaster.h"
#import "MSCharacter.h"
#import "MSCharacterCreator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MSSaber *saber = [[MSSaber alloc]init];
    MSCaster *caster = [[MSCaster alloc]init];
    
    MSCharacterCreator *creator = [[MSCharacterCreator alloc]init];
    
    MSCharacter *orcSaber = [creator createOrcPlayerWithProfession:saber];
    MSCharacter *orcCaster = [creator createOrcPlayerWithProfession:caster];
    MSCharacter *humanSaber = [creator createHumanPlayerWithProfession:saber];
    MSCharacter *humanCaster = [creator createHumanPlayerWithProfession:caster];
    
    NSLog(@"人族Saber攻击力:%ld;防御力:%ld;力量:%ld,耐力:%ld,智力:%ld,敏捷:%ld",orcSaber.protection,orcSaber.power,
          orcSaber.strength, orcSaber.stamina,orcSaber.intelligence,orcSaber.agility);
    NSLog(@"人族Caster攻击力:%ld;防御力:%ld;力量:%ld,耐力:%ld,智力:%ld,敏捷:%ld",orcCaster.protection,orcCaster.power,
          orcCaster.strength, orcCaster.stamina,orcCaster.intelligence,orcCaster.agility);
    NSLog(@"兽族Saber攻击力:%ld;防御力:%ld;力量:%ld,耐力:%ld,智力:%ld,敏捷:%ld",humanSaber.protection,humanSaber.power,
          humanSaber.strength, humanSaber.stamina,humanSaber.intelligence,humanSaber.agility);
    NSLog(@"兽族Caster攻击力:%ld;防御力:%ld;力量:%ld,耐力:%ld,智力:%ld,敏捷:%ld",humanCaster.protection,humanCaster.power,
          humanCaster.strength, humanCaster.stamina,humanCaster.intelligence,humanCaster.agility);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
