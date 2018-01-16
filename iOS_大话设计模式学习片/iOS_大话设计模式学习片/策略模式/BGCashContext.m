//
//  BGCashContext.m
//  iOS_大话设计模式学习片
//
//  Created by zhangzhiliang on 2018/1/11.
//  Copyright © 2018年 zhangzhiliang. All rights reserved.
//

#import "BGCashContext.h"
#import "BGCashNormal.h"
#import "BGCashRebate.h"
#import "BGCashReturn.h"
typedef NS_ENUM(NSUInteger, BGCashType) {
    BGCashTypeNormal,
    BGCashTypeRebate,
    BGCashTypeReturn,
};
@interface BGCashContext ()

@property (nonatomic, strong) id<BGCashSuper> item;

@property (nonatomic, strong) NSArray *typeList;

@end

@implementation BGCashContext

- (instancetype)initWithType:(NSString *)type {
    
    if (self = [super init]) {
        [self cashContext:type];
    }
    
    return self;
}

- (void)cashContext:(NSString *)type {
    
    NSUInteger index = [self.typeList indexOfObject:type];
    switch (index) {
        case BGCashTypeNormal:
        {
            self.item = [[BGCashNormal alloc] init];
        }
            break;
        case BGCashTypeRebate:
        {
            self.item = [[BGCashRebate alloc] initWithCashRebate:0.8];
        }
            break;
        case BGCashTypeReturn:
        {
            self.item = [[BGCashReturn alloc] initWithMoneyCondition:300 moneyReturn:100];
        }
            break;
            
        default:
            break;
    }
}

- (double)acceptCash:(double)money {
    
    return [self.item acceptCash:money];
}

- (NSArray *)typeList {
    
    if (_typeList == nil) {
        _typeList = [[NSArray alloc] initWithObjects:@"原价",@"打8折",@"满300反100", nil];
    }
    
    return _typeList;
}

@end
