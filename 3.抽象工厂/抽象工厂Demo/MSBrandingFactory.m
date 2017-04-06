//
//  MSBrandingFactory.m
//  抽象工厂Demo
//
//  Created by marcus on 2017/4/5.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSBrandingFactory.h"
#import "MSAcmeBrandingFactory.h"
#import "MSSierraBrandingFactory.h"

@implementation MSBrandingFactory

+ (MSBrandingFactory*)factory {
    return [[MSBrandingFactory alloc]init];
}

- (UIView*)brandingView {
    return nil;
}

- (UIButton*)brandingButton {
    return nil;
}

@end
