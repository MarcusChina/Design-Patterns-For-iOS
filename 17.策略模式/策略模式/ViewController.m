//
//  ViewController.m
//  策略模式
//
//  Created by marcus on 2017/4/21.
//  Copyright © 2017年 marcus. All rights reserved.
//

#import "ViewController.h"
#import "MSCustomTextField.h"
#import "MSNumericInputValidator.h"
#import "MSAlphaInputValidator.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet MSCustomTextField *numericTextField;
@property (weak, nonatomic) IBOutlet MSCustomTextField *alphaTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.numericTextField.inputValidator = [[MSNumericInputValidator alloc]init];
    
    self.alphaTextField.inputValidator = [[MSAlphaInputValidator alloc]init];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if ([textField isKindOfClass:[MSCustomTextField class]]) {
        [(MSCustomTextField*)textField validate];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
