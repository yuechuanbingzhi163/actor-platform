//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/parser/BaseParser.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/network/parser/BaseParser.h"
#include "java/io/IOException.h"

@implementation ImActorModelNetworkParserBaseParser

- (id)readWithInt:(jint)type
    withByteArray:(IOSByteArray *)payload {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "readWithInt:withByteArray:", "read", "TT;", 0x401, "Ljava.io.IOException;" },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ImActorModelNetworkParserBaseParser = { 1, "BaseParser", "im.actor.model.network.parser", NULL, 0x401, 2, methods, 0, NULL, 0, NULL};
  return &_ImActorModelNetworkParserBaseParser;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkParserBaseParser)
