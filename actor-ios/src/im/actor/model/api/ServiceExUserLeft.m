//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/ServiceExUserLeft.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/droidkit/bser/BserValues.h"
#include "com/droidkit/bser/BserWriter.h"
#include "im/actor/model/api/ServiceExUserLeft.h"
#include "java/io/IOException.h"

@implementation ImActorModelApiServiceExUserLeft

- (instancetype)init {
  return [super init];
}

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values {
}

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer {
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "ServiceExUserLeft", NULL, 0x1, NULL },
    { "parseWithComDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithComDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcClassInfo _ImActorModelApiServiceExUserLeft = { 1, "ServiceExUserLeft", "im.actor.model.api", NULL, 0x1, 3, methods, 0, NULL, 0, NULL};
  return &_ImActorModelApiServiceExUserLeft;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiServiceExUserLeft)
