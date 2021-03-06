//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/updates/UpdateMessage.java
//

#ifndef _APUpdateMessage_H_
#define _APUpdateMessage_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

@class APMessage;
@class APPeer;
@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APUpdateMessage_HEADER 55

@interface APUpdateMessage : APUpdate

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithAPPeer:(APPeer *)peer
                       withInt:(jint)senderUid
                      withLong:(jlong)date
                      withLong:(jlong)rid
                 withAPMessage:(APMessage *)message;

+ (APUpdateMessage *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jlong)getDate;

- (jint)getHeaderKey;

- (APMessage *)getMessage;

- (APPeer *)getPeer;

- (jlong)getRid;

- (jint)getSenderUid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APUpdateMessage)

J2OBJC_STATIC_FIELD_GETTER(APUpdateMessage, HEADER, jint)

FOUNDATION_EXPORT APUpdateMessage *APUpdateMessage_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APUpdateMessage_initWithAPPeer_withInt_withLong_withLong_withAPMessage_(APUpdateMessage *self, APPeer *peer, jint senderUid, jlong date, jlong rid, APMessage *message);

FOUNDATION_EXPORT APUpdateMessage *new_APUpdateMessage_initWithAPPeer_withInt_withLong_withLong_withAPMessage_(APPeer *peer, jint senderUid, jlong date, jlong rid, APMessage *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APUpdateMessage_init(APUpdateMessage *self);

FOUNDATION_EXPORT APUpdateMessage *new_APUpdateMessage_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APUpdateMessage)

typedef APUpdateMessage ImActorModelApiUpdatesUpdateMessage;

#endif // _APUpdateMessage_H_
