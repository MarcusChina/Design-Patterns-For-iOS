//
//  ViewController.m
//  桥接模式
//
//  Created by marcus on 2017/4/10.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MSAbstractRemoteControl.h"
#import "MSConcreteRemoteControl.h"
#import "MSTVProtocol.h"
#import "MSTVA.h"
#import "MSTVB.h"
#import "MSAbstractTV.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MSAbstractRemoteControl *remoteControl = [[MSConcreteRemoteControl alloc] init];
    MSAbstractTV *tvProtocol = [[MSTVA alloc] init];
    remoteControl.tvProtocol = tvProtocol;
    
    [remoteControl detectTVFunction];
    
    NSLog(@"///////////////////////////////");
    
    tvProtocol = [[MSTVB alloc] init];
    remoteControl.tvProtocol = tvProtocol;
    [remoteControl detectTVFunction];
    
    /**
     *  桥接模式：将抽象部分与它的实现部分分离，使它们都可以独立地变化。
     *  在本例中，AbstractRemoteControl是抽象部分，TVProtocol是其实现部分。
     */
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
