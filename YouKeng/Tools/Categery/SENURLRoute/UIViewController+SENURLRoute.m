//
//  UIViewController+SENURLRoute.m
//  YouKeng
//
//  Created by sunjason on 16/3/31.
//  Copyright © 2016年 SuZhouYouKeng. All rights reserved.
//

#import "UIViewController+SENURLRoute.h"

NSString *const SENURLRouteHandleErrorNotification = @"SENURLRouteHandleErrorNotification";
NSString *const SENURLRouteHandleCompleteNotification = @"SENURLRouteHandleCompleteNotification";
NSString *const kURLRouteOpenAnimated = @"kURLRouteOpenAnimated";           //是否需要动画
NSString *const kURLRouteOpenAnimatedTransition = @"kURLRouteOpenAnimatedTransition"; //动画形式
NSString *const kURLRouteOpenCompletion = @"kURLRouteOpenCompletion";         //完成后回调操作

extern NSString * const kRouteOriginalURLString;

//@interface TCTURLRouteHoldConfig (TCTURLRouteHold)
//+ (instancetype)defaultHoldConfig;
//- (id<TCTURLRouteHoldLoginDelegate>)loginDelegate;
//@end

@implementation UIViewController (SENURLRoute)

#pragma mark -
- (void)openRouteURL:(NSURL *)url options:(NSDictionary *)options {
//    if (!url) return;
//    NSURL *newURL = url;
//    if ([url isInternal]) {
//        //简单的URL可以bridge
//        newURL = [TCTURLBridge routeURLFromString:url.absoluteString];
//    }
//    //通知Tag变更
//    NSDictionary *dictTags = [newURL requestTags];
//    NSString *tagCode = dictTags[kURLTagNativeCode];
//    NSString *webCode = dictTags[kURLTagWebCode];
//    if (tagCode.length) {
//        [[NSNotificationCenter defaultCenter] postNotificationName:kURLFetchInternalTagCodeNotification object:tagCode];
//    }
//    if (webCode.length) {
//        [[NSNotificationCenter defaultCenter] postNotificationName:kURLFetchInternalWebCodeNotification object:webCode];
//    }
//    
//    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
//    dictionary[kRouteResultLastViewController] = [self p_route_lastViewController];
//    dictionary[kRouteResultUseableURL] = newURL;
//    [dictionary addEntriesFromDictionary:options];
//    
//#ifdef TC_Server_Debug
//    NSLog(@"URLRoute开始扫描plist数据");  //这里是假的 -. -
//    NSLog(@"URLRoute扫描完毕");
//    NSLog(@"URLRoute即将使用的URL为:%@", url);
//#endif
//    [self p_route_openRouteURL:newURL options:dictionary];
//#ifdef TC_Server_Debug
//    NSLog(@"URLRoute准备结束");
//    NSLog(@"URLRoute已结束");
//#endif
}

@end
