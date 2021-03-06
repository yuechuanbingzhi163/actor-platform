//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/droidkit/actors/ThreadPriority.java
//

#ifndef _DKThreadPriority_H_
#define _DKThreadPriority_H_

#include "J2ObjC_header.h"
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, DKThreadPriority) {
  DKThreadPriority_HIGH = 0,
  DKThreadPriority_NORMAL = 1,
  DKThreadPriority_LOW = 2,
};

@interface DKThreadPriorityEnum : JavaLangEnum < NSCopying >

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *DKThreadPriorityEnum_values();

+ (DKThreadPriorityEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT DKThreadPriorityEnum *DKThreadPriorityEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(DKThreadPriorityEnum)

FOUNDATION_EXPORT DKThreadPriorityEnum *DKThreadPriorityEnum_values_[];

#define DKThreadPriorityEnum_HIGH DKThreadPriorityEnum_values_[DKThreadPriority_HIGH]
J2OBJC_ENUM_CONSTANT_GETTER(DKThreadPriorityEnum, HIGH)

#define DKThreadPriorityEnum_NORMAL DKThreadPriorityEnum_values_[DKThreadPriority_NORMAL]
J2OBJC_ENUM_CONSTANT_GETTER(DKThreadPriorityEnum, NORMAL)

#define DKThreadPriorityEnum_LOW DKThreadPriorityEnum_values_[DKThreadPriority_LOW]
J2OBJC_ENUM_CONSTANT_GETTER(DKThreadPriorityEnum, LOW)

J2OBJC_TYPE_LITERAL_HEADER(DKThreadPriorityEnum)

typedef DKThreadPriorityEnum ImActorModelDroidkitActorsThreadPriorityEnum;

#endif // _DKThreadPriority_H_
