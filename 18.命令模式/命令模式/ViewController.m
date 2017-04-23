//
//  ViewController.m
//  命令模式
//
//  Created by marcus on 2017/4/23.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MSReceiver.h"
#import "MSInvoker.h"
#import "MSLighterCommand.h"
#import "MSDarkerCommand.h"

typedef enum : NSUInteger {
    hAddButtonTag = 0x11,
    hDelButtonTag,
    hRolButtonTag,
} ViewControllerEnumValue;

@interface ViewController ()
/** 接受者，执行任务者 */
@property (nonatomic,strong)MSReceiver *receiver;

/** 命令的调用者或者容器，好比遥控器 */
@property (nonatomic,strong)MSInvoker *invoker;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //画出三个按钮
    //调亮按钮 +
    UIButton* addBtn = [self addButtonWithTitle:@"+"
                                      withFrame:CGRectMake(30, 30, 40, 40)
                                     withAction:@selector(buttonsEvent:)
                                        withTag:hAddButtonTag];
    [self.view addSubview:addBtn];
    //调暗按钮 -
    UIButton* delBtn = [self addButtonWithTitle:@"-"
                                      withFrame:CGRectMake(100, 30, 40, 40)
                                     withAction:@selector(buttonsEvent:)
                                        withTag:hDelButtonTag];
    [self.view addSubview:delBtn];
    //撤销操作按钮
    UIButton* rolBtn = [self addButtonWithTitle:@"RoolBack"
                                      withFrame:CGRectMake(170, 30, 100, 40)
                                     withAction:@selector(buttonsEvent:)
                                        withTag:hRolButtonTag];
    [self.view addSubview:rolBtn];
    
    self.receiver = [[MSReceiver alloc] init];
    [self.receiver setClientView:self.view];
}

-(void)buttonsEvent:(UIButton*)btn{
    if (btn.tag == hAddButtonTag) {
        
        MSLighterCommand* lighterCommand = [[MSLighterCommand alloc] initWithReceiver:self.receiver withParamter:0.1f];
        self.invoker = [[MSInvoker alloc] init];
        [self.invoker addExcute:lighterCommand];
        
    }else if (btn.tag == hDelButtonTag){
        
        MSDarkerCommand* darkerCommand = [[MSDarkerCommand alloc] initWithReceiver:self.receiver withParamter:0.1f];
        self.invoker = [[MSInvoker alloc] init];
        [self.invoker addExcute:darkerCommand];
        
    }else if (btn.tag == hRolButtonTag){
        
        [self.invoker rollBack];
        
    }
}

#pragma mark - 添加同类按钮的方法
//增加相同按钮的方法相同，所以抽离出来
-(UIButton*)addButtonWithTitle:(NSString*)title withFrame:(CGRect)frame withAction:(SEL)sel withTag:(ViewControllerEnumValue)tag{
    UIButton* btn = [[UIButton alloc] initWithFrame:frame];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setTitle:@"🐟" forState:UIControlStateHighlighted];
    btn.layer.borderWidth = 1.0f;
    [btn addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];
    [btn setTag:tag];
    return btn;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
