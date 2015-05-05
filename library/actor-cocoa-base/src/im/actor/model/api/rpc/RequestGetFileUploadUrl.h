//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestGetFileUploadUrl.java
//

#ifndef _ImActorModelApiRpcRequestGetFileUploadUrl_H_
#define _ImActorModelApiRpcRequestGetFileUploadUrl_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define ImActorModelApiRpcRequestGetFileUploadUrl_HEADER 97

@interface ImActorModelApiRpcRequestGetFileUploadUrl : ImActorModelNetworkParserRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)expectedSize;

+ (ImActorModelApiRpcRequestGetFileUploadUrl *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getExpectedSize;

- (jint)getHeaderKey;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestGetFileUploadUrl)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestGetFileUploadUrl, HEADER, jint)

FOUNDATION_EXPORT ImActorModelApiRpcRequestGetFileUploadUrl *ImActorModelApiRpcRequestGetFileUploadUrl_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelApiRpcRequestGetFileUploadUrl_initWithInt_(ImActorModelApiRpcRequestGetFileUploadUrl *self, jint expectedSize);

FOUNDATION_EXPORT ImActorModelApiRpcRequestGetFileUploadUrl *new_ImActorModelApiRpcRequestGetFileUploadUrl_initWithInt_(jint expectedSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiRpcRequestGetFileUploadUrl_init(ImActorModelApiRpcRequestGetFileUploadUrl *self);

FOUNDATION_EXPORT ImActorModelApiRpcRequestGetFileUploadUrl *new_ImActorModelApiRpcRequestGetFileUploadUrl_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestGetFileUploadUrl)

#endif // _ImActorModelApiRpcRequestGetFileUploadUrl_H_