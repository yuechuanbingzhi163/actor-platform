//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/UserState.java
//

#ifndef _ImActorModelApiUserState_H_
#define _ImActorModelApiUserState_H_

#include "J2ObjC_header.h"
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, ImActorModelApiUserState) {
  ImActorModelApiUserState_REGISTERED = 0,
  ImActorModelApiUserState_EMAIL = 1,
  ImActorModelApiUserState_DELETED = 2,
};

@interface ImActorModelApiUserStateEnum : JavaLangEnum < NSCopying > {
}

- (instancetype)initWithInt:(jint)value
               withNSString:(NSString *)__name
                    withInt:(jint)__ordinal;

- (jint)getValue;

+ (ImActorModelApiUserStateEnum *)parseWithInt:(jint)value;

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *ImActorModelApiUserStateEnum_values();

+ (ImActorModelApiUserStateEnum *)valueOfWithNSString:(NSString *)name;

FOUNDATION_EXPORT ImActorModelApiUserStateEnum *ImActorModelApiUserStateEnum_valueOfWithNSString_(NSString *name);
- (id)copyWithZone:(NSZone *)zone;

@end

FOUNDATION_EXPORT BOOL ImActorModelApiUserStateEnum_initialized;
J2OBJC_STATIC_INIT(ImActorModelApiUserStateEnum)

FOUNDATION_EXPORT ImActorModelApiUserStateEnum *ImActorModelApiUserStateEnum_parseWithInt_(jint value);

FOUNDATION_EXPORT ImActorModelApiUserStateEnum *ImActorModelApiUserStateEnum_values_[];

#define ImActorModelApiUserStateEnum_REGISTERED ImActorModelApiUserStateEnum_values_[ImActorModelApiUserState_REGISTERED]
J2OBJC_ENUM_CONSTANT_GETTER(ImActorModelApiUserStateEnum, REGISTERED)

#define ImActorModelApiUserStateEnum_EMAIL ImActorModelApiUserStateEnum_values_[ImActorModelApiUserState_EMAIL]
J2OBJC_ENUM_CONSTANT_GETTER(ImActorModelApiUserStateEnum, EMAIL)

#define ImActorModelApiUserStateEnum_DELETED ImActorModelApiUserStateEnum_values_[ImActorModelApiUserState_DELETED]
J2OBJC_ENUM_CONSTANT_GETTER(ImActorModelApiUserStateEnum, DELETED)

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUserStateEnum)

#endif // _ImActorModelApiUserState_H_
