//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/base/SeqUpdate.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/droidkit/bser/Bser.h"
#include "com/droidkit/bser/BserObject.h"
#include "com/droidkit/bser/BserValues.h"
#include "com/droidkit/bser/BserWriter.h"
#include "im/actor/model/api/base/SeqUpdate.h"
#include "java/io/IOException.h"

@interface ImActorModelApiBaseSeqUpdate () {
 @public
  jint seq_;
  IOSByteArray *state_;
  jint updateHeader_;
  IOSByteArray *update_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiBaseSeqUpdate, state_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelApiBaseSeqUpdate, update_, IOSByteArray *)

@implementation ImActorModelApiBaseSeqUpdate

+ (ImActorModelApiBaseSeqUpdate *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiBaseSeqUpdate_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)seq
              withByteArray:(IOSByteArray *)state
                    withInt:(jint)updateHeader
              withByteArray:(IOSByteArray *)update {
  if (self = [super init]) {
    self->seq_ = seq;
    ImActorModelApiBaseSeqUpdate_set_state_(self, state);
    self->updateHeader_ = updateHeader;
    ImActorModelApiBaseSeqUpdate_set_update_(self, update);
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getSeq {
  return self->seq_;
}

- (IOSByteArray *)getState {
  return self->state_;
}

- (jint)getUpdateHeader {
  return self->updateHeader_;
}

- (IOSByteArray *)getUpdate {
  return self->update_;
}

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values {
  self->seq_ = [((ComDroidkitBserBserValues *) nil_chk(values)) getIntWithInt:1];
  ImActorModelApiBaseSeqUpdate_set_state_(self, [values getBytesWithInt:2]);
  self->updateHeader_ = [values getIntWithInt:3];
  ImActorModelApiBaseSeqUpdate_set_update_(self, [values getBytesWithInt:4]);
}

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer {
  [((ComDroidkitBserBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->seq_];
  if (self->state_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  [writer writeBytesWithInt:2 withByteArray:self->state_];
  [writer writeIntWithInt:3 withInt:self->updateHeader_];
  if (self->update_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  [writer writeBytesWithInt:4 withByteArray:self->update_];
}

- (jint)getHeaderKey {
  return ImActorModelApiBaseSeqUpdate_HEADER;
}

- (void)dealloc {
  RELEASE_(state_);
  RELEASE_(update_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ImActorModelApiBaseSeqUpdate *)other {
  [super copyAllFieldsTo:other];
  other->seq_ = seq_;
  ImActorModelApiBaseSeqUpdate_set_state_(other, state_);
  other->updateHeader_ = updateHeader_;
  ImActorModelApiBaseSeqUpdate_set_update_(other, update_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.base.SeqUpdate;", 0x9, "Ljava.io.IOException;" },
    { "initWithInt:withByteArray:withInt:withByteArray:", "SeqUpdate", NULL, 0x1, NULL },
    { "init", "SeqUpdate", NULL, 0x1, NULL },
    { "getSeq", NULL, "I", 0x1, NULL },
    { "getState", NULL, "[B", 0x1, NULL },
    { "getUpdateHeader", NULL, "I", 0x1, NULL },
    { "getUpdate", NULL, "[B", 0x1, NULL },
    { "parseWithComDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithComDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiBaseSeqUpdate_HEADER },
    { "seq_", NULL, 0x2, "I", NULL,  },
    { "state_", NULL, 0x2, "[B", NULL,  },
    { "updateHeader_", NULL, 0x2, "I", NULL,  },
    { "update_", NULL, 0x2, "[B", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiBaseSeqUpdate = { 1, "SeqUpdate", "im.actor.model.api.base", NULL, 0x1, 10, methods, 5, fields, 0, NULL};
  return &_ImActorModelApiBaseSeqUpdate;
}

@end

ImActorModelApiBaseSeqUpdate *ImActorModelApiBaseSeqUpdate_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiBaseSeqUpdate_init();
  return ((ImActorModelApiBaseSeqUpdate *) ComDroidkitBserBser_parseWithIOSClass_withByteArray_(ImActorModelApiBaseSeqUpdate_class_(), data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiBaseSeqUpdate)
