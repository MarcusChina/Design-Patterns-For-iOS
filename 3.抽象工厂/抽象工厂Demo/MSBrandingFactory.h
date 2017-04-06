//
//  MSBrandingFactory.h
//  抽象工厂Demo
//
//  Created by marcus on 2017/4/5.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MSBrandingFactory : NSObject

+ (MSBrandingFactory*)factory;
- (UIView*)brandingView;
- (UIButton*)brandingButton;

@end
