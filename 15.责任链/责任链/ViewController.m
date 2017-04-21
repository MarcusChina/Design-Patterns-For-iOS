//
//  ViewController.m
//  责任链
//
//  Created by marcus on 2017/4/19.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MSHandlers.h"
#import "MSConcreteHandler1.h"
#import "MSConcreteHandler2.h"
#import "MSConcreteHandler3.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    MSHandlers *h1 = [[MSConcreteHandler1 alloc]init];
    MSHandlers *h2 = [[MSConcreteHandler2 alloc]init];
    MSHandlers *h3 = [[MSConcreteHandler3 alloc]init];
    [h1 SetSuccessor:h2];
    [h2 SetSuccessor:h3];
    int requests[] = {2,5,14,22,18,3,27,20};
    for (int i =0; i <8; i++) {
        [h1 HandleRequest:requests[i]];
    }

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
