//
//  AppDelegate.m
//  YouKeng
//
//  Created by sunjason on 16/3/20.
//  Copyright © 2016年 SuZhouYouKeng. All rights reserved.
//

#import "AppDelegate.h"
#import "YKMainIndexVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //LeanCloud初始化
    [AVOSCloud setApplicationId:@"7Nu5HCwTho3JkOaStfLYgezR-gzGzoHsz"
                      clientKey:@"aPg1cI6KxcuO3qpLYyM80JKE"];
    
    YKMainIndexVC *mainIndexVC = [[YKMainIndexVC alloc] initWithNibName:@"YKMainIndexVC" bundle:nil];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:mainIndexVC];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}

- (void)applicationWillTerminate:(UIApplication *)application {
    
}

@end
