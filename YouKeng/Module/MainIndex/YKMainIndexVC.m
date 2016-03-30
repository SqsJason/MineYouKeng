//
//  YKMainIndexVC.m
//  YouKeng
//
//  Created by sunjason on 16/3/31.
//  Copyright © 2016年 SuZhouYouKeng. All rights reserved.
//

#import "YKMainIndexVC.h"

@interface YKMainIndexVC ()

@end

@implementation YKMainIndexVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"大首页";
    
    if([TCMember sharedMember].isLogin) {
        NSLog(@"已登录");
    } else {
        NSLog(@"未登录");
    }
}

- (void)dealloc {
    NSLog(@"MainIndexVC");
}

@end
