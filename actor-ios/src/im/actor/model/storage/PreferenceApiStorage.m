//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/storage/PreferenceApiStorage.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/storage/PreferenceApiStorage.h"
#include "im/actor/model/storage/PreferencesStorage.h"

@interface ImActorModelStoragePreferenceApiStorage () {
 @public
  id<ImActorModelStoragePreferencesStorage> preferencesStorage_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelStoragePreferenceApiStorage, preferencesStorage_, id<ImActorModelStoragePreferencesStorage>)

@implementation ImActorModelStoragePreferenceApiStorage

- (instancetype)initWithImActorModelStoragePreferencesStorage:(id<ImActorModelStoragePreferencesStorage>)preferencesStorage {
  if (self = [super init]) {
    ImActorModelStoragePreferenceApiStorage_set_preferencesStorage_(self, preferencesStorage);
  }
  return self;
}

- (jlong)getAuthKey {
  return [((id<ImActorModelStoragePreferencesStorage>) nil_chk(preferencesStorage_)) getLongWithNSString:@"auth_id" withLong:0];
}

- (void)saveAuthKeyWithLong:(jlong)key {
  [((id<ImActorModelStoragePreferencesStorage>) nil_chk(preferencesStorage_)) putLongWithNSString:@"auth_id" withLong:key];
}

- (void)dealloc {
  RELEASE_(preferencesStorage_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ImActorModelStoragePreferenceApiStorage *)other {
  [super copyAllFieldsTo:other];
  ImActorModelStoragePreferenceApiStorage_set_preferencesStorage_(other, preferencesStorage_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithImActorModelStoragePreferencesStorage:", "PreferenceApiStorage", NULL, 0x1, NULL },
    { "getAuthKey", NULL, "J", 0x1, NULL },
    { "saveAuthKeyWithLong:", "saveAuthKey", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "preferencesStorage_", NULL, 0x2, "Lim.actor.model.storage.PreferencesStorage;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelStoragePreferenceApiStorage = { 1, "PreferenceApiStorage", "im.actor.model.storage", NULL, 0x1, 3, methods, 1, fields, 0, NULL};
  return &_ImActorModelStoragePreferenceApiStorage;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelStoragePreferenceApiStorage)
