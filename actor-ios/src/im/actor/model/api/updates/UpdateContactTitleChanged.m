//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateContactTitleChanged.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdateContactTitleChanged.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateContactTitleChanged () {
 @public
  jint contactId_;
  NSString *title_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateContactTitleChanged, title_, NSString *)

@implementation ImActorModelApiUpdatesUpdateContactTitleChanged

+ (ImActorModelApiUpdatesUpdateContactTitleChanged *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateContactTitleChanged_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)contactId
               withNSString:(NSString *)title {
  if (self = [super init]) {
    self->contactId_ = contactId;
    self->title_ = title;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getContactId {
  return self->contactId_;
}

- (NSString *)getTitle {
  return self->title_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->contactId_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:2];
  self->title_ = [values getStringWithInt:3];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:2 withInt:self->contactId_];
  if (self->title_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:3 withNSString:self->title_];
}

- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateContactTitleChanged_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiUpdatesUpdateContactTitleChanged *)other {
  [super copyAllFieldsTo:other];
  other->contactId_ = contactId_;
  other->title_ = title_;
}

@end

ImActorModelApiUpdatesUpdateContactTitleChanged *ImActorModelApiUpdatesUpdateContactTitleChanged_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateContactTitleChanged_init();
  return ((ImActorModelApiUpdatesUpdateContactTitleChanged *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiUpdatesUpdateContactTitleChanged alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateContactTitleChanged)