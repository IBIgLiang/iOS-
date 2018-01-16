//
//  BGCashReturn.m
//  iOS_大话设计模式学习片
//
//  Created by zhangzhiliang on 2018/1/11.
//  Copyright © 2018年 zhangzhiliang. All rights reserved.
//

#import "BGCashReturn.h"

@interface BGCashReturn ()
//满足的金额条件
@property (nonatomic, assign) double moneyCondition;
//返利的金额
@property (nonatomic, assign) double moneyReturn;

@end

@implementation BGCashReturn

- (instancetype)initWithMoneyCondition:(double)moneyCondition moneyReturn:(double)moneyReturn {
    
    if (self=[super init]) {
        self.moneyCondition = moneyCondition;
        self.moneyReturn = moneyReturn;
    }
    
    return self;
}

- (double)acceptCash:(double)money {
    
    double resultMoney = money;
    if (money >= self.moneyCondition) {
        resultMoney = resultMoney - ((int)(resultMoney/self.moneyCondition)) * self.moneyReturn;
    }
    
    return resultMoney;
}

@end
