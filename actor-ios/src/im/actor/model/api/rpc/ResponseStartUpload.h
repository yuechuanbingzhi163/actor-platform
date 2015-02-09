//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/ResponseStartUpload.java
//

#ifndef _ImActorModelApiRpcResponseStartUpload_H_
#define _ImActorModelApiRpcResponseStartUpload_H_

@class ComDroidkitBserBserValues;
@class ComDroidkitBserBserWriter;
@class IOSByteArray;
@class ImActorModelApiUploadConfig;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Response.h"

#define ImActorModelApiRpcResponseStartUpload_HEADER 19

@interface ImActorModelApiRpcResponseStartUpload : ImActorModelNetworkParserResponse {
}

+ (ImActorModelApiRpcResponseStartUpload *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithImActorModelApiUploadConfig:(ImActorModelApiUploadConfig *)config;

- (instancetype)init;

- (ImActorModelApiUploadConfig *)getConfig;

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values;

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcResponseStartUpload)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcResponseStartUpload *ImActorModelApiRpcResponseStartUpload_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcResponseStartUpload, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcResponseStartUpload)

#endif // _ImActorModelApiRpcResponseStartUpload_H_
