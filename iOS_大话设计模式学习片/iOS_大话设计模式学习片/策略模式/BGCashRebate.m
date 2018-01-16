//
//  BGCashRebate.m
//  iOS_大话设计模式学习片
//
//  Created by zhangzhiliang on 2018/1/11.
//  Copyright © 2018年 zhangzhiliang. All rights reserved.
//

#import "BGCashRebate.h"

@interface BGCashRebate ()

@property (nonatomic, assign) double cashRebate;

@end

@implementation BGCashRebate

- (instancetype)initWithCashRebate:(double)cashRebate {
    
    if (self = [super init]) {
        self.cashRebate = cashRebate;
    }
    
    return self;
}

//打折收费
- (double)acceptCash:(double)money {
    
    return money * self.cashRebate;
}

@end
