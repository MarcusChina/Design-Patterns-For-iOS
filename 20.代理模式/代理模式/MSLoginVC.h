//
//  MSLoginVC.h
//  代理模式
//
//  Created by marcus on 2017/4/26.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MSLoginVCDelegate <NSObject>
@required
- (void)userLoginWithUsername:(NSString *)username password:(NSString *)password;

@end

@interface MSLoginVC : UIViewController

@property (nonatomic,weak) id<MSLoginVCDelegate> delegate;

@end
