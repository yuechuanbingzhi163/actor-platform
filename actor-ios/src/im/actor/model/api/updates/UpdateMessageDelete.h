//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateMessageDelete.java
//

#ifndef _ImActorModelApiUpdatesUpdateMessageDelete_H_
#define _ImActorModelApiUpdatesUpdateMessageDelete_H_

@class ComDroidkitBserBserValues;
@class ComDroidkitBserBserWriter;
@class IOSByteArray;
@class ImActorModelApiPeer;
@protocol JavaUtilList;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

#define ImActorModelApiUpdatesUpdateMessageDelete_HEADER 46

@interface ImActorModelApiUpdatesUpdateMessageDelete : ImActorModelNetworkParserUpdate {
}

+ (ImActorModelApiUpdatesUpdateMessageDelete *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithImActorModelApiPeer:(ImActorModelApiPeer *)peer
                           withJavaUtilList:(id<JavaUtilList>)rids;

- (instancetype)init;

- (ImActorModelApiPeer *)getPeer;

- (id<JavaUtilList>)getRids;

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values;

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUpdatesUpdateMessageDelete)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateMessageDelete *ImActorModelApiUpdatesUpdateMessageDelete_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiUpdatesUpdateMessageDelete, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUpdatesUpdateMessageDelete)

#endif // _ImActorModelApiUpdatesUpdateMessageDelete_H_
