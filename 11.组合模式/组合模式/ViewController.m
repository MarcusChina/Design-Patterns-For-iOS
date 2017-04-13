//
//  ViewController.m
//  组合模式
//
//  Created by marcus on 2017/4/12.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MSLeaf.h"
#import "MSComposite.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testComComponents];
}

- (void)testComComponents {
    MSComposite *root = [[MSComposite alloc]MyInit:@"root"];
    [root Add:[[MSLeaf alloc]MyInit:@"Leaf A"]];
    [root Add:[[MSLeaf alloc]MyInit:@"Leaf B"]];
    MSComposite *comp = [[MSComposite alloc]MyInit:@"Composite X"];
    [comp Add:[[MSLeaf alloc]MyInit:@"Leaf XA"]];
    [comp Add:[[MSLeaf alloc]MyInit:@"Leaf XB"]];
    [root Add:comp];
    MSComposite *comp2 = [[MSComposite alloc]MyInit:@"Composite XY"];
    [comp2 Add:[[MSLeaf alloc]MyInit:@"Leaf XYA"]];
    [comp2 Add:[[MSLeaf alloc]MyInit:@"Leaf XYB"]];
    [comp Add:comp2];
    [root Add:[[MSLeaf alloc]MyInit:@"Leaf C"]];
    MSLeaf *leaf = [[MSLeaf alloc]MyInit:@"Leaf D"];
    [root Add:leaf];
    [root Remove:leaf];
    [root Display:1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
