//
//  ViewController.m
//  访问者
//
//  Created by marcus on 2017/4/17.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MSCar.h"
#import "MSEngine.h"
#import "MSWheel.h"
#import "MSComponentUpgrade.h"
#import "MSComponentMaintenance.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    MSCar *car = [[MSCar alloc] init];
    MSEngine *engine = [[MSEngine alloc] initWithModelName:@"V8"];
    MSWheel *wheelA = [[MSWheel alloc] init];
    MSWheel *wheelB = [[MSWheel alloc] init];
    MSWheel *wheelC = [[MSWheel alloc] init];
    MSWheel *wheelD = [[MSWheel alloc] init];
    
    car.engine = engine;
    [car addWheel:wheelA atIndex:0];
    [car addWheel:wheelB atIndex:1];
    [car addWheel:wheelC atIndex:2];
    [car addWheel:wheelD atIndex:3];
    
    NSLog(@"%@", car);
    
    //对组建进行“升级”
    MSComponentUpgrade *upgradeVisitor = [[MSComponentUpgrade alloc] init];
    [car acceptComponentVisitor:upgradeVisitor];
    
    //对组建进行“维修”
    MSComponentMaintenance *maintenanceVisitor = [[MSComponentMaintenance alloc] init];
    [car acceptComponentVisitor:maintenanceVisitor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
