//
//  MSMainBoard.h
//  中介者模式
//
//  Created by marcus on 2017/4/11.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSMainBoard : NSObject

+(instancetype)shareInstance;
-(void)handleData:(NSMutableString *)data dataSource:(id)source;

@end
