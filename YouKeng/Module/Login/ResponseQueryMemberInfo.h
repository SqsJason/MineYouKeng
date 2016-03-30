//
//  ResponseQueryMemberInfo.h
//

#import <Foundation/Foundation.h>

@interface ResponseQueryMemberInfo : NSObject

@property(nonatomic, strong) NSString* birthday;//生日
@property(nonatomic, strong) NSString* address;//常住地


@property(nonatomic, strong) NSString* loginName;
@property(nonatomic, strong) NSString* loginNameView;//手机号部分隐藏字段，751
/** 性别 */
@property(nonatomic, strong) NSString* sex;
/**是否提过现*/
@property(nonatomic, strong) NSString* iswa;
@property(nonatomic, strong) NSString* qunarWithdrawUrl;
/** 会员等级 */
@property(nonatomic, strong) NSString* memberLevel;
/** 成长值 */
@property(nonatomic, strong) NSString* memberGrovalue;
/** 会员红包数 */
@property(nonatomic, strong) NSString* redPacketCount;
/** 会员账户余额 */
@property(nonatomic, strong) NSString* totalAmount;
/** 会员立减总额 */
@property(nonatomic, strong) NSString* cashAmount;

@property (nonatomic, strong) NSString* cityId;//": "41",
@property (nonatomic, strong) NSString* cityName;//": "阜阳",
@property (nonatomic, strong) NSString* headImg;//": "http://upload.17u.com/uploadfile/2009/09/16/7/2009091621283856296.jpg"

@property (nonatomic, strong) NSString *signature;           //个性签名
@property (nonatomic, strong) NSString *provinceId;
@property (nonatomic, strong) NSString *provinceName;

@property (nonatomic, strong) NSString *userName;
@property (nonatomic, strong) NSString *trueName;
@property (nonatomic ,strong) NSString *email;
@property (nonatomic, strong) NSString *emailView;//邮箱部分隐藏字段，751

@property (nonatomic, strong) NSString *isConsultant;//是否是旅游顾问	否“0”，是“1”8-0-4
@end
