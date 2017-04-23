//
//  MSCustomTextField.h
//  策略模式
//
//  Created by marcus on 2017/4/23.
//  Copyright © 2017年 marcus. All rights reserved.
//  UITextField 子类

#import <UIKit/UIKit.h>
#import "MSInputValidator.h"

@interface MSCustomTextField : UITextField
@property (nonatomic,strong) MSInputValidator *inputValidator;

-(BOOL)validate;

@end
