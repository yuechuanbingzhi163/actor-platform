//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/ResponseSendAuthCodeObsolete.java
//

#ifndef _APResponseSendAuthCodeObsolete_H_
#define _APResponseSendAuthCodeObsolete_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Response.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APResponseSendAuthCodeObsolete_HEADER 2

@interface APResponseSendAuthCodeObsolete : APResponse

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)smsHash
                     withBoolean:(jboolean)isRegistered;

+ (APResponseSendAuthCodeObsolete *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (NSString *)getSmsHash;

- (jboolean)isRegistered;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APResponseSendAuthCodeObsolete)

J2OBJC_STATIC_FIELD_GETTER(APResponseSendAuthCodeObsolete, HEADER, jint)

FOUNDATION_EXPORT APResponseSendAuthCodeObsolete *APResponseSendAuthCodeObsolete_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APResponseSendAuthCodeObsolete_initWithNSString_withBoolean_(APResponseSendAuthCodeObsolete *self, NSString *smsHash, jboolean isRegistered);

FOUNDATION_EXPORT APResponseSendAuthCodeObsolete *new_APResponseSendAuthCodeObsolete_initWithNSString_withBoolean_(NSString *smsHash, jboolean isRegistered) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APResponseSendAuthCodeObsolete_init(APResponseSendAuthCodeObsolete *self);

FOUNDATION_EXPORT APResponseSendAuthCodeObsolete *new_APResponseSendAuthCodeObsolete_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APResponseSendAuthCodeObsolete)

typedef APResponseSendAuthCodeObsolete ImActorModelApiRpcResponseSendAuthCodeObsolete;

#endif // _APResponseSendAuthCodeObsolete_H_
