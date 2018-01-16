//
//  BGSupermarketSalesViewController.m
//  iOS_大话设计模式学习片
//
//  Created by zhangzhiliang on 2018/1/11.
//  Copyright © 2018年 zhangzhiliang. All rights reserved.
//

#import "BGSupermarketSalesViewController.h"
#import "BGCashContext.h"
#import "BGRootViewController+AlertMessage.h"

@interface BGSupermarketSalesViewController ()

@property (nonatomic, strong) UIButton *cashNormalButton;

@property (nonatomic, strong) UIButton *cashRebateButton;

@property (nonatomic, strong) UIButton *cashReturnButton;

@end

@implementation BGSupermarketSalesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"策略模式";
    self.view.backgroundColor = [UIColor whiteColor];
    [self addSubviews];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)acceptMoney:(double) money type:(NSString *)type {
    
    BGCashContext *context = [[BGCashContext alloc] initWithType:type];
    double resultMoney = [context acceptCash:money];
    
    
    
    NSLog(@"%@", [NSString stringWithFormat:@"参入的活动是：%@，输入的金额为：%g，得到的结果是%g",type,money,resultMoney]);
    [self showAlertWithMessage:[NSString stringWithFormat:@"参入的活动是：%@，输入的金额为：%g，得到的结果是%g",type,money,resultMoney] confirm:nil];
}

//TODO:-----------------------初始化-----------------------------
//TODO:添加子视图
- (void)addSubviews {
    [self.view addSubview:self.cashNormalButton];
    [self.view addSubview:self.cashRebateButton];
    [self.view addSubview:self.cashReturnButton];
}

- (UIButton *)cashNormalButton {
    
    if (_cashNormalButton == nil) {
        _cashNormalButton = [[UIButton alloc] initWithFrame:CGRectMake(Main_Screen_Width/2 - 40, 100, 80, 40)];
        [_cashNormalButton setTitle:@"原价" forState:UIControlStateNormal];
        _cashNormalButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _cashNormalButton.backgroundColor = [UIColor greenColor];
        [_cashNormalButton addTarget:self action:@selector(cashNormalButtonFuncton) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _cashNormalButton;
}

- (void)cashNormalButtonFuncton {
    
    [self acceptMoney:700.12 type:@"原价"];
}

- (UIButton *)cashRebateButton {
    
    if (_cashRebateButton == nil) {
        _cashRebateButton = [[UIButton alloc] initWithFrame:CGRectMake(Main_Screen_Width/2 - 40, 200, 80, 40)];
        [_cashRebateButton setTitle:@"满300反100" forState:UIControlStateNormal];
        _cashRebateButton.titleLabel.font = [UIFont systemFontOfSize:13];
        _cashRebateButton.backgroundColor = [UIColor greenColor];
        [_cashRebateButton addTarget:self action:@selector(cashRebateButtonFuncton) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _cashRebateButton;
}

- (void)cashRebateButtonFuncton {
    
    [self acceptMoney:789.56 type:@"满300反100"];
}

- (UIButton *)cashReturnButton {
    
    if (_cashReturnButton == nil) {
        _cashReturnButton = [[UIButton alloc] initWithFrame:CGRectMake(Main_Screen_Width/2 - 40, 300, 80, 40)];
        [_cashReturnButton setTitle:@"打8折" forState:UIControlStateNormal];
        _cashReturnButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _cashReturnButton.backgroundColor = [UIColor greenColor];
        [_cashReturnButton addTarget:self action:@selector(cashReturnButtonFuncton) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _cashReturnButton;
}

- (void)cashReturnButtonFuncton {
    
    [self acceptMoney:456.87 type:@"打8折"];
}

@end
