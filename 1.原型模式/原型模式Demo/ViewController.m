//
//  ViewController.m
//  原型模式Demo
//
//  Created by marcus on 2017/4/5.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MSPrototype.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//  测试原型模式
//  新建一个prototype对象
    MSPrototype *prototype = [[MSPrototype alloc] init];
//  深拷贝出一个新的对象prototypeDeepCopy
    MSPrototype *prototypeDeepCopy = [prototype copy];
// 通过prototype直接赋值，其实就是复制了指针(可以理解为取了个别名)，属于浅复制，引用计数不变
    MSPrototype *prototypeShallowCopy = prototype;
    
    NSLog(@"修改前========");
    NSLog(@"原始对象:%p,%@",prototype, prototype.name);
    NSLog(@"浅复制对象:%p,%@",prototypeShallowCopy, prototypeShallowCopy.name);
    NSLog(@"深复制对象:%p,%@",prototypeDeepCopy,prototypeDeepCopy.name);
    
    prototype.name = @"My name is new Prototype";
    NSLog(@"修改后========");
    NSLog(@"修改后原始对象:%p,%@",prototype, prototype.name);
    NSLog(@"修改后浅复制对象:%p,%@",prototypeShallowCopy, prototypeShallowCopy.name);
    NSLog(@"修改后深复制对象:%p,%@",prototypeDeepCopy,prototypeDeepCopy.name);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
