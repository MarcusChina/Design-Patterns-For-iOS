//
//  ViewController.m
//  装饰模式
//
//  Created by marcus on 2017/4/18.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MSEspresso.h"
#import "MSMilk.h"
#import "MSMoCha.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self testDecorator];
}

- (void)testDecorator {
    id<MSBeverage> espresso = [[MSEspresso alloc]init];
    NSLog(@"name: %@ \n cost: %f \n", [espresso getName], [espresso cost]);
    
    espresso = [[MSMilk alloc]initWithBeverage:espresso];
    espresso = [[MSMoCha alloc]initWithBeverage:espresso];
    NSLog(@"name: %@ \n cost:%f", [espresso getName], [espresso cost]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
