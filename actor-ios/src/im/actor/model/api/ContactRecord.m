//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/ContactRecord.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/droidkit/bser/BserValues.h"
#include "com/droidkit/bser/BserWriter.h"
#include "im/actor/model/api/ContactRecord.h"
#include "im/actor/model/api/RecordType.h"
#include "java/io/IOException.h"

@interface ImActorModelApiContactRecord () {
 @public
  jint id__;
  jlong accessHash_;
  ImActorModelApiRecordTypeEnum *recordType_;
  NSString *record_;
  NSString *title_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiContactRecord, recordType_, ImActorModelApiRecordTypeEnum *)
J2OBJC_FIELD_SETTER(ImActorModelApiContactRecord, record_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiContactRecord, title_, NSString *)

@implementation ImActorModelApiContactRecord

- (instancetype)initWithInt:(jint)id_
                   withLong:(jlong)accessHash
withImActorModelApiRecordTypeEnum:(ImActorModelApiRecordTypeEnum *)recordType
               withNSString:(NSString *)record
               withNSString:(NSString *)title {
  if (self = [super init]) {
    self->id__ = id_;
    self->accessHash_ = accessHash;
    ImActorModelApiContactRecord_set_recordType_(self, recordType);
    ImActorModelApiContactRecord_set_record_(self, record);
    ImActorModelApiContactRecord_set_title_(self, title);
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getId {
  return self->id__;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}

- (ImActorModelApiRecordTypeEnum *)getRecordType {
  return self->recordType_;
}

- (NSString *)getRecord {
  return self->record_;
}

- (NSString *)getTitle {
  return self->title_;
}

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values {
  self->id__ = [((ComDroidkitBserBserValues *) nil_chk(values)) getIntWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
  ImActorModelApiContactRecord_set_recordType_(self, ImActorModelApiRecordTypeEnum_parseWithInt_([values getIntWithInt:3]));
  ImActorModelApiContactRecord_set_record_(self, [values getStringWithInt:4]);
  ImActorModelApiContactRecord_set_title_(self, [values getStringWithInt:5]);
}

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer {
  [((ComDroidkitBserBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->id__];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
  if (self->recordType_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  [writer writeIntWithInt:3 withInt:[((ImActorModelApiRecordTypeEnum *) nil_chk(self->recordType_)) getValue]];
  if (self->record_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  [writer writeStringWithInt:4 withNSString:self->record_];
  if (self->title_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  [writer writeStringWithInt:5 withNSString:self->title_];
}

- (void)dealloc {
  RELEASE_(recordType_);
  RELEASE_(record_);
  RELEASE_(title_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ImActorModelApiContactRecord *)other {
  [super copyAllFieldsTo:other];
  other->id__ = id__;
  other->accessHash_ = accessHash_;
  ImActorModelApiContactRecord_set_recordType_(other, recordType_);
  ImActorModelApiContactRecord_set_record_(other, record_);
  ImActorModelApiContactRecord_set_title_(other, title_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withLong:withImActorModelApiRecordTypeEnum:withNSString:withNSString:", "ContactRecord", NULL, 0x1, NULL },
    { "init", "ContactRecord", NULL, 0x1, NULL },
    { "getId", NULL, "I", 0x1, NULL },
    { "getAccessHash", NULL, "J", 0x1, NULL },
    { "getRecordType", NULL, "Lim.actor.model.api.RecordType;", 0x1, NULL },
    { "getRecord", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getTitle", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "parseWithComDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithComDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "id__", "id", 0x2, "I", NULL,  },
    { "accessHash_", NULL, 0x2, "J", NULL,  },
    { "recordType_", NULL, 0x2, "Lim.actor.model.api.RecordType;", NULL,  },
    { "record_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "title_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiContactRecord = { 1, "ContactRecord", "im.actor.model.api", NULL, 0x1, 9, methods, 5, fields, 0, NULL};
  return &_ImActorModelApiContactRecord;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiContactRecord)
