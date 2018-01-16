//
//  BGOperationFactory.m
//  iOS_大话设计模式学习片
//
//  Created by zhangzhiliang on 2018/1/10.
//  Copyright © 2018年 zhangzhiliang. All rights reserved.
//

#import "BGOperationFactory.h"

typedef NS_ENUM(NSUInteger, BGOperateType) {
    BGOperateTypeAdd        = 0,
    BGOperateTypeSub        = 1,
    BGOperateTypeMul        = 2,
    BGOperateTypeDiv        = 3,
};

@interface BGOperationFactory ()

@property (nonatomic, strong) NSArray *operateArray;

@end

@implementation BGOperationFactory

+ (id<BGOparation>)createOperate:(NSString *)operate {
    
    NSUInteger index = [[BGOperationFactory new].operateArray indexOfObject:operate];
    switch (index) {
        case BGOperateTypeAdd:
            return [NSClassFromString(@"BGOparationAdd") new];
            break;
        case BGOperateTypeSub:
            return [NSClassFromString(@"BGOperationSub") new];
            break;
        case BGOperateTypeMul:
            return [NSClassFromString(@"BGOperationMul") new];
            break;
        case BGOperateTypeDiv:
            return [NSClassFromString(@"BGOperationDiv") new];
            break;
        default:
            return nil;
            break;
    }
}

- (NSArray *)operateArray {
    
    if (_operateArray == nil) {
        _operateArray = [[NSArray alloc] initWithObjects:@"加",@"减",@"乘",@"除", nil];
    }
    
    return _operateArray;
}

@end
