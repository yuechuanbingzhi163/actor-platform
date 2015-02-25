//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/entity/User.java
//

#ifndef _AMUser_H_
#define _AMUser_H_

@class AMAvatar;
@class AMPeer;
@class AMSexEnum;
@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/storage/KeyValueItem.h"

@interface AMUser : BSBserObject < AMKeyValueItem > {
}

+ (AMUser *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)accessHash
               withNSString:(NSString *)name
               withNSString:(NSString *)localName
               withAMAvatar:(AMAvatar *)avatar
              withAMSexEnum:(AMSexEnum *)sex;

- (AMPeer *)peer;

- (jint)getUid;

- (jlong)getAccessHash;

- (NSString *)getServerName;

- (NSString *)getLocalName;

- (NSString *)getName;

- (AMAvatar *)getAvatar;

- (AMSexEnum *)getSex;

- (AMUser *)editNameWithNSString:(NSString *)name;

- (AMUser *)editLocalNameWithNSString:(NSString *)localName;

- (AMUser *)editAvatarWithAMAvatar:(AMAvatar *)avatar;

- (jlong)getEngineId;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(AMUser)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT AMUser *AMUser_fromBytesWithByteArray_(IOSByteArray *data);
CF_EXTERN_C_END

typedef AMUser ImActorModelEntityUser;

J2OBJC_TYPE_LITERAL_HEADER(AMUser)

#endif // _AMUser_H_