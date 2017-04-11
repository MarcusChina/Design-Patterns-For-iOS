//
//  ViewController.m
//  外观模式
//
//  Created by marcus on 2017/4/10.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MS4SWaiter.h"

@interface ViewController ()
@property (nonatomic,strong) MS4SWaiter *waiter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.waiter = [[MS4SWaiter alloc]init];
    NSLog(@"==================现金买车=====================");
    [self.waiter buyCarWithCash];
    NSLog(@"==================现金买车=====================");

    NSLog(@"==================贷款买车=====================");
    [self.waiter buyCarWithLoad];
    NSLog(@"==================贷款买车=====================");

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
