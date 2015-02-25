//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/ConfigurationBuilder.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/Configuration.h"
#include "im/actor/model/ConfigurationBuilder.h"
#include "im/actor/model/LocaleProvider.h"
#include "im/actor/model/LogCallback.h"
#include "im/actor/model/MainThread.h"
#include "im/actor/model/Networking.h"
#include "im/actor/model/Storage.h"
#include "im/actor/model/Threading.h"
#include "im/actor/model/network/ConnectionEndpoint.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/util/ArrayList.h"

@interface AMConfigurationBuilder () {
 @public
  id<AMLogCallback> log_;
  id<AMNetworking> networking_;
  id<AMThreading> threading_;
  id<AMMainThread> mainThread_;
  id<AMStorage> enginesFactory_;
  JavaUtilArrayList *endpoints_;
  jboolean isUploadFilePersist_;
  id<AMLocaleProvider> localeProvider_;
}
@end

J2OBJC_FIELD_SETTER(AMConfigurationBuilder, log_, id<AMLogCallback>)
J2OBJC_FIELD_SETTER(AMConfigurationBuilder, networking_, id<AMNetworking>)
J2OBJC_FIELD_SETTER(AMConfigurationBuilder, threading_, id<AMThreading>)
J2OBJC_FIELD_SETTER(AMConfigurationBuilder, mainThread_, id<AMMainThread>)
J2OBJC_FIELD_SETTER(AMConfigurationBuilder, enginesFactory_, id<AMStorage>)
J2OBJC_FIELD_SETTER(AMConfigurationBuilder, endpoints_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(AMConfigurationBuilder, localeProvider_, id<AMLocaleProvider>)

@implementation AMConfigurationBuilder

- (AMConfigurationBuilder *)setLog:(id<AMLogCallback>)log {
  self->log_ = log;
  return self;
}

- (AMConfigurationBuilder *)setNetworking:(id<AMNetworking>)networking {
  self->networking_ = networking;
  return self;
}

- (AMConfigurationBuilder *)setThreading:(id<AMThreading>)threading {
  self->threading_ = threading;
  return self;
}

- (AMConfigurationBuilder *)setStorage:(id<AMStorage>)storage {
  self->enginesFactory_ = storage;
  return self;
}

- (AMConfigurationBuilder *)setLocale:(id<AMLocaleProvider>)localeProvider {
  self->localeProvider_ = localeProvider;
  return self;
}

- (AMConfigurationBuilder *)addEndpoint:(NSString *)url {
  NSString *scheme = [((NSString *) nil_chk([url substring:0 endIndex:[((NSString *) nil_chk(url)) indexOfString:@":"]])) lowercaseString];
  NSString *host = [url substring:[url indexOfString:@"://"] + ((jint) [@"://" length])];
  if ([((NSString *) nil_chk(host)) hasSuffix:@"/"]) {
    host = [host substring:0 endIndex:((jint) [host length]) - 1];
  }
  jint port = -1;
  if ([((NSString *) nil_chk(host)) contains:@":"]) {
    IOSObjectArray *parts = [host split:@":"];
    host = IOSObjectArray_Get(nil_chk(parts), 0);
    port = JavaLangInteger_parseIntWithNSString_(IOSObjectArray_Get(parts, 1));
  }
  if ([((NSString *) nil_chk(scheme)) isEqual:@"ssl"] || [scheme isEqual:@"tls"]) {
    if (port <= 0) {
      port = 443;
    }
    [((JavaUtilArrayList *) nil_chk(endpoints_)) addWithId:[[AMConnectionEndpoint alloc] initWithNSString:host withInt:port withAMConnectionEndpoint_TypeEnum:AMConnectionEndpoint_TypeEnum_get_TCP_TLS()]];
  }
  else if ([scheme isEqual:@"tcp"]) {
    if (port <= 0) {
      port = 80;
    }
    [((JavaUtilArrayList *) nil_chk(endpoints_)) addWithId:[[AMConnectionEndpoint alloc] initWithNSString:host withInt:port withAMConnectionEndpoint_TypeEnum:AMConnectionEndpoint_TypeEnum_get_TCP()]];
  }
  else if ([scheme isEqual:@"ws"]) {
    if (port <= 0) {
      port = 80;
    }
    [((JavaUtilArrayList *) nil_chk(endpoints_)) addWithId:[[AMConnectionEndpoint alloc] initWithNSString:host withInt:port withAMConnectionEndpoint_TypeEnum:AMConnectionEndpoint_TypeEnum_get_WS()]];
  }
  else if ([scheme isEqual:@"wss"]) {
    if (port <= 0) {
      port = 443;
    }
    [((JavaUtilArrayList *) nil_chk(endpoints_)) addWithId:[[AMConnectionEndpoint alloc] initWithNSString:host withInt:port withAMConnectionEndpoint_TypeEnum:AMConnectionEndpoint_TypeEnum_get_WS_TLS()]];
  }
  else {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:JreStrcat("$$", @"Unknown scheme type: ", scheme)];
  }
  return self;
}

- (AMConfigurationBuilder *)setUploadFilePersist:(jboolean)isUploadFilePersist {
  self->isUploadFilePersist_ = isUploadFilePersist;
  return self;
}

- (AMConfigurationBuilder *)setMainThread:(id<AMMainThread>)mainThread {
  self->mainThread_ = mainThread;
  return self;
}

- (AMConfiguration *)build {
  if (networking_ == nil) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:@"Networking is not set"];
  }
  if (threading_ == nil) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:@"Threading is not set"];
  }
  if (mainThread_ == nil) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:@"Main Thread is not set"];
  }
  if (enginesFactory_ == nil) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:@"Storage not set"];
  }
  if ([((JavaUtilArrayList *) nil_chk(endpoints_)) size] == 0) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:@"Endpoints not set"];
  }
  if (localeProvider_ == nil) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:@"Locale Provider not set"];
  }
  return [[AMConfiguration alloc] initWithAMNetworking:networking_ withAMConnectionEndpointArray:[endpoints_ toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[endpoints_ size] type:AMConnectionEndpoint_class_()]] withAMThreading:threading_ withAMMainThread:mainThread_ withAMStorage:enginesFactory_ withAMLogCallback:log_ withBoolean:isUploadFilePersist_ withAMLocaleProvider:localeProvider_];
}

- (instancetype)init {
  if (self = [super init]) {
    endpoints_ = [[JavaUtilArrayList alloc] init];
  }
  return self;
}

- (void)copyAllFieldsTo:(AMConfigurationBuilder *)other {
  [super copyAllFieldsTo:other];
  other->log_ = log_;
  other->networking_ = networking_;
  other->threading_ = threading_;
  other->mainThread_ = mainThread_;
  other->enginesFactory_ = enginesFactory_;
  other->endpoints_ = endpoints_;
  other->isUploadFilePersist_ = isUploadFilePersist_;
  other->localeProvider_ = localeProvider_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMConfigurationBuilder)