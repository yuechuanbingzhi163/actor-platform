//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestEncryptedRead.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/droidkit/bser/Bser.h"
#include "com/droidkit/bser/BserObject.h"
#include "com/droidkit/bser/BserValues.h"
#include "com/droidkit/bser/BserWriter.h"
#include "im/actor/model/api/OutPeer.h"
#include "im/actor/model/api/rpc/RequestEncryptedRead.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestEncryptedRead () {
 @public
  ImActorModelApiOutPeer *peer_;
  jlong rid_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestEncryptedRead, peer_, ImActorModelApiOutPeer *)

@implementation ImActorModelApiRpcRequestEncryptedRead

+ (ImActorModelApiRpcRequestEncryptedRead *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestEncryptedRead_fromBytesWithByteArray_(data);
}

- (instancetype)initWithImActorModelApiOutPeer:(ImActorModelApiOutPeer *)peer
                                      withLong:(jlong)rid {
  if (self = [super init]) {
    ImActorModelApiRpcRequestEncryptedRead_set_peer_(self, peer);
    self->rid_ = rid;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (ImActorModelApiOutPeer *)getPeer {
  return self->peer_;
}

- (jlong)getRid {
  return self->rid_;
}

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values {
  ImActorModelApiRpcRequestEncryptedRead_set_peer_(self, [((ComDroidkitBserBserValues *) nil_chk(values)) getObjWithInt:1 withIOSClass:ImActorModelApiOutPeer_class_()]);
  self->rid_ = [values getLongWithInt:3];
}

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  [((ComDroidkitBserBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withComDroidkitBserBserObject:self->peer_];
  [writer writeLongWithInt:3 withLong:self->rid_];
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestEncryptedRead_HEADER;
}

- (void)dealloc {
  RELEASE_(peer_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestEncryptedRead *)other {
  [super copyAllFieldsTo:other];
  ImActorModelApiRpcRequestEncryptedRead_set_peer_(other, peer_);
  other->rid_ = rid_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.rpc.RequestEncryptedRead;", 0x9, "Ljava.io.IOException;" },
    { "initWithImActorModelApiOutPeer:withLong:", "RequestEncryptedRead", NULL, 0x1, NULL },
    { "init", "RequestEncryptedRead", NULL, 0x1, NULL },
    { "getPeer", NULL, "Lim.actor.model.api.OutPeer;", 0x1, NULL },
    { "getRid", NULL, "J", 0x1, NULL },
    { "parseWithComDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithComDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiRpcRequestEncryptedRead_HEADER },
    { "peer_", NULL, 0x2, "Lim.actor.model.api.OutPeer;", NULL,  },
    { "rid_", NULL, 0x2, "J", NULL,  },
  };
  static const char *superclass_type_args[] = {"Lim.actor.model.api.rpc.ResponseVoid;"};
  static const J2ObjcClassInfo _ImActorModelApiRpcRequestEncryptedRead = { 1, "RequestEncryptedRead", "im.actor.model.api.rpc", NULL, 0x1, 8, methods, 3, fields, 1, superclass_type_args};
  return &_ImActorModelApiRpcRequestEncryptedRead;
}

@end

ImActorModelApiRpcRequestEncryptedRead *ImActorModelApiRpcRequestEncryptedRead_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestEncryptedRead_init();
  return ((ImActorModelApiRpcRequestEncryptedRead *) ComDroidkitBserBser_parseWithIOSClass_withByteArray_(ImActorModelApiRpcRequestEncryptedRead_class_(), data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestEncryptedRead)
