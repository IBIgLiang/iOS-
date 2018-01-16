//
//  BGRootViewController+AlertMessage.h
//  iOS_大话设计模式学习片
//
//  Created by zhangzhiliang on 2018/1/10.
//  Copyright © 2018年 zhangzhiliang. All rights reserved.
//

#import "BGRootViewController.h"

@interface BGRootViewController (AlertMessage)

- (void)showAlertWithMessage:(NSString *)message confirm:(void(^)(void))code;

@end
