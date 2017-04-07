//
//  ViewController.m
//  单例模式Demo
//
//  Created by marcus on 2017/4/7.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MSTestSingleton.h"
#import "MSCommonSingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MSTestSingleton *test1 = [[MSTestSingleton alloc]init];
    MSTestSingleton *test2 = [test1 copy];
    MSTestSingleton *test3 = [MSTestSingleton sharedMSTestSingleton];
    MSTestSingleton *test4 = [MSTestSingleton sharedMSTestSingleton];
    MSTestSingleton *test5 = [[MSTestSingleton alloc]init];
    
    NSLog(@"test1:%@; test2:%@; test3:%@; test4:%@; test5:%@",test1, test2, test3, test4, test5);
    
    
    MSCommonSingleton *com1 = [[MSCommonSingleton alloc]init];
    MSCommonSingleton *com2 = [MSCommonSingleton sharedMSCommonSingleton];
    MSCommonSingleton *com3 = [com1 copy];
    MSCommonSingleton *com4 = [MSCommonSingleton sharedMSCommonSingleton];
    MSCommonSingleton *com5 = [[MSCommonSingleton alloc]init];
    NSLog(@"test1:%@; test2:%@; test3:%@; test4:%@; test5:%@",com1, com2, com3, com4, com5);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
