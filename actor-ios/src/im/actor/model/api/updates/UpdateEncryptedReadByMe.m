//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateEncryptedReadByMe.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/droidkit/bser/Bser.h"
#include "com/droidkit/bser/BserObject.h"
#include "com/droidkit/bser/BserValues.h"
#include "com/droidkit/bser/BserWriter.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/updates/UpdateEncryptedReadByMe.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateEncryptedReadByMe () {
 @public
  ImActorModelApiPeer *peer_;
  jlong rid_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateEncryptedReadByMe, peer_, ImActorModelApiPeer *)

@implementation ImActorModelApiUpdatesUpdateEncryptedReadByMe

+ (ImActorModelApiUpdatesUpdateEncryptedReadByMe *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateEncryptedReadByMe_fromBytesWithByteArray_(data);
}

- (instancetype)initWithImActorModelApiPeer:(ImActorModelApiPeer *)peer
                                   withLong:(jlong)rid {
  if (self = [super init]) {
    ImActorModelApiUpdatesUpdateEncryptedReadByMe_set_peer_(self, peer);
    self->rid_ = rid;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (ImActorModelApiPeer *)getPeer {
  return self->peer_;
}

- (jlong)getRid {
  return self->rid_;
}

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values {
  ImActorModelApiUpdatesUpdateEncryptedReadByMe_set_peer_(self, [((ComDroidkitBserBserValues *) nil_chk(values)) getObjWithInt:1 withIOSClass:ImActorModelApiPeer_class_()]);
  self->rid_ = [values getLongWithInt:2];
}

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  [((ComDroidkitBserBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withComDroidkitBserBserObject:self->peer_];
  [writer writeLongWithInt:2 withLong:self->rid_];
}

- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateEncryptedReadByMe_HEADER;
}

- (void)dealloc {
  RELEASE_(peer_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ImActorModelApiUpdatesUpdateEncryptedReadByMe *)other {
  [super copyAllFieldsTo:other];
  ImActorModelApiUpdatesUpdateEncryptedReadByMe_set_peer_(other, peer_);
  other->rid_ = rid_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.updates.UpdateEncryptedReadByMe;", 0x9, "Ljava.io.IOException;" },
    { "initWithImActorModelApiPeer:withLong:", "UpdateEncryptedReadByMe", NULL, 0x1, NULL },
    { "init", "UpdateEncryptedReadByMe", NULL, 0x1, NULL },
    { "getPeer", NULL, "Lim.actor.model.api.Peer;", 0x1, NULL },
    { "getRid", NULL, "J", 0x1, NULL },
    { "parseWithComDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithComDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiUpdatesUpdateEncryptedReadByMe_HEADER },
    { "peer_", NULL, 0x2, "Lim.actor.model.api.Peer;", NULL,  },
    { "rid_", NULL, 0x2, "J", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiUpdatesUpdateEncryptedReadByMe = { 1, "UpdateEncryptedReadByMe", "im.actor.model.api.updates", NULL, 0x1, 8, methods, 3, fields, 0, NULL};
  return &_ImActorModelApiUpdatesUpdateEncryptedReadByMe;
}

@end

ImActorModelApiUpdatesUpdateEncryptedReadByMe *ImActorModelApiUpdatesUpdateEncryptedReadByMe_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateEncryptedReadByMe_init();
  return ((ImActorModelApiUpdatesUpdateEncryptedReadByMe *) ComDroidkitBserBser_parseWithIOSClass_withByteArray_(ImActorModelApiUpdatesUpdateEncryptedReadByMe_class_(), data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateEncryptedReadByMe)
