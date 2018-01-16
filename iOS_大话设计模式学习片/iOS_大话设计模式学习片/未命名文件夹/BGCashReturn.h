//
//  BGCashReturn.h
//  iOS_大话设计模式学习片
//
//  Created by zhangzhiliang on 2018/1/11.
//  Copyright © 2018年 zhangzhiliang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BGCashSuper.h"

@interface BGCashReturn : NSObject<BGCashSuper>

- (instancetype)initWithMoneyCondition:(double)moneyCondition moneyReturn:(double)moneyReturn;

@end
