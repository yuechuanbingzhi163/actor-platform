//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/util/DataInput.java
//

#ifndef _AMDataInput_H_
#define _AMDataInput_H_

@class IOSByteArray;
@class IOSLongArray;

#include "J2ObjC_header.h"

@interface AMDataInput : NSObject {
}

- (instancetype)initWithByteArray:(IOSByteArray *)data
                          withInt:(jint)offset
                          withInt:(jint)len;

- (jint)readByte;

- (jint)readByteSilent;

- (jint)readInt;

- (jlong)readLong;

- (jlong)readUInt;

- (IOSByteArray *)readBytesWithInt:(jint)count;

- (jlong)readVarInt;

- (IOSByteArray *)readProtoBytes;

- (IOSLongArray *)readProtoLongs;

- (NSString *)readProtoString;

- (jboolean)readProtoBool;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDataInput)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef AMDataInput ImActorModelUtilDataInput;

J2OBJC_TYPE_LITERAL_HEADER(AMDataInput)

#endif // _AMDataInput_H_