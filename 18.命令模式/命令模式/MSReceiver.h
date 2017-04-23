//
//  MSReceiver.h
//  命令模式
//
//  Created by marcus on 2017/4/23.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


//MSReceiver任务执行者，有服务的对象，那么也有操作服务对象的具体行为

//这里根据业务逻辑任务就是改变client的明亮程度
@interface MSReceiver : NSObject

/** 服务的对象 */
@property (nonatomic,strong)UIView *clientView;


//增加亮度的行为
-(void)makeViewLighter:(CGFloat)quantity;
//降低亮度的行为
-(void)makeViewDarker:(CGFloat)quantity;

@end
