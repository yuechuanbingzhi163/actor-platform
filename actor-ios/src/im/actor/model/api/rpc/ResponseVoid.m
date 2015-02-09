//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/ResponseVoid.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/droidkit/bser/Bser.h"
#include "com/droidkit/bser/BserObject.h"
#include "com/droidkit/bser/BserValues.h"
#include "com/droidkit/bser/BserWriter.h"
#include "im/actor/model/api/rpc/ResponseVoid.h"
#include "java/io/IOException.h"

@implementation ImActorModelApiRpcResponseVoid

+ (ImActorModelApiRpcResponseVoid *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcResponseVoid_fromBytesWithByteArray_(data);
}

- (instancetype)init {
  return [super init];
}

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values {
}

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer {
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcResponseVoid_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.rpc.ResponseVoid;", 0x9, "Ljava.io.IOException;" },
    { "init", "ResponseVoid", NULL, 0x1, NULL },
    { "parseWithComDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithComDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiRpcResponseVoid_HEADER },
  };
  static const J2ObjcClassInfo _ImActorModelApiRpcResponseVoid = { 1, "ResponseVoid", "im.actor.model.api.rpc", NULL, 0x1, 5, methods, 1, fields, 0, NULL};
  return &_ImActorModelApiRpcResponseVoid;
}

@end

ImActorModelApiRpcResponseVoid *ImActorModelApiRpcResponseVoid_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcResponseVoid_init();
  return ((ImActorModelApiRpcResponseVoid *) ComDroidkitBserBser_parseWithIOSClass_withByteArray_(ImActorModelApiRpcResponseVoid_class_(), data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcResponseVoid)
