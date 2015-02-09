//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestGetAuthSessions.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/droidkit/bser/Bser.h"
#include "com/droidkit/bser/BserObject.h"
#include "com/droidkit/bser/BserValues.h"
#include "com/droidkit/bser/BserWriter.h"
#include "im/actor/model/api/rpc/RequestGetAuthSessions.h"
#include "java/io/IOException.h"

@implementation ImActorModelApiRpcRequestGetAuthSessions

+ (ImActorModelApiRpcRequestGetAuthSessions *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestGetAuthSessions_fromBytesWithByteArray_(data);
}

- (instancetype)init {
  return [super init];
}

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values {
}

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer {
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestGetAuthSessions_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.rpc.RequestGetAuthSessions;", 0x9, "Ljava.io.IOException;" },
    { "init", "RequestGetAuthSessions", NULL, 0x1, NULL },
    { "parseWithComDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithComDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiRpcRequestGetAuthSessions_HEADER },
  };
  static const char *superclass_type_args[] = {"Lim.actor.model.api.rpc.ResponseGetAuthSessions;"};
  static const J2ObjcClassInfo _ImActorModelApiRpcRequestGetAuthSessions = { 1, "RequestGetAuthSessions", "im.actor.model.api.rpc", NULL, 0x1, 5, methods, 1, fields, 1, superclass_type_args};
  return &_ImActorModelApiRpcRequestGetAuthSessions;
}

@end

ImActorModelApiRpcRequestGetAuthSessions *ImActorModelApiRpcRequestGetAuthSessions_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestGetAuthSessions_init();
  return ((ImActorModelApiRpcRequestGetAuthSessions *) ComDroidkitBserBser_parseWithIOSClass_withByteArray_(ImActorModelApiRpcRequestGetAuthSessions_class_(), data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestGetAuthSessions)
