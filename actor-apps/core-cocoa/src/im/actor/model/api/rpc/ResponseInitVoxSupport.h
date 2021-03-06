//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/ResponseInitVoxSupport.java
//

#ifndef _APResponseInitVoxSupport_H_
#define _APResponseInitVoxSupport_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Response.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APResponseInitVoxSupport_HEADER 129

@interface APResponseInitVoxSupport : APResponse

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)userName
                    withNSString:(NSString *)password;

+ (APResponseInitVoxSupport *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (NSString *)getPassword;

- (NSString *)getUserName;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APResponseInitVoxSupport)

J2OBJC_STATIC_FIELD_GETTER(APResponseInitVoxSupport, HEADER, jint)

FOUNDATION_EXPORT APResponseInitVoxSupport *APResponseInitVoxSupport_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APResponseInitVoxSupport_initWithNSString_withNSString_(APResponseInitVoxSupport *self, NSString *userName, NSString *password);

FOUNDATION_EXPORT APResponseInitVoxSupport *new_APResponseInitVoxSupport_initWithNSString_withNSString_(NSString *userName, NSString *password) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APResponseInitVoxSupport_init(APResponseInitVoxSupport *self);

FOUNDATION_EXPORT APResponseInitVoxSupport *new_APResponseInitVoxSupport_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APResponseInitVoxSupport)

typedef APResponseInitVoxSupport ImActorModelApiRpcResponseInitVoxSupport;

#endif // _APResponseInitVoxSupport_H_
