//
//  ViewController.m
//  工厂方法Demo
//
//  Created by marcus on 2017/4/5.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MSAnimal.h"
#import "MSCatFactory.h"
#import "MSDogFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MSAnimal *animal1 = [MSCatFactory createAnimal];
    animal1.name = @"猫咪🐱";
    [animal1 laugh];
    
    MSAnimal *animal2 = [MSDogFactory createAnimal];
    animal2.name = @"狗狗🐶";
    [animal2 laugh];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
