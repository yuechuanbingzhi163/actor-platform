//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestEncryptedReceived.java
//

#ifndef _ImActorModelApiRpcRequestEncryptedReceived_H_
#define _ImActorModelApiRpcRequestEncryptedReceived_H_

@class ComDroidkitBserBserValues;
@class ComDroidkitBserBserWriter;
@class IOSByteArray;
@class ImActorModelApiOutPeer;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

#define ImActorModelApiRpcRequestEncryptedReceived_HEADER 116

@interface ImActorModelApiRpcRequestEncryptedReceived : ImActorModelNetworkParserRequest {
}

+ (ImActorModelApiRpcRequestEncryptedReceived *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithImActorModelApiOutPeer:(ImActorModelApiOutPeer *)peer
                                      withLong:(jlong)rid;

- (instancetype)init;

- (ImActorModelApiOutPeer *)getPeer;

- (jlong)getRid;

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values;

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestEncryptedReceived)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcRequestEncryptedReceived *ImActorModelApiRpcRequestEncryptedReceived_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestEncryptedReceived, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestEncryptedReceived)

#endif // _ImActorModelApiRpcRequestEncryptedReceived_H_
