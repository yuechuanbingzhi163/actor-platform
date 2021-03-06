//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/modules/presence/PresenceActor.java
//

#ifndef _ImActorModelModulesPresencePresenceActor_H_
#define _ImActorModelModulesPresencePresenceActor_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/utils/ModuleActor.h"

@class AMPeer;
@class DKActorRef;
@class ImActorModelModulesModules;

@interface ImActorModelModulesPresencePresenceActor : ImActorModelModulesUtilsModuleActor

#pragma mark Public

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

+ (DKActorRef *)getWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (void)onReceiveWithId:(id)message;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor)

FOUNDATION_EXPORT DKActorRef *ImActorModelModulesPresencePresenceActor_getWithImActorModelModulesModules_(ImActorModelModulesModules *messenger);

FOUNDATION_EXPORT void ImActorModelModulesPresencePresenceActor_initWithImActorModelModulesModules_(ImActorModelModulesPresencePresenceActor *self, ImActorModelModulesModules *messenger);

FOUNDATION_EXPORT ImActorModelModulesPresencePresenceActor *new_ImActorModelModulesPresencePresenceActor_initWithImActorModelModulesModules_(ImActorModelModulesModules *messenger) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor)

@interface ImActorModelModulesPresencePresenceActor_UserOnline : NSObject

#pragma mark Public

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)updateDate;

- (jboolean)isEqual:(id)o;

- (jint)getUid;

- (jlong)getUpdateDate;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor_UserOnline)

FOUNDATION_EXPORT void ImActorModelModulesPresencePresenceActor_UserOnline_initWithInt_withLong_(ImActorModelModulesPresencePresenceActor_UserOnline *self, jint uid, jlong updateDate);

FOUNDATION_EXPORT ImActorModelModulesPresencePresenceActor_UserOnline *new_ImActorModelModulesPresencePresenceActor_UserOnline_initWithInt_withLong_(jint uid, jlong updateDate) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor_UserOnline)

@interface ImActorModelModulesPresencePresenceActor_UserOffline : NSObject

#pragma mark Public

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)updateDate;

- (jboolean)isEqual:(id)o;

- (jint)getUid;

- (jlong)getUpdateDate;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor_UserOffline)

FOUNDATION_EXPORT void ImActorModelModulesPresencePresenceActor_UserOffline_initWithInt_withLong_(ImActorModelModulesPresencePresenceActor_UserOffline *self, jint uid, jlong updateDate);

FOUNDATION_EXPORT ImActorModelModulesPresencePresenceActor_UserOffline *new_ImActorModelModulesPresencePresenceActor_UserOffline_initWithInt_withLong_(jint uid, jlong updateDate) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor_UserOffline)

@interface ImActorModelModulesPresencePresenceActor_UserLastSeen : NSObject

#pragma mark Public

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)date
                   withLong:(jlong)updateDate;

- (jboolean)isEqual:(id)o;

- (jlong)getDate;

- (jint)getUid;

- (jlong)getUpdateDate;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor_UserLastSeen)

FOUNDATION_EXPORT void ImActorModelModulesPresencePresenceActor_UserLastSeen_initWithInt_withLong_withLong_(ImActorModelModulesPresencePresenceActor_UserLastSeen *self, jint uid, jlong date, jlong updateDate);

FOUNDATION_EXPORT ImActorModelModulesPresencePresenceActor_UserLastSeen *new_ImActorModelModulesPresencePresenceActor_UserLastSeen_initWithInt_withLong_withLong_(jint uid, jlong date, jlong updateDate) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor_UserLastSeen)

@interface ImActorModelModulesPresencePresenceActor_GroupOnline : NSObject

#pragma mark Public

- (instancetype)initWithInt:(jint)gid
                    withInt:(jint)count
                   withLong:(jlong)updateDate;

- (jboolean)isEqual:(id)o;

- (jint)getCount;

- (jint)getGid;

- (jlong)getUpdateDate;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor_GroupOnline)

FOUNDATION_EXPORT void ImActorModelModulesPresencePresenceActor_GroupOnline_initWithInt_withInt_withLong_(ImActorModelModulesPresencePresenceActor_GroupOnline *self, jint gid, jint count, jlong updateDate);

FOUNDATION_EXPORT ImActorModelModulesPresencePresenceActor_GroupOnline *new_ImActorModelModulesPresencePresenceActor_GroupOnline_initWithInt_withInt_withLong_(jint gid, jint count, jlong updateDate) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor_GroupOnline)

@interface ImActorModelModulesPresencePresenceActor_Subscribe : NSObject

#pragma mark Public

- (instancetype)initWithAMPeer:(AMPeer *)peer;

- (AMPeer *)getPeer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor_Subscribe)

FOUNDATION_EXPORT void ImActorModelModulesPresencePresenceActor_Subscribe_initWithAMPeer_(ImActorModelModulesPresencePresenceActor_Subscribe *self, AMPeer *peer);

FOUNDATION_EXPORT ImActorModelModulesPresencePresenceActor_Subscribe *new_ImActorModelModulesPresencePresenceActor_Subscribe_initWithAMPeer_(AMPeer *peer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor_Subscribe)

@interface ImActorModelModulesPresencePresenceActor_SessionCreated : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor_SessionCreated)

FOUNDATION_EXPORT void ImActorModelModulesPresencePresenceActor_SessionCreated_init(ImActorModelModulesPresencePresenceActor_SessionCreated *self);

FOUNDATION_EXPORT ImActorModelModulesPresencePresenceActor_SessionCreated *new_ImActorModelModulesPresencePresenceActor_SessionCreated_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor_SessionCreated)

#endif // _ImActorModelModulesPresencePresenceActor_H_
