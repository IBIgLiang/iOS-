//
//  BGOperationDiv.m
//  iOS_大话设计模式学习片
//
//  Created by zhangzhiliang on 2018/1/11.
//  Copyright © 2018年 zhangzhiliang. All rights reserved.
//

#import "BGOperationDiv.h"

@implementation BGOperationDiv

@synthesize numberA = _numberA;
@synthesize numberB = _numberB;

- (CGFloat)getResult {
    
    return self.numberA / self.numberB;
}

@end
