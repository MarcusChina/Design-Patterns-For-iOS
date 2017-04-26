//
//  MSLoginVC.m
//  代理模式
//
//  Created by marcus on 2017/4/26.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "MSLoginVC.h"

@interface MSLoginVC ()

@end

@implementation MSLoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(userLoginWithUsername:password:)]) {
        [self.delegate userLoginWithUsername:@"用户名张三" password:@"密码：123445"];
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
