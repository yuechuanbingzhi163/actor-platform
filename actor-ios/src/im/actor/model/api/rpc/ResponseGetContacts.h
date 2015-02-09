//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/ResponseGetContacts.java
//

#ifndef _ImActorModelApiRpcResponseGetContacts_H_
#define _ImActorModelApiRpcResponseGetContacts_H_

@class ComDroidkitBserBserValues;
@class ComDroidkitBserBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Response.h"

#define ImActorModelApiRpcResponseGetContacts_HEADER 88

@interface ImActorModelApiRpcResponseGetContacts : ImActorModelNetworkParserResponse {
}

+ (ImActorModelApiRpcResponseGetContacts *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)users
                         withBoolean:(jboolean)isNotChanged;

- (instancetype)init;

- (id<JavaUtilList>)getUsers;

- (jboolean)isNotChanged;

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values;

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcResponseGetContacts)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcResponseGetContacts *ImActorModelApiRpcResponseGetContacts_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcResponseGetContacts, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcResponseGetContacts)

#endif // _ImActorModelApiRpcResponseGetContacts_H_
