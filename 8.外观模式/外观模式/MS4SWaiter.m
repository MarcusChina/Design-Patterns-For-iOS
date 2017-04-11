//
//  MS4SWaiter.m
//  外观模式
//
//  Created by marcus on 2017/4/11.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MS4SWaiter.h"
#import "MSFinance.h"
#import "MSSales.h"
#import "MSService.h"

@interface MS4SWaiter()

@property (nonatomic, strong) MSFinance *finance;
@property (nonatomic, strong) MSSales   *sales;
@property (nonatomic, strong) MSService *service;

@end

@implementation MS4SWaiter

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.finance = [[MSFinance alloc] init];
        self.sales = [[MSSales alloc] init];
        self.service = [[MSService alloc] init];
    }
    return self;
}

// 现金买车
- (void)buyCarWithCash {

    [self.finance cashPayment];
    
    [self.sales provideCar];
    
    [self gift];
    
    [self serviceContent];

}

// 贷款买车
- (void)buyCarWithLoad {
    BOOL isSuccess = [self.finance applyLoan];
    
    // 如果贷款审批下来，则提车、送赠品和服务
    if (isSuccess) {
        [self.sales provideCar];
        [self gift];
        [self serviceContent];
    }else{
        NSLog(@"贷款审批未通过！");
    }
}

//赠送礼品
- (void)gift {
    NSLog(@"赠品有:");
    [self.sales carFilm];
    [self.sales tachograph];
    [self.sales engineGuard];
    [self.sales mat];
}

// 服务
- (void)serviceContent{
    NSLog(@"售后服务:");
    [self.service carWash];
    [self.service applyPlate];
    [self.service filming];
    [self.service installTachograph];
}

@end
