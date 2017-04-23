//
//  MSLighterCommand.h
//  命令模式
//
//  Created by marcus on 2017/4/23.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MSInvokerProtocol.h"
#import "MSReceiver.h"


@interface MSLighterCommand : NSObject <MSInvokerProtocol>

- (instancetype)initWithReceiver:(MSReceiver*)receiver withParamter:(CGFloat)paramter;

@end
