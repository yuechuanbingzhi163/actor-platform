//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/DifferenceUpdate.java
//

#ifndef _ImActorModelApiDifferenceUpdate_H_
#define _ImActorModelApiDifferenceUpdate_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

@interface ImActorModelApiDifferenceUpdate : BSBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)updateHeader
              withByteArray:(IOSByteArray *)update;

- (IOSByteArray *)getUpdate;

- (jint)getUpdateHeader;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiDifferenceUpdate)

FOUNDATION_EXPORT void ImActorModelApiDifferenceUpdate_initWithInt_withByteArray_(ImActorModelApiDifferenceUpdate *self, jint updateHeader, IOSByteArray *update);

FOUNDATION_EXPORT ImActorModelApiDifferenceUpdate *new_ImActorModelApiDifferenceUpdate_initWithInt_withByteArray_(jint updateHeader, IOSByteArray *update) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiDifferenceUpdate_init(ImActorModelApiDifferenceUpdate *self);

FOUNDATION_EXPORT ImActorModelApiDifferenceUpdate *new_ImActorModelApiDifferenceUpdate_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiDifferenceUpdate)

#endif // _ImActorModelApiDifferenceUpdate_H_