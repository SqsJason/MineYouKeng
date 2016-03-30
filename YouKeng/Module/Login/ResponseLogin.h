//
//  ResponseLogin.h
//

#import <Foundation/Foundation.h>

@interface sUserList : NSObject
@property(nonatomic,copy)NSString* socialType;
@property(nonatomic,copy)NSString* accessToken;
@property(nonatomic,copy)NSString* userId;
@end

@interface ResponseLogin : NSObject

@property (nonatomic, strong) NSString* versionNo;

@property (nonatomic, strong) NSString* isBlack;
@property (nonatomic, strong) NSString* memberId;
@property (nonatomic, strong) NSString* externalMemberId;

@property (nonatomic, strong) NSString* loginName;
@property (nonatomic, strong) NSString* password;
@property (nonatomic, strong) NSString* userName;
@property (nonatomic, strong) NSString* mobile;
@property (nonatomic, strong) NSString* email;
@property (nonatomic, strong) NSString* score;
@property (nonatomic, strong) NSString* trueName;
@property (nonatomic, strong) NSString* userId;
@property (nonatomic, strong) NSString* isSocialMember;

@property (nonatomic, strong) NSString* socialType;
@property (nonatomic, retain) NSMutableArray* sUserList;

@property (nonatomic, strong) NSString* cityId;//": "41",
@property (nonatomic, strong) NSString* cityName;//": "阜阳",
@property (nonatomic, strong) NSString* provinceId;//": "41",
@property (nonatomic, strong) NSString* provinceName;//": "阜阳",
@property (nonatomic, strong) NSString *authorizeCode;
@property (nonatomic, strong) NSString* headImg;//": "http://upload.17u.com/uploadfile/2009/09/16/7/2009091621283856296.jpg"

@property (nonatomic, assign) BOOL isCashe;//是否是缓存
//loginv2返还字段
@property (nonatomic, strong) NSString *regexLogin; //登录密码正则 
//登录数据处理
-(ResponseLogin*)settingResponseLogin;
@end
