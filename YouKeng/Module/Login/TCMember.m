//
//  TCMember.m
//

#import "TCMember.h"

//#import "UIImageView+URLImage.h"
//#import "TCTKeyChain.h"
//#import "TCTHandleWatchRequest.h"
//#import "RequestQueryMemberInfo.h"
//#import "RequestPushMessage.h"
//#import "TCTNotificationView.h"
//#import "TCMessageBackgroundTask.h"

NSString * const TCTLoginSuccNotification = @"TCTLogin_SuccObjectKey";
NSString * const TCTLogoutNotification = @"TCTLogout_SuccObjectKey";
NSString * const TCTIsCacheLoginObjectKey = @"TCTIsCacheLoginObjectKey";

static TCMember *tcMember = nil;

@implementation TCMember
@synthesize isLogin;
@synthesize responseLogin;

/** \ 登录后用户信息实体
 * 单例
 */
+(TCMember *)sharedMember{ 
    static TCMember* shareInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[self alloc]init];
      
    });
    return shareInstance;
}

- (id)init
{
    self = [super init];
    if (self) {
     }
    return self;
}


+(id)allocWithZone:(NSZone *)zone{
    @synchronized(self){
        if (!tcMember) {
            tcMember = [super allocWithZone:zone]; //确保使用同一块内存地址
            return tcMember;
        }
    }
    return nil;
}

/**
 *  退出后会员信息清理
 */
+(void)logout{
    
//    [[TCTCacheManager defaultManager] setObject:nil forKey:@"memberId" duration:-1];
//    [[TCTCacheManager defaultManager] setObject:nil forKey:@"externalMemberId" duration:-1];
//    [[TCTCacheManager defaultManager] setObject:nil forKey:@"userId" duration:-1];
//    [[TCTCacheManager defaultManager] setObject:nil forKey:@"socialType" duration:-1];
//    [[TCTCacheManager defaultManager] setObject:nil forKey:def_LoginPassword duration:-1];
//    [[TCTCacheManager defaultManager] setObject:nil forKey:def_ResponseLogin duration:-1];
//    [[TCTCacheManager defaultManager] setObject:nil forKey:def_ResponseQueryMemberInfo duration:-1];
//    [[TCTCacheManager defaultManager] setObject:nil forKey:@"authorizeCode" duration:-1]; 
//    [[TCTCacheManager defaultManager] setObject:nil forKey:def_LoginVersionNo duration:-1];
//    
//    [TCMember sharedMember].responseLogin = nil;
//    [TCTHandleWatchRequest notifyWatchLoginStateChange];
	
}
/**
 *  清除会员资料信息
 */
+(void)clearMemberInfo{
//    [[TCTCacheManager defaultManager] setObject:nil forKey:def_ResponseQueryMemberInfo duration:-1];
}

#pragma mark - 收藏功能

/**
 *  登录有礼本地推送
 */
+(void)loginGiftInfoLocalNotifi{
//    IndexConfigLoginGift * modify = [IndexMainUtility indexConfig].loginGiftPushInfo;
//    if (modify) {
//        //本地提示
//        if ([Utility enableNotification])//开启推送的情况
//        {
//            UILocalNotification *notification = [[UILocalNotification alloc] init];
//            if (notification) {
//                notification.fireDate = [NSDate date];
//                notification.timeZone = [NSTimeZone systemTimeZone];
//                notification.alertBody = modify.notificationContent;
//                notification.soundName = UILocalNotificationDefaultSoundName;
//                notification.userInfo = @{@"notificationUrl":modify.notificationUrl, @"notificationType":kLocalNotificationType_LoginGift};
//                [[UIApplication sharedApplication] scheduleLocalNotification:notification];
//            }
//        }else{
//            [TCTNotificationView displayNotificationWithSimpleMessage:modify.notificationContent
//                                                             duration:2.0f
//                                                             tapBlock:^{
//                                                                 if ([modify.notificationUrl length] > 0)
//                                                                 {
//                                                                     [(UIViewController*)[IndexMainUtility indexMainVC] openRouteURLString:modify.notificationUrl options:nil];
//                                                                 }
//                                                             }];
//        }
//    }
}


/**
 *  登录有礼传给接口数据用于推送
 */
+(void)pushLoginGiftInfo{
//    IndexConfigLoginGift * modify = [IndexMainUtility indexConfig].loginGiftPushInfo;
//    
//    if (modify) {
//        [AppDelegateEntity event:@"a_1236" tag:enumUmen_8_0_2 label:@"xrzx_tsxx"];
//        [RequestPushMessage pushMessage:modify completion:^(BOOL completion) {
//            if (completion) {
//                //开始红点请求
//                [[TCMessageBackgroundTask shareMessageTask] startRedPointRequestImmediate];
//            }
//        }];
//    }
}



/**
 *  修改昵称
 */
+(void)pushModifyNicknamePushInfoMsg{
//    IndexConfigLoginGift * modify = [IndexMainUtility indexConfig].modifyNicknamePushInfo;
//    
//    if (modify) {
//        [RequestPushMessage pushMessage:modify completion:^(BOOL completion) {
//            if (completion) {
//                //开始红点请求
//                [[TCMessageBackgroundTask shareMessageTask] startRedPointRequestImmediate];
//            }
//        }];
//    }
}

/**
 *  登录后返回实体
 *
 *  @return
 */
-(ResponseLogin *)loginInfo{
//    NSString *strLogin =[[TCTCacheManager defaultManager] objectForKey:def_ResponseLogin];
//    if (strLogin.length>0)
//    {
//        NSData *data = [strLogin dataUsingEncoding:NSUTF8StringEncoding];
//        if (data) {
//            
//            NSMutableDictionary *dicLogin = [NSJSONSerialization JSONObjectWithData:data
//                                                                            options:0
//                                                                              error:nil];
//            return [ResponseLogin objectWithDictionary:dicLogin];
//        }
//    }
    return nil;
}


/**
 *  会员信息获取
 *
 *  @return
 */
-(ResponseQueryMemberInfo*)memberInfo{
//    //会员资料的缓存，直接取上次的信息
//    NSString*strResponseQueryMemberInfo=[[TCTCacheManager defaultManager] objectForKey:def_ResponseQueryMemberInfo];
//    
//    if (strResponseQueryMemberInfo.length>0)
//    {
//        NSData *data = [strResponseQueryMemberInfo dataUsingEncoding:NSUTF8StringEncoding];
//        if (data) {
//            NSMutableDictionary *dicLogin = [NSJSONSerialization JSONObjectWithData:data
//                                                                            options:0
//                                                                              error:nil];
//            return [ResponseQueryMemberInfo objectWithDictionary:dicLogin];
//        }
//    }
    return nil;
    
    
}


/**
 *  保存会员信息
 *
 *  @param res
 */
+(void)saveCacheMemberInfo:(ResponseQueryMemberInfo*)res
{
//    if (res) {
//        NSDictionary *dic = [res propertyDictionary];
//        if (dic!=nil) {
//            NSString *str = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:dic options:0 error:nil] encoding:NSUTF8StringEncoding];
//            [[TCTCacheManager defaultManager] setObject:str forKey:def_ResponseQueryMemberInfo duration:-1];
//        }
//    }
}
/**
 *  保存会员登录信息
 *
 *  @param res
 */
+(void)saveLoginInfo:(ResponseLogin*)res
{
//    if (res) {
//        NSDictionary *dic = [res propertyDictionary];
//        if (dic!=nil) {
//            NSString *str = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:dic options:0 error:nil] encoding:NSUTF8StringEncoding];
//            [[TCTCacheManager defaultManager] setObject:str forKey:def_ResponseLogin duration:-1];
//        }
//    }
}
/**
 *  登录实体赋值
 *
 *  @param _responseLogin
 */
-(void)setResponseLogin:(ResponseLogin *)_responseLogin{
     responseLogin = _responseLogin;
//    if (_responseLogin)
//    {
//        if (_responseLogin.isCashe) {
//            _responseLogin.isCashe = NO;
//        }
//        [TCTUMSAgent startMemberByType:enumLogin];
//        [AppDelegateEntity sendCrashReporterMemberId:_responseLogin.memberId];
//        [TCMember saveLoginInfo:_responseLogin];
//        
//        TCTCacheManager *cache =[TCTCacheManager defaultManager];
//        [cache setObject:_responseLogin.userId forKey:@"userId" duration:-1];
//        [cache setObject:_responseLogin.memberId forKey:@"memberId" duration:-1];
//        [cache setObject:_responseLogin.externalMemberId forKey:@"externalMemberId" duration:-1];
//        [cache setObject:_responseLogin.socialType forKey:@"socialType" duration:-1];
//        [cache setObject:_responseLogin.authorizeCode forKey:@"authorizeCode" duration:-1];
//        [cache setObject:_responseLogin.versionNo forKey:def_LoginVersionNo duration:-1];
//        [TCTKeyChain setObject:_responseLogin.loginName forKey:@"account_token"];
//        [TCTKeyChain setObject:_responseLogin.password forKey:@"account_password"];
//        
//        [[NSNotificationCenter defaultCenter] postNotificationName:TCTLoginSuccNotification object:nil];
//        
//        [TCTHandleWatchRequest notifyWatchLoginStateChange];
//        [AppDelegateEntity.moreQueryBLL fetchUserToken];
//
//    }
}

+(NSString*)memberId{
    return nil;
}

/**
 *  登录状态
 *
 *  @return
 */
-(BOOL)isLogin{
    if ([self responseLogin]&&[self responseLogin].memberId.length>0) {
        return YES;
    }
    return NO;
}

//获取会员信息
+(void)fetchMemberInfo{
//    RequestQueryMemberInfo *requestQueryMemberInfo = [[RequestQueryMemberInfo alloc] init];
//    requestQueryMemberInfo.loginName = [TCMember sharedMember].responseLogin.loginName;
//    requestQueryMemberInfo.memberId = [TCMember sharedMember].responseLogin.memberId;
//    [requestQueryMemberInfo startWithSuccessBlock:^(ResponseQueryMemberInfo *responseObject, NSDictionary *options)
//     {
//         [TCMember saveCacheMemberInfo:responseObject];
//         [TCMember sharedMember].responseLogin.headImg=responseObject.headImg;
//         [TCMember saveLoginInfo:[TCMember sharedMember].responseLogin];
//         [[NSNotificationCenter defaultCenter] postNotificationName:@"reloadQueryMemberInfo" object:nil];
//     } failBlock:^(TCTNetworkError *error, NSDictionary *options)
//     {
//     }];
}

@end
