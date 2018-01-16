//
//  BGRootViewController+AlertMessage.m
//  iOS_大话设计模式学习片
//
//  Created by zhangzhiliang on 2018/1/10.
//  Copyright © 2018年 zhangzhiliang. All rights reserved.
//

#import "BGRootViewController+AlertMessage.h"

@implementation BGRootViewController (AlertMessage)

- (void)showAlertWithMessage:(NSString *)message confirm:(void(^)(void))code {
    
    UIAlertController *vc = [UIAlertController alertControllerWithTitle:@"提示" message:message preferredStyle:UIAlertControllerStyleAlert];
    [vc addAction:[UIAlertAction actionWithTitle:@"我知道了" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (code) {
            code();
        }
    }]];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
