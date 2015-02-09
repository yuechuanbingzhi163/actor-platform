//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/State.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/State.h"
#include "java/lang/IllegalArgumentException.h"

BOOL AMStateEnum_initialized = NO;

AMStateEnum *AMStateEnum_values_[4];

@implementation AMStateEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  return [super initWithNSString:__name withInt:__ordinal];
}

IOSObjectArray *AMStateEnum_values() {
  AMStateEnum_init();
  return [IOSObjectArray arrayWithObjects:AMStateEnum_values_ count:4 type:AMStateEnum_class_()];
}
+ (IOSObjectArray *)values {
  return AMStateEnum_values();
}

+ (AMStateEnum *)valueOfWithNSString:(NSString *)name {
  return AMStateEnum_valueOfWithNSString_(name);
}

AMStateEnum *AMStateEnum_valueOfWithNSString_(NSString *name) {
  AMStateEnum_init();
  for (int i = 0; i < 4; i++) {
    AMStateEnum *e = AMStateEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self retain];
}

+ (void)initialize {
  if (self == [AMStateEnum class]) {
    AMStateEnum_AUTH_START = [[AMStateEnum alloc] initWithNSString:@"AUTH_START" withInt:0];
    AMStateEnum_CODE_VALIDATION = [[AMStateEnum alloc] initWithNSString:@"CODE_VALIDATION" withInt:1];
    AMStateEnum_SIGN_UP = [[AMStateEnum alloc] initWithNSString:@"SIGN_UP" withInt:2];
    AMStateEnum_LOGGED_IN = [[AMStateEnum alloc] initWithNSString:@"LOGGED_IN" withInt:3];
    J2OBJC_SET_INITIALIZED(AMStateEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:", "init", NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "AUTH_START", "AUTH_START", 0x4019, "Lim.actor.model.State;", &AMStateEnum_AUTH_START,  },
    { "CODE_VALIDATION", "CODE_VALIDATION", 0x4019, "Lim.actor.model.State;", &AMStateEnum_CODE_VALIDATION,  },
    { "SIGN_UP", "SIGN_UP", 0x4019, "Lim.actor.model.State;", &AMStateEnum_SIGN_UP,  },
    { "LOGGED_IN", "LOGGED_IN", 0x4019, "Lim.actor.model.State;", &AMStateEnum_LOGGED_IN,  },
  };
  static const char *superclass_type_args[] = {"Lim.actor.model.State;"};
  static const J2ObjcClassInfo _AMStateEnum = { 1, "State", "im.actor.model", NULL, 0x4011, 1, methods, 4, fields, 1, superclass_type_args};
  return &_AMStateEnum;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMStateEnum)
