//
//  BGCalculatorViewController.m
//  iOS_大话设计模式学习片
//
//  Created by zhangzhiliang on 2018/1/10.
//  Copyright © 2018年 zhangzhiliang. All rights reserved.
//

#import "BGCalculatorViewController.h"
#import "BGOperationFactory.h"
#import "BGOparation.h"
#import "BGRootViewController+AlertMessage.h"

#define firstNumTextField_X (UIScreen.mainScreen.bounds.size.width - 150)/4
#define secondNumTextField_X (UIScreen.mainScreen.bounds.size.width - 150)/2 + 50
#define thirdNumTextField_X (UIScreen.mainScreen.bounds.size.width - (UIScreen.mainScreen.bounds.size.width - 150)/4 - 50)

@interface BGCalculatorViewController ()
//第一个 输入框
@property (nonatomic, strong) UITextField *firstNumTextField;
// 算法框
@property (nonatomic, strong) UITextField *calculateNumTextField;
//第三个 输入框
@property (nonatomic, strong) UITextField *secondNumTextField;
//结果框
@property (nonatomic, strong) UITextField *resultTextField;

@property (nonatomic, strong) UIButton *button;

@end

@implementation BGCalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"简单工厂模式";
    self.view.backgroundColor = [UIColor whiteColor];
    [self addSubviews];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)calculateFunction {
    
   id<BGOparation> item = [BGOperationFactory createOperate:self.calculateNumTextField.text];
    if (item==nil) {
        [self showAlertWithMessage:@"不提供该算法" confirm:nil];
        NSLog(@"不提供该算法");
        return;
    }
    item.numberA = [self.firstNumTextField.text floatValue];
    item.numberB = [self.secondNumTextField.text floatValue];
    if ([NSStringFromClass(item.class) isEqualToString:@"BGOperationDiv"]&&item.numberB>=-0.000001f&&item.numberB<=0.000001f) {
        [self showAlertWithMessage:@"除数不能等于0" confirm:nil];
        return;
    }
    self.resultTextField.text = [NSString stringWithFormat:@"%g",item.getResult];
}

//TODO:-----------------------初始化-----------------------------
//TODO:添加子视图
- (void)addSubviews {
    [self.view addSubview:self.firstNumTextField];
    [self.view addSubview:self.calculateNumTextField];
    [self.view addSubview:self.secondNumTextField];
    [self.view addSubview:self.button];
    [self.view addSubview:self.resultTextField];
}

- (UITextField *)firstNumTextField {
    if (_firstNumTextField == nil) {
        _firstNumTextField = [[UITextField alloc] initWithFrame:CGRectMake(firstNumTextField_X, 100, 50, 50)];
        _firstNumTextField.backgroundColor = [UIColor yellowColor];
        _firstNumTextField.textAlignment = NSTextAlignmentCenter;
        _firstNumTextField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    }
    
    return _firstNumTextField;
}

- (UITextField *)calculateNumTextField {
    if (_calculateNumTextField == nil) {
        _calculateNumTextField = [[UITextField alloc] initWithFrame:CGRectMake(secondNumTextField_X, 100, 50, 50)];
        _calculateNumTextField.backgroundColor = [UIColor yellowColor];
        _calculateNumTextField.textAlignment = NSTextAlignmentCenter;
    }
    
    return _calculateNumTextField;
}

- (UITextField *)secondNumTextField {
    if (_secondNumTextField == nil) {
        _secondNumTextField = [[UITextField alloc] initWithFrame:CGRectMake(thirdNumTextField_X, 100, 50, 50)];
        _secondNumTextField.backgroundColor = [UIColor yellowColor];
        _secondNumTextField.textAlignment = NSTextAlignmentCenter;
        _secondNumTextField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    }
    
    return _secondNumTextField;
}

- (UIButton *)button {
    
    if (_button == nil) {
        _button = [[UIButton alloc] initWithFrame:CGRectMake(Main_Screen_Width/2 - 40, 210, 80, 40)];
        [_button setTitle:@"=" forState:UIControlStateNormal];
        _button.titleLabel.font = [UIFont systemFontOfSize:20];
        _button.backgroundColor = [UIColor greenColor];
        [_button addTarget:self action:@selector(calculateFunction) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _button;
}

- (UITextField *)resultTextField {
    if (_resultTextField == nil) {
        _resultTextField = [[UITextField alloc] initWithFrame:CGRectMake(Main_Screen_Width/2 - 25, 300, 50, 50)];
        _resultTextField.backgroundColor = [UIColor redColor];
        _resultTextField.textAlignment = NSTextAlignmentCenter;
        _resultTextField.enabled = NO;
        _resultTextField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    }
    
    return _resultTextField;
}

@end
