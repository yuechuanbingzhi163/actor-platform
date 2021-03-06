//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/Contact.java
//

#ifndef _AMContact_H_
#define _AMContact_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/engine/ListEngineItem.h"

@class AMAvatar;
@class BSBserValues;
@class BSBserWriter;
@protocol BSBserCreator;

@interface AMContact : BSBserObject < DKListEngineItem >

#pragma mark Public

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)sortKey
               withAMAvatar:(AMAvatar *)avatar
               withNSString:(NSString *)name;

- (AMAvatar *)getAvatar;

- (jlong)getEngineId;

- (NSString *)getEngineSearch;

- (jlong)getEngineSort;

- (NSString *)getName;

- (jint)getUid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_STATIC_INIT(AMContact)

FOUNDATION_EXPORT id<BSBserCreator> AMContact_CREATOR_;
J2OBJC_STATIC_FIELD_GETTER(AMContact, CREATOR_, id<BSBserCreator>)

FOUNDATION_EXPORT void AMContact_initWithInt_withLong_withAMAvatar_withNSString_(AMContact *self, jint uid, jlong sortKey, AMAvatar *avatar, NSString *name);

FOUNDATION_EXPORT AMContact *new_AMContact_initWithInt_withLong_withAMAvatar_withNSString_(jint uid, jlong sortKey, AMAvatar *avatar, NSString *name) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMContact)

typedef AMContact ImActorModelEntityContact;

#endif // _AMContact_H_
