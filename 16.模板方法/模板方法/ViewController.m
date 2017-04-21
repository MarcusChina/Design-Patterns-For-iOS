//
//  ViewController.m
//  模板方法
//
//  Created by marcus on 2017/4/21.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MSTmall.h"
#import "MSJDong.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MSOnLineShop  *tmall=[[MSTmall alloc]init];
    [tmall shop];
    MSOnLineShop *jd=[[MSJDong alloc]init];
    [jd shop];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
