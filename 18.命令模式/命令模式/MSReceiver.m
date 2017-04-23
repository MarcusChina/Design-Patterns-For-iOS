//
//  MSReceiver.m
//  命令模式
//
//  Created by marcus on 2017/4/23.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSReceiver.h"

@interface MSReceiver()
{
    CGFloat _hud;           //色调
    CGFloat _saturation;    //饱和度
    CGFloat _brightness;    //亮度
    CGFloat _alpha;         //透明度 alpha=1表示完全不透明
}

@end

@implementation MSReceiver

//需要重写clientView的set方法，因为Receiver最开始要做的就是set获取UIView对象
//在set对象的同时要获取当前client的状态，获取当前状态需要变量存储状态值
-(void)setClientView:(UIView *)clientView
{
    _clientView = clientView;
    
    UIColor *color = clientView.backgroundColor;
    [color getHue:&_hud
       saturation:&_saturation
       brightness:&_brightness
            alpha:&_alpha];
}

//增加亮度的行为
-(void)makeViewLighter:(CGFloat)quantity{
    //因为调亮，所以要增加_brightness
    _brightness += quantity;
    //    _brightness = MIN(1, _brightness);
    self.clientView.backgroundColor = [[UIColor alloc] initWithHue:_hud
                                                        saturation:_saturation
                                                        brightness:_brightness
                                                             alpha:_alpha];
}
//降低亮度的行为
-(void)makeViewDarker:(CGFloat)quantity{
    //因为调暗，所以要减少_brightness
    _brightness -= quantity;
    //    _brightness = MAX(0, _brightness);
    self.clientView.backgroundColor = [[UIColor alloc] initWithHue:_hud
                                                        saturation:_saturation
                                                        brightness:_brightness
                                                             alpha:_alpha];
}

@end
