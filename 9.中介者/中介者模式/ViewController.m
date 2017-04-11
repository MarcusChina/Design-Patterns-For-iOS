//
//  ViewController.m
//  中介者模式
//
//  Created by marcus on 2017/4/11.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MSCDDriver.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MSCDDriver *cd = [[MSCDDriver alloc]init];
    [cd  readCD];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
