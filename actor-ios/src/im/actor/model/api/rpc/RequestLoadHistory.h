//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestLoadHistory.java
//

#ifndef _ImActorModelApiRpcRequestLoadHistory_H_
#define _ImActorModelApiRpcRequestLoadHistory_H_

@class ComDroidkitBserBserValues;
@class ComDroidkitBserBserWriter;
@class IOSByteArray;
@class ImActorModelApiOutPeer;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

#define ImActorModelApiRpcRequestLoadHistory_HEADER 118

@interface ImActorModelApiRpcRequestLoadHistory : ImActorModelNetworkParserRequest {
}

+ (ImActorModelApiRpcRequestLoadHistory *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithImActorModelApiOutPeer:(ImActorModelApiOutPeer *)peer
                                      withLong:(jlong)startDate
                                       withInt:(jint)limit;

- (instancetype)init;

- (ImActorModelApiOutPeer *)getPeer;

- (jlong)getStartDate;

- (jint)getLimit;

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values;

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestLoadHistory)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcRequestLoadHistory *ImActorModelApiRpcRequestLoadHistory_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestLoadHistory, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestLoadHistory)

#endif // _ImActorModelApiRpcRequestLoadHistory_H_
