//
//  BGOparationAdd.m
//  iOS_大话设计模式学习片
//
//  Created by zhangzhiliang on 2018/1/10.
//  Copyright © 2018年 zhangzhiliang. All rights reserved.
//

#import "BGOparationAdd.h"

@implementation BGOparationAdd

@synthesize numberB = _numberB;
@synthesize numberA = _numberA;

- (CGFloat)getResult {
    return self.numberA + self.numberB;
}


@end
