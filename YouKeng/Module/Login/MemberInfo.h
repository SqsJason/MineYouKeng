//
//  memberInfo.h
//

#import <Foundation/Foundation.h>

@interface MemberInfo : NSObject

@property (nonatomic, retain) NSString *memberId;
@property (nonatomic, retain) NSString *loginName;
@property (nonatomic, retain) NSString *password;
@property (nonatomic, retain) NSString *userName;
@property (nonatomic, retain) NSString *mobile;
@property (nonatomic, retain) NSString *email;
@property (nonatomic, retain) NSString *isBlack;
@property (nonatomic, retain) NSString *trueName;
@property (nonatomic , strong) NSString* avatarUrl;
@property (nonatomic , strong) NSString* tcmId;


@end