//
//  ViewController.m
//  抽象工厂Demo
//
//  Created by marcus on 2017/4/5.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MSBrandingFactory.h"
#import "MSAcmeBrandingFactory.h"
#import "MSSierraBrandingFactory.h"

@interface ViewController ()
@property (nonatomic, assign) CGFloat iHeight;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.iHeight = 90;
    MSBrandingFactory *factory = [[MSAcmeBrandingFactory alloc]init];
    [self addsubViewWithFactory:factory];
    
    MSBrandingFactory *factory1 = [[MSSierraBrandingFactory alloc]init];
    [self addsubViewWithFactory:factory1];

}

- (void)addsubViewWithFactory:(MSBrandingFactory*)factory {
    UIView *view = [factory brandingView];
    UIButton *button = [factory brandingButton];
    [view setFrame:CGRectMake(30, self.iHeight, 120, 50)];
    self.iHeight += 60;
    [button setFrame:CGRectMake(30, self.iHeight, 120, 50)];
    self.iHeight += 60;
    [self.view addSubview:view];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
