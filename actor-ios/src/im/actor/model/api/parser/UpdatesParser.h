//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/parser/UpdatesParser.java
//

#ifndef _ImActorModelApiParserUpdatesParser_H_
#define _ImActorModelApiParserUpdatesParser_H_

@class IOSByteArray;
@class ImActorModelNetworkParserUpdate;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/BaseParser.h"

@interface ImActorModelApiParserUpdatesParser : ImActorModelNetworkParserBaseParser {
}

- (ImActorModelNetworkParserUpdate *)readWithInt:(jint)type
                                   withByteArray:(IOSByteArray *)payload;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiParserUpdatesParser)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiParserUpdatesParser)

#endif // _ImActorModelApiParserUpdatesParser_H_
