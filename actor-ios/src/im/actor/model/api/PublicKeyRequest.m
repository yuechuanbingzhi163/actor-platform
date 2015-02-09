//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/PublicKeyRequest.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/droidkit/bser/BserValues.h"
#include "com/droidkit/bser/BserWriter.h"
#include "im/actor/model/api/PublicKeyRequest.h"
#include "java/io/IOException.h"

@interface ImActorModelApiPublicKeyRequest () {
 @public
  jint uid_;
  jlong accessHash_;
  jlong keyHash_;
}
@end

@implementation ImActorModelApiPublicKeyRequest

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)accessHash
                   withLong:(jlong)keyHash {
  if (self = [super init]) {
    self->uid_ = uid;
    self->accessHash_ = accessHash;
    self->keyHash_ = keyHash;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getUid {
  return self->uid_;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}

- (jlong)getKeyHash {
  return self->keyHash_;
}

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values {
  self->uid_ = [((ComDroidkitBserBserValues *) nil_chk(values)) getIntWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
  self->keyHash_ = [values getLongWithInt:3];
}

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer {
  [((ComDroidkitBserBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
  [writer writeLongWithInt:3 withLong:self->keyHash_];
}

- (void)copyAllFieldsTo:(ImActorModelApiPublicKeyRequest *)other {
  [super copyAllFieldsTo:other];
  other->uid_ = uid_;
  other->accessHash_ = accessHash_;
  other->keyHash_ = keyHash_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withLong:withLong:", "PublicKeyRequest", NULL, 0x1, NULL },
    { "init", "PublicKeyRequest", NULL, 0x1, NULL },
    { "getUid", NULL, "I", 0x1, NULL },
    { "getAccessHash", NULL, "J", 0x1, NULL },
    { "getKeyHash", NULL, "J", 0x1, NULL },
    { "parseWithComDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithComDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "uid_", NULL, 0x2, "I", NULL,  },
    { "accessHash_", NULL, 0x2, "J", NULL,  },
    { "keyHash_", NULL, 0x2, "J", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiPublicKeyRequest = { 1, "PublicKeyRequest", "im.actor.model.api", NULL, 0x1, 7, methods, 3, fields, 0, NULL};
  return &_ImActorModelApiPublicKeyRequest;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiPublicKeyRequest)
