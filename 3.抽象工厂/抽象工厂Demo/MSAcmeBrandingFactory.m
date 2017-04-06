//
//  MSAcmeBrandingFactory.m
//  抽象工厂Demo
//
//  Created by marcus on 2017/4/5.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSAcmeBrandingFactory.h"
#import "MSAcmeView.h"
#import "MSAcmeButton.h"

@implementation MSAcmeBrandingFactory

+ (MSBrandingFactory*)factory {
    return [[MSAcmeBrandingFactory alloc]init];
}

//返回MSAcmeView
- (UIView*)brandingView {
    return [[MSAcmeView alloc]init];
}

//返回MSAcmeButton
- (UIButton*)brandingButton {
    return [[MSAcmeButton alloc]init];
}

@end
