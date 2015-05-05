//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/mtp/entity/MessageAck.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/mtp/entity/MessageAck.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/network/mtp/entity/MessageAck.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "java/io/IOException.h"
#include "java/lang/Long.h"
#include "java/util/Arrays.h"


#line 13
@implementation MTMessageAck


#line 19
- (instancetype)initWithBSDataInput:(BSDataInput *)stream {
  MTMessageAck_initWithBSDataInput_(self, stream);
  return self;
}


#line 23
- (instancetype)initWithJavaLangLongArray:(IOSObjectArray *)_messagesIds {
  MTMessageAck_initWithJavaLangLongArray_(self, _messagesIds);
  return self;
}


#line 30
- (instancetype)initWithLongArray:(IOSLongArray *)messagesIds {
  MTMessageAck_initWithLongArray_(self, messagesIds);
  return self;
}

- (jbyte)getHeader {
  return MTMessageAck_HEADER;
}


#line 40
- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs {
  [((BSDataOutput *) nil_chk(bs)) writeProtoLongsWithLongArray:messagesIds_];
}


#line 45
- (void)readBodyWithBSDataInput:(BSDataInput *)bs {
  messagesIds_ = [((BSDataInput *) nil_chk(bs)) readProtoLongs];
}


#line 50
- (NSString *)description {
  return JreStrcat("$$", @"Ack ", JavaUtilArrays_toStringWithLongArray_(messagesIds_));
}

@end


#line 19
void MTMessageAck_initWithBSDataInput_(MTMessageAck *self, BSDataInput *stream) {
  (void) MTProtoStruct_initWithBSDataInput_(self, stream);
}


#line 19
MTMessageAck *new_MTMessageAck_initWithBSDataInput_(BSDataInput *stream) {
  MTMessageAck *self = [MTMessageAck alloc];
  MTMessageAck_initWithBSDataInput_(self, stream);
  return self;
}


#line 23
void MTMessageAck_initWithJavaLangLongArray_(MTMessageAck *self, IOSObjectArray *_messagesIds) {
  (void) MTProtoStruct_init(self);
  
#line 24
  self->messagesIds_ = [IOSLongArray newArrayWithLength:((IOSObjectArray *) nil_chk(_messagesIds))->size_];
  for (jint i = 0; i < _messagesIds->size_; ++i) {
    *IOSLongArray_GetRef(self->messagesIds_, i) = [((JavaLangLong *) nil_chk(IOSObjectArray_Get(_messagesIds, i))) longLongValue];
  }
}


#line 23
MTMessageAck *new_MTMessageAck_initWithJavaLangLongArray_(IOSObjectArray *_messagesIds) {
  MTMessageAck *self = [MTMessageAck alloc];
  MTMessageAck_initWithJavaLangLongArray_(self, _messagesIds);
  return self;
}


#line 30
void MTMessageAck_initWithLongArray_(MTMessageAck *self, IOSLongArray *messagesIds) {
  (void) MTProtoStruct_init(self);
  
#line 31
  self->messagesIds_ = messagesIds;
}


#line 30
MTMessageAck *new_MTMessageAck_initWithLongArray_(IOSLongArray *messagesIds) {
  MTMessageAck *self = [MTMessageAck alloc];
  MTMessageAck_initWithLongArray_(self, messagesIds);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTMessageAck)