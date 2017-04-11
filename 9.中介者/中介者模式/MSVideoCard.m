//
//  MSVideoCard.m
//  中介者模式
//
//  Created by marcus on 2017/4/11.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSVideoCard.h"

@implementation MSVideoCard

-(void )executeData:(NSMutableString *)data{
    [data appendString:@"+经过显卡处理"];
    NSLog(@"开始播放视频：“%@",data);
}

@end
