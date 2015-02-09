//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestTerminateAllSessions.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/droidkit/bser/Bser.h"
#include "com/droidkit/bser/BserObject.h"
#include "com/droidkit/bser/BserValues.h"
#include "com/droidkit/bser/BserWriter.h"
#include "im/actor/model/api/rpc/RequestTerminateAllSessions.h"
#include "java/io/IOException.h"

@implementation ImActorModelApiRpcRequestTerminateAllSessions

+ (ImActorModelApiRpcRequestTerminateAllSessions *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestTerminateAllSessions_fromBytesWithByteArray_(data);
}

- (instancetype)init {
  return [super init];
}

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values {
}

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer {
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestTerminateAllSessions_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.rpc.RequestTerminateAllSessions;", 0x9, "Ljava.io.IOException;" },
    { "init", "RequestTerminateAllSessions", NULL, 0x1, NULL },
    { "parseWithComDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithComDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiRpcRequestTerminateAllSessions_HEADER },
  };
  static const char *superclass_type_args[] = {"Lim.actor.model.api.rpc.ResponseVoid;"};
  static const J2ObjcClassInfo _ImActorModelApiRpcRequestTerminateAllSessions = { 1, "RequestTerminateAllSessions", "im.actor.model.api.rpc", NULL, 0x1, 5, methods, 1, fields, 1, superclass_type_args};
  return &_ImActorModelApiRpcRequestTerminateAllSessions;
}

@end

ImActorModelApiRpcRequestTerminateAllSessions *ImActorModelApiRpcRequestTerminateAllSessions_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestTerminateAllSessions_init();
  return ((ImActorModelApiRpcRequestTerminateAllSessions *) ComDroidkitBserBser_parseWithIOSClass_withByteArray_(ImActorModelApiRpcRequestTerminateAllSessions_class_(), data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestTerminateAllSessions)
