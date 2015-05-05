//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/DocumentExVideo.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/DocumentExVideo.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/DocumentEx.h"
#include "im/actor/model/api/DocumentExVideo.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiDocumentExVideo () {
 @public
  jint w_;
  jint h_;
  jint duration_;
}

@end


#line 23
@implementation ImActorModelApiDocumentExVideo


#line 29
- (instancetype)initWithInt:(jint)w
                    withInt:(jint)h
                    withInt:(jint)duration {
  ImActorModelApiDocumentExVideo_initWithInt_withInt_withInt_(self, w, h, duration);
  return self;
}


#line 35
- (instancetype)init {
  ImActorModelApiDocumentExVideo_init(self);
  return self;
}


#line 39
- (jint)getHeader {
  return 2;
}

- (jint)getW {
  return self->w_;
}

- (jint)getH {
  return self->h_;
}

- (jint)getDuration {
  return self->duration_;
}


#line 56
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->w_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->h_ = [values getIntWithInt:2];
  self->duration_ = [values getIntWithInt:3];
}


#line 63
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->w_];
  [writer writeIntWithInt:2 withInt:self->h_];
  [writer writeIntWithInt:3 withInt:self->duration_];
}


#line 70
- (NSString *)description {
  NSString *res = @"struct DocumentExVideo{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"w=", self->w_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", h=", self->h_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", duration=", self->duration_));
  res = JreStrcat("$C", res, '}');
  return res;
}

@end


#line 29
void ImActorModelApiDocumentExVideo_initWithInt_withInt_withInt_(ImActorModelApiDocumentExVideo *self, jint w, jint h, jint duration) {
  (void) ImActorModelApiDocumentEx_init(self);
  
#line 30
  self->w_ = w;
  self->h_ = h;
  self->duration_ = duration;
}


#line 29
ImActorModelApiDocumentExVideo *new_ImActorModelApiDocumentExVideo_initWithInt_withInt_withInt_(jint w, jint h, jint duration) {
  ImActorModelApiDocumentExVideo *self = [ImActorModelApiDocumentExVideo alloc];
  ImActorModelApiDocumentExVideo_initWithInt_withInt_withInt_(self, w, h, duration);
  return self;
}

void ImActorModelApiDocumentExVideo_init(ImActorModelApiDocumentExVideo *self) {
  (void) ImActorModelApiDocumentEx_init(self);
}


#line 35
ImActorModelApiDocumentExVideo *new_ImActorModelApiDocumentExVideo_init() {
  ImActorModelApiDocumentExVideo *self = [ImActorModelApiDocumentExVideo alloc];
  ImActorModelApiDocumentExVideo_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiDocumentExVideo)