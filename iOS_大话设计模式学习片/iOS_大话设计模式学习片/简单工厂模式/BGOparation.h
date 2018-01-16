//
//  BGOparation.h
//  iOS_大话设计模式学习片
//
//  Created by zhangzhiliang on 2018/1/10.
//  Copyright © 2018年 zhangzhiliang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CGBase.h>

@protocol BGOparation <NSObject>

@property (nonatomic, assign) CGFloat numberA;
@property (nonatomic, assign) CGFloat numberB;

- (CGFloat)getResult;

@end
