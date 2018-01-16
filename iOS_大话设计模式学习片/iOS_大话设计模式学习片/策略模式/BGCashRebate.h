//
//  BGCashRebate.h
//  iOS_大话设计模式学习片
//
//  Created by zhangzhiliang on 2018/1/11.
//  Copyright © 2018年 zhangzhiliang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BGCashSuper.h"

@interface BGCashRebate : NSObject<BGCashSuper>

- (instancetype)initWithCashRebate:(double)cashRebate;

@end
