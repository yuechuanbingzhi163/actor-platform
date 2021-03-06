//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/TextMessage.java
//

#ifndef _APTextMessage_H_
#define _APTextMessage_H_

#include "J2ObjC_header.h"
#include "im/actor/model/api/Message.h"

@class APTextMessageEx;
@class BSBserValues;
@class BSBserWriter;
@protocol JavaUtilList;

@interface APTextMessage : APMessage

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)text
                withJavaUtilList:(id<JavaUtilList>)mentions
             withAPTextMessageEx:(APTextMessageEx *)ext;

- (APTextMessageEx *)getExt;

- (jint)getHeader;

- (id<JavaUtilList>)getMentions;

- (NSString *)getText;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APTextMessage)

FOUNDATION_EXPORT void APTextMessage_initWithNSString_withJavaUtilList_withAPTextMessageEx_(APTextMessage *self, NSString *text, id<JavaUtilList> mentions, APTextMessageEx *ext);

FOUNDATION_EXPORT APTextMessage *new_APTextMessage_initWithNSString_withJavaUtilList_withAPTextMessageEx_(NSString *text, id<JavaUtilList> mentions, APTextMessageEx *ext) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APTextMessage_init(APTextMessage *self);

FOUNDATION_EXPORT APTextMessage *new_APTextMessage_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APTextMessage)

typedef APTextMessage ImActorModelApiTextMessage;

#endif // _APTextMessage_H_
