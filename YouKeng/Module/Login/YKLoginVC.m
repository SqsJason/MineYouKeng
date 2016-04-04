//
//  YKLoginVC.m
//  YouKeng
//
//  Created by sunjason on 16/3/31.
//  Copyright © 2016年 SuZhouYouKeng. All rights reserved.
//

#import "YKLoginVC.h"

@interface YKLoginVC ()

@end

@implementation YKLoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"";
}

- (void)dealloc
{
    NSLog(@"%@被释放了",NSStringFromClass([self class]));
}

@end
