//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/ResponseLoadDialogs.java
//

#ifndef _ImActorModelApiRpcResponseLoadDialogs_H_
#define _ImActorModelApiRpcResponseLoadDialogs_H_

@class ComDroidkitBserBserValues;
@class ComDroidkitBserBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Response.h"

#define ImActorModelApiRpcResponseLoadDialogs_HEADER 105

@interface ImActorModelApiRpcResponseLoadDialogs : ImActorModelNetworkParserResponse {
}

+ (ImActorModelApiRpcResponseLoadDialogs *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)groups
                    withJavaUtilList:(id<JavaUtilList>)users
                    withJavaUtilList:(id<JavaUtilList>)dialogs;

- (instancetype)init;

- (id<JavaUtilList>)getGroups;

- (id<JavaUtilList>)getUsers;

- (id<JavaUtilList>)getDialogs;

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values;

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcResponseLoadDialogs)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcResponseLoadDialogs *ImActorModelApiRpcResponseLoadDialogs_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcResponseLoadDialogs, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcResponseLoadDialogs)

#endif // _ImActorModelApiRpcResponseLoadDialogs_H_
