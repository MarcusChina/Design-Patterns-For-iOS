//
//  ViewController.m
//  享元模式
//
//  Created by marcus on 2017/4/24.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MSWebSiteProtocol.h"
#import "MSWebSiteFactory.h"
#import "MSConcreteWebSite.h"
#import "MSUser.h"

//取别名
typedef id<MSWebSiteProtocol> WebsiteType;

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 通过工厂方法返回各种具体享元对象,维护池中的享元对象
    MSWebSiteFactory *factory = [[MSWebSiteFactory alloc] init];
    
    // 返回具体的享元对象
    WebsiteType type1 = [factory getWebSiteCategory:@"首页"];
    MSUser *user1 = [[MSUser alloc] init];
    user1.userName = @"张三";
    // 享元对象都具有use方法
    [type1 use:user1];
    
    WebsiteType type2 = [factory getWebSiteCategory:@"商店"];
    MSUser *user2 = [[MSUser alloc] init];
    user2.userName = @"李四";
    [type2 use:user2];
    
    WebsiteType type3 = [factory getWebSiteCategory:@"案例"];
    MSUser *user3 = [[MSUser alloc] init];
    user3.userName = @"王五";
    [type3 use:user3];
    
    NSInteger count = [factory getWebSiteCount];
    NSLog(@"个数: %ld", (long)count);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
