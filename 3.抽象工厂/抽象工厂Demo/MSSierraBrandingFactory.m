//
//  MSSierraBrandingFactory.m
//  抽象工厂Demo
//
//  Created by marcus on 2017/4/5.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSSierraBrandingFactory.h"
#import "MSSierraView.h"
#import "MSSierraButton.h"

@implementation MSSierraBrandingFactory

+ (MSBrandingFactory*)factory {
    return [[MSSierraBrandingFactory alloc]init];
}

//返回MSSierraView
- (UIView*)brandingView {
    return [[MSSierraView alloc]init];
}

//返回MSSierraButton
- (UIButton*)brandingButton {
    return [[MSSierraButton alloc]init];
}

@end
