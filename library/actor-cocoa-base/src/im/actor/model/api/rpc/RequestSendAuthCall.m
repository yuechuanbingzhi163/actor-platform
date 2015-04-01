//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestSendAuthCall.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestSendAuthCall.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestSendAuthCall.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestSendAuthCall () {
 @public
  jlong phoneNumber_;
  NSString *smsHash_;
  jint appId_;
  NSString *apiKey_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSendAuthCall, smsHash_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSendAuthCall, apiKey_, NSString *)


#line 20
@implementation ImActorModelApiRpcRequestSendAuthCall


#line 23
+ (ImActorModelApiRpcRequestSendAuthCall *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestSendAuthCall_fromBytesWithByteArray_(data);
}


#line 32
- (instancetype)initWithLong:(jlong)phoneNumber
                withNSString:(NSString *)smsHash
                     withInt:(jint)appId
                withNSString:(NSString *)apiKey {
  if (self = [super init]) {
    
#line 33
    self->phoneNumber_ = phoneNumber;
    
#line 34
    self->smsHash_ = smsHash;
    
#line 35
    self->appId_ = appId;
    
#line 36
    self->apiKey_ = apiKey;
  }
  return self;
}


#line 39
- (instancetype)init {
  return [super init];
}

- (jlong)getPhoneNumber {
  
#line 44
  return self->phoneNumber_;
}


#line 47
- (NSString *)getSmsHash {
  
#line 48
  return self->smsHash_;
}


#line 51
- (jint)getAppId {
  
#line 52
  return self->appId_;
}


#line 55
- (NSString *)getApiKey {
  
#line 56
  return self->apiKey_;
}


#line 60
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->phoneNumber_ = [((BSBserValues *) nil_chk(values)) getLongWithInt:1];
  self->smsHash_ = [values getStringWithInt:2];
  self->appId_ = [values getIntWithInt:3];
  self->apiKey_ = [values getStringWithInt:4];
}


#line 68
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 69
  [((BSBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:self->phoneNumber_];
  if (self->smsHash_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:2 withNSString:self->smsHash_];
  [writer writeIntWithInt:3 withInt:self->appId_];
  if (self->apiKey_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:4 withNSString:self->apiKey_];
}

- (NSString *)description {
  NSString *res = @"rpc SendAuthCall{";
  res = JreStrcat("$$", res, JreStrcat("$J", @"phoneNumber=", self->phoneNumber_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  
#line 91
  return ImActorModelApiRpcRequestSendAuthCall_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestSendAuthCall *)other {
  [super copyAllFieldsTo:other];
  other->phoneNumber_ = phoneNumber_;
  other->smsHash_ = smsHash_;
  other->appId_ = appId_;
  other->apiKey_ = apiKey_;
}

@end

ImActorModelApiRpcRequestSendAuthCall *ImActorModelApiRpcRequestSendAuthCall_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestSendAuthCall_init();
  
#line 24
  return ((ImActorModelApiRpcRequestSendAuthCall *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcRequestSendAuthCall alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestSendAuthCall)