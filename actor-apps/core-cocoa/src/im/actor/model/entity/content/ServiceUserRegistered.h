//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/content/ServiceUserRegistered.java
//

#ifndef _AMServiceUserRegistered_H_
#define _AMServiceUserRegistered_H_

#include "J2ObjC_header.h"
#include "im/actor/model/entity/content/ServiceContent.h"

@class ImActorModelEntityContentInternalContentRemoteContainer;

@interface AMServiceUserRegistered : AMServiceContent

#pragma mark Public

- (instancetype)initWithImActorModelEntityContentInternalContentRemoteContainer:(ImActorModelEntityContentInternalContentRemoteContainer *)contentContainer;

+ (AMServiceUserRegistered *)create;

@end

J2OBJC_EMPTY_STATIC_INIT(AMServiceUserRegistered)

FOUNDATION_EXPORT AMServiceUserRegistered *AMServiceUserRegistered_create();

FOUNDATION_EXPORT void AMServiceUserRegistered_initWithImActorModelEntityContentInternalContentRemoteContainer_(AMServiceUserRegistered *self, ImActorModelEntityContentInternalContentRemoteContainer *contentContainer);

FOUNDATION_EXPORT AMServiceUserRegistered *new_AMServiceUserRegistered_initWithImActorModelEntityContentInternalContentRemoteContainer_(ImActorModelEntityContentInternalContentRemoteContainer *contentContainer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMServiceUserRegistered)

typedef AMServiceUserRegistered ImActorModelEntityContentServiceUserRegistered;

#endif // _AMServiceUserRegistered_H_
