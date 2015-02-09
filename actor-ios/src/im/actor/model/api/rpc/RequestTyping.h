//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestTyping.java
//

#ifndef _ImActorModelApiRpcRequestTyping_H_
#define _ImActorModelApiRpcRequestTyping_H_

@class ComDroidkitBserBserValues;
@class ComDroidkitBserBserWriter;
@class IOSByteArray;
@class ImActorModelApiOutPeer;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

#define ImActorModelApiRpcRequestTyping_HEADER 27

@interface ImActorModelApiRpcRequestTyping : ImActorModelNetworkParserRequest {
}

+ (ImActorModelApiRpcRequestTyping *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithImActorModelApiOutPeer:(ImActorModelApiOutPeer *)peer
                                       withInt:(jint)typingType;

- (instancetype)init;

- (ImActorModelApiOutPeer *)getPeer;

- (jint)getTypingType;

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values;

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestTyping)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcRequestTyping *ImActorModelApiRpcRequestTyping_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestTyping, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestTyping)

#endif // _ImActorModelApiRpcRequestTyping_H_
