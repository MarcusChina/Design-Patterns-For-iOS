//
//  ViewController.m
//  代理模式
//
//  Created by marcus on 2017/4/26.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MSLoginVC.h"

@interface ViewController ()<MSLoginVCDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MSLoginVC *loginVC = [[MSLoginVC alloc]init];
    loginVC.delegate = self;
    [self.navigationController pushViewController:loginVC animated:YES];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)userLoginWithUsername:(NSString *)username password:(NSString *)password {
    NSLog(@"%@%@",username,password);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
