//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/FileLocation.java
//

#ifndef _ImActorModelApiFileLocation_H_
#define _ImActorModelApiFileLocation_H_

@class BSBserValues;
@class BSBserWriter;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@interface ImActorModelApiFileLocation : BSBserObject {
}

- (instancetype)initWithLong:(jlong)fileId
                    withLong:(jlong)accessHash;

- (instancetype)init;

- (jlong)getFileId;

- (jlong)getAccessHash;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiFileLocation)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiFileLocation)

#endif // _ImActorModelApiFileLocation_H_