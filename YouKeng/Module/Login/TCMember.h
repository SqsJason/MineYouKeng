//
//  TCMember.h
//

#import <Foundation/Foundation.h>
#import "memberInfo.h"
#import "ResponseQueryMemberInfo.h" 
#import "ResponseLogin.h"

extern NSString * const TCTLoginSuccNotification;

extern NSString * const TCTLogoutNotification;

extern NSString * const TCTIsCacheLoginObjectKey;
 
@interface TCMember : NSObject

@property (nonatomic, retain) ResponseLogin *responseLogin;//responseLogin;
@property (nonatomic, assign) BOOL isLogin;



+(TCMember *)sharedMember;
-(ResponseLogin *)loginInfo;
-(ResponseQueryMemberInfo*)memberInfo;
/**
 *  登录有礼本地推送
 */
+(void)loginGiftInfoLocalNotifi;


/**
 *  登录有礼传给接口数据用于推送
 */
+(void)pushLoginGiftInfo;

/**
 *  修改昵称推送
 */
+(void)pushModifyNicknamePushInfoMsg;

/**
 *  清理会员信息
 */
+(void)clearMemberInfo;

//退出登录
+(void)logout; 

+(NSString*)memberId;
/**
 *  获取会员信息
 */
+(void)fetchMemberInfo;

+(void)saveCacheMemberInfo:(ResponseQueryMemberInfo*)res;
+(void)saveLoginInfo:(ResponseLogin*)res;

@end

