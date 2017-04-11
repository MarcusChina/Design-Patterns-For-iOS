//
//  MSSales.h
//  外观模式
//
//  Created by marcus on 2017/4/11.
//  Copyright © 2017年 marcus. All rights reserved.
//  销售部门管理：车辆调配、配件、赠品等业务。

#import <Foundation/Foundation.h>

@interface MSSales : NSObject

// 提车
- (void)provideCar;

// 车贴膜
- (void)carFilm;

// 行车记录仪
- (void)tachograph;

// 发动机护板
- (void)engineGuard;

// 脚垫
- (void)mat;

@end
