//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Analytics.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Analytics.java"

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/AnalyticsProvider.h"
#include "im/actor/model/Configuration.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/PeerType.h"
#include "im/actor/model/modules/Analytics.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Modules.h"
#include "java/lang/Long.h"
#include "java/util/HashMap.h"

@interface ImActorModelModulesAnalytics () {
 @public
  id<AMAnalyticsProvider> analyticsProvider_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesAnalytics, analyticsProvider_, id<AMAnalyticsProvider>)

static NSString *ImActorModelModulesAnalytics_EVENT_APP_VISIBLE_ = 
#line 14
@"App Visible";
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesAnalytics, EVENT_APP_VISIBLE_, NSString *)

static NSString *ImActorModelModulesAnalytics_EVENT_APP_HIDDEN_ = 
#line 15
@"App Hidden";
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesAnalytics, EVENT_APP_HIDDEN_, NSString *)

static NSString *ImActorModelModulesAnalytics_DIALOGS_OPEN_ = 
#line 17
@"Dialogs Open";
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesAnalytics, DIALOGS_OPEN_, NSString *)

static NSString *ImActorModelModulesAnalytics_DIALOGS_CLOSED_ = 
#line 18
@"Dialogs Closed";
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesAnalytics, DIALOGS_CLOSED_, NSString *)

static NSString *ImActorModelModulesAnalytics_CHAT_OPEN_ = 
#line 20
@"Chat Open";
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesAnalytics, CHAT_OPEN_, NSString *)

static NSString *ImActorModelModulesAnalytics_CHAT_CLOSED_ = 
#line 21
@"Chat Closed";
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesAnalytics, CHAT_CLOSED_, NSString *)

static NSString *ImActorModelModulesAnalytics_PROFILE_OPEN_ = 
#line 23
@"Profile Open";
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesAnalytics, PROFILE_OPEN_, NSString *)

static NSString *ImActorModelModulesAnalytics_PROFILE_CLOSED_ = 
#line 24
@"Profile Closed";
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesAnalytics, PROFILE_CLOSED_, NSString *)


#line 12
@implementation ImActorModelModulesAnalytics


#line 28
- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  ImActorModelModulesAnalytics_initWithImActorModelModulesModules_(self, modules);
  return self;
}


#line 34
- (void)onLoggedOutWithNSString:(NSString *)deviceId {
  if (analyticsProvider_ != nil) {
    [analyticsProvider_ onLoggedOutWithNSString:deviceId];
  }
}

- (void)onLoggedInWithNSString:(NSString *)deviceId
                       withInt:(jint)uid
         withJavaLangLongArray:(IOSObjectArray *)phoneNumbers
                  withNSString:(NSString *)userName {
  if (analyticsProvider_ != nil) {
    [analyticsProvider_ onLoggedInWithNSString:deviceId withInt:uid withLong:[((JavaLangLong *) nil_chk(IOSObjectArray_Get(nil_chk(phoneNumbers), 0))) longLongValue] withNSString:userName];
  }
}


#line 46
- (void)onLoggedInPerformedWithNSString:(NSString *)deviceId
                                withInt:(jint)uid
                  withJavaLangLongArray:(IOSObjectArray *)phoneNumber
                           withNSString:(NSString *)userName {
  if (analyticsProvider_ != nil) {
    [analyticsProvider_ onLoggedInPerformedWithNSString:deviceId withInt:uid withLong:[((JavaLangLong *) nil_chk(IOSObjectArray_Get(nil_chk(phoneNumber), 0))) longLongValue] withNSString:userName];
  }
}


#line 52
- (void)onDialogsOpen {
  [self trackWithNSString:ImActorModelModulesAnalytics_DIALOGS_OPEN_];
}

- (void)onDialogsClosed {
  [self trackWithNSString:ImActorModelModulesAnalytics_DIALOGS_CLOSED_];
}

- (void)onChatOpenWithAMPeer:(AMPeer *)peer {
  [self trackWithNSString:ImActorModelModulesAnalytics_CHAT_OPEN_ withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ @"Type", [((AMPeerTypeEnum *) nil_chk([((AMPeer *) nil_chk(peer)) getPeerType])) description], @"Id", JreStrcat("I", [peer getPeerId]) } count:4 type:NSString_class_()]];
}

- (void)onChatClosedWithAMPeer:(AMPeer *)peer {
  [self trackWithNSString:ImActorModelModulesAnalytics_CHAT_CLOSED_ withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ @"Type", [((AMPeerTypeEnum *) nil_chk([((AMPeer *) nil_chk(peer)) getPeerType])) description], @"Id", JreStrcat("I", [peer getPeerId]) } count:4 type:NSString_class_()]];
}

- (void)onProfileOpenWithInt:(jint)uid {
  [self trackWithNSString:ImActorModelModulesAnalytics_PROFILE_OPEN_ withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ @"Id", JreStrcat("I", uid) } count:2 type:NSString_class_()]];
}

- (void)onProfileClosedWithInt:(jint)uid {
  [self trackWithNSString:ImActorModelModulesAnalytics_PROFILE_CLOSED_ withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ @"Id", JreStrcat("I", uid) } count:2 type:NSString_class_()]];
}

- (void)trackAppVisible {
  [self trackWithNSString:ImActorModelModulesAnalytics_EVENT_APP_VISIBLE_];
}

- (void)trackAppHidden {
  [self trackWithNSString:ImActorModelModulesAnalytics_EVENT_APP_HIDDEN_];
}

- (void)trackAuthPhoneOpen {
  [self trackWithNSString:@"Auth: Phone Opened"];
}

- (void)trackAuthCountryOpen {
  [self trackWithNSString:@"Auth: Phone Country Opened"];
}

- (void)trackAuthCountryClosed {
  [self trackWithNSString:@"Auth: Phone Country Closed"];
}

- (void)trackAuthCountryPickedWithNSString:(NSString *)country {
  [self trackWithNSString:@"Auth: Phone Country Picked" withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ @"Country", country } count:2 type:NSString_class_()]];
}

- (void)trackAuthPhoneTypeWithNSString:(NSString *)newValue {
  [self trackWithNSString:JreStrcat("$$", @"Auth: Phone Typed: ", newValue)];
}

- (void)trackAuthPhoneInfoOpen {
  [self trackWithNSString:@"Auth: Phone Info Opened"];
}

- (void)trackCodeRequest {
  [self trackWithNSString:@"Auth: Press code request"];
}

- (void)trackCodeRequestWithLong:(jlong)phone {
  [self trackWithNSString:@"Auth: Code request" withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ @"Phone", JreStrcat("J", phone) } count:2 type:NSString_class_()]];
}

- (void)trackActionErrorWithNSString:(NSString *)action
                        withNSString:(NSString *)tag
                        withNSString:(NSString *)message {
  [self trackWithNSString:JreStrcat("$$", action, @" error") withNSStringArray:[IOSObjectArray newArrayWithObjects:(id[]){ @"Tag", tag, @"Message", message } count:4 type:NSString_class_()]];
}


#line 120
- (void)trackActionSuccessWithNSString:(NSString *)action {
  [self trackWithNSString:JreStrcat("$$", action, @" success")];
}

- (void)trackActionTryAgainWithNSString:(NSString *)action {
  [self trackWithNSString:JreStrcat("$$", action, @" try again")];
}

- (void)trackActionCancelWithNSString:(NSString *)action {
  [self trackWithNSString:JreStrcat("$$", action, @" cancel")];
}

- (void)trackWithNSString:(NSString *)event {
  if (analyticsProvider_ != nil) {
    [analyticsProvider_ trackEventWithNSString:event];
  }
}

- (void)trackWithNSString:(NSString *)event
        withNSStringArray:(IOSObjectArray *)args {
  if (analyticsProvider_ != nil) {
    JavaUtilHashMap *params = new_JavaUtilHashMap_init();
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(args))->size_; i += 2) {
      (void) [params putWithId:IOSObjectArray_Get(args, i) withId:IOSObjectArray_Get(args, i + 1)];
    }
    [analyticsProvider_ trackEventWithNSString:event withJavaUtilHashMap:params];
  }
}

@end


#line 28
void ImActorModelModulesAnalytics_initWithImActorModelModulesModules_(ImActorModelModulesAnalytics *self, ImActorModelModulesModules *modules) {
  (void) ImActorModelModulesBaseModule_initWithImActorModelModulesModules_(self, modules);
  
#line 31
  self->analyticsProvider_ = [((AMConfiguration *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules)) getConfiguration])) getAnalyticsProvider];
}


#line 28
ImActorModelModulesAnalytics *new_ImActorModelModulesAnalytics_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) {
  ImActorModelModulesAnalytics *self = [ImActorModelModulesAnalytics alloc];
  ImActorModelModulesAnalytics_initWithImActorModelModulesModules_(self, modules);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesAnalytics)