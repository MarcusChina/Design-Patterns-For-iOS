//
//  ViewController.m
//  观察者
//
//  Created by marcus on 2017/4/11.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MSModelA.h"
#import "MSModelB.h"
#import "MSPerson.h"


@interface ViewController ()
@property (nonatomic, strong) MSModelA *modelA;
@property (nonatomic, strong) MSModelB *modelB;
@property (nonatomic, strong) MSPerson *person1;
@property (nonatomic, strong) MSPerson *person2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self testNotificationCenter];
    
    [self initKVCAndKVO];
    [self testKVO];
    [self testKVC];
    
    
}

- (void)testNotificationCenter {
    self.modelA = [[MSModelA alloc]init];
    self.modelB = [[MSModelB alloc]init];
    NSNotification  * subjectMessage = [NSNotification  notificationWithName:@"subjectMessage"  object: self
                                                                    userInfo:@{@"content":@"老老实实显示通知信息"}];
    NSNotificationCenter  * notificationCenter = [ NSNotificationCenter  defaultCenter];
    [notificationCenter postNotification:subjectMessage];
}

- (void)initKVCAndKVO {
    self.person1 = [[MSPerson alloc]init];
    self.person2 = [[MSPerson alloc]init];
}

- (void)testKVC {
    [self.person1 setValue:@"张三" forKey:@"name"];
    [self.person1 setValue:@(175) forKey:@"height"];
    MSAddress *address1 = [[MSAddress alloc]init];
    [self.person1 setValue:address1 forKey:@"address"];
    [self.person1 setValue:@"上海市杨浦区大连路" forKeyPath:@"address.addressName"];
    [self.person1 setValue:@(518) forKeyPath:@"address.addressNo"];
    self.person1.idNumber = @"3400000090909090";
    
    [self.person2 setValue:@"李四" forKey:@"name"];
    [self.person2 setValue:@(170) forKey:@"height"];
    MSAddress *address2 = [[MSAddress alloc]init];
    [self.person2 setValue:address2 forKey:@"address"];
    [self.person2 setValue:@"上海市杨浦区昆明路" forKeyPath:@"address.addressName"];
    [self.person2 setValue:@(519) forKeyPath:@"address.addressNo"];

    NSLog(@"姓名：%@；身高：%@；住址：%@%@号",[self.person1 valueForKey:@"name"],[self.person1 valueForKey:@"height"],[self.person1 valueForKeyPath:@"address.addressName"],[self.person1 valueForKeyPath:@"address.addressNo"]);
    
        NSLog(@"姓名：%@；身高：%@；住址：%@%@号",[self.person2 valueForKey:@"name"],[self.person2 valueForKey:@"height"],[self.person2 valueForKeyPath:@"address.addressName"],[self.person2 valueForKeyPath:@"address.addressNo"]);
}

- (void)testKVO {
    [self.person1 addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:@"我观察的是name属性"];
        [self.person1 addObserver:self forKeyPath:@"idNumber" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:@"我观察的是idNumber属性"];
    
        [self.person1 addObserver:self forKeyPath:@"address.addressName" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:@"我观察的是address.addressName属性"];
}

- (void)observeValueForKeyPath:(NSString*)keyPath ofObject:(id)object change:(NSDictionary*)change context:(void*)context{
    NSLog(@"被监测的那个对象的属性所在的路径:%@",keyPath);
    
    NSLog(@"被观察者:%@", object);
    
    NSLog(@"属性所有状态下的值:%@", change);
    
    NSLog(@"在注册观察者的时候,传过来的context :%@", context);
}

- (IBAction)changePersonValue:(UIButton *)sender {
    [self.person1 setValue:@"张三newnewnew" forKey:@"name"];
    [self.person1 setValue:@"上海市杨浦区昆明路newnew" forKeyPath:@"address.addressName"];
    [self.person2 setValue:@"李四newnewnew" forKey:@"name"];
    [self.person2 setValue:@"上海市杨浦区昆明路newnew" forKeyPath:@"address.addressName"];
    self.person1.idNumber = @"27900000000";
    [self.person1 setValue:@"988888888" forKey:@"idNumber"];
}

- (void)dealloc {
   [self.person1 removeObserver:self forKeyPath:@"name" context:@"我观察的是name属性"];
   [self.person1 removeObserver:self forKeyPath:@"address.addressName" context:@"我观察的是address.addressName属性"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
