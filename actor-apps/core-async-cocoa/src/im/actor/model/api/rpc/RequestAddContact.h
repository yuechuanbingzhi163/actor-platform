//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/library/core/src/main/java/im/actor/model/api/rpc/RequestAddContact.java
//

#ifndef _APRequestAddContact_H_
#define _APRequestAddContact_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestAddContact_HEADER 114

@interface APRequestAddContact : APRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)accessHash;

+ (APRequestAddContact *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jlong)getAccessHash;

- (jint)getHeaderKey;

- (jint)getUid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestAddContact)

J2OBJC_STATIC_FIELD_GETTER(APRequestAddContact, HEADER, jint)

FOUNDATION_EXPORT APRequestAddContact *APRequestAddContact_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestAddContact_initWithInt_withLong_(APRequestAddContact *self, jint uid, jlong accessHash);

FOUNDATION_EXPORT APRequestAddContact *new_APRequestAddContact_initWithInt_withLong_(jint uid, jlong accessHash) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APRequestAddContact_init(APRequestAddContact *self);

FOUNDATION_EXPORT APRequestAddContact *new_APRequestAddContact_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestAddContact)

typedef APRequestAddContact ImActorModelApiRpcRequestAddContact;

#endif // _APRequestAddContact_H_