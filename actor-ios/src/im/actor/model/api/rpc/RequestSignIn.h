//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestSignIn.java
//

#ifndef _ImActorModelApiRpcRequestSignIn_H_
#define _ImActorModelApiRpcRequestSignIn_H_

@class ComDroidkitBserBserValues;
@class ComDroidkitBserBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

#define ImActorModelApiRpcRequestSignIn_HEADER 3

@interface ImActorModelApiRpcRequestSignIn : ImActorModelNetworkParserRequest {
}

+ (ImActorModelApiRpcRequestSignIn *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithLong:(jlong)phoneNumber
                withNSString:(NSString *)smsHash
                withNSString:(NSString *)smsCode
               withByteArray:(IOSByteArray *)publicKey
               withByteArray:(IOSByteArray *)deviceHash
                withNSString:(NSString *)deviceTitle
                     withInt:(jint)appId
                withNSString:(NSString *)appKey;

- (instancetype)init;

- (jlong)getPhoneNumber;

- (NSString *)getSmsHash;

- (NSString *)getSmsCode;

- (IOSByteArray *)getPublicKey;

- (IOSByteArray *)getDeviceHash;

- (NSString *)getDeviceTitle;

- (jint)getAppId;

- (NSString *)getAppKey;

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values;

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestSignIn)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcRequestSignIn *ImActorModelApiRpcRequestSignIn_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestSignIn, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestSignIn)

#endif // _ImActorModelApiRpcRequestSignIn_H_
