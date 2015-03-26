//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/messages/ConversationActor.java
//

#ifndef _ImActorModelModulesMessagesConversationActor_H_
#define _ImActorModelModulesMessagesConversationActor_H_

@class AMAbsContent;
@class AMMessage;
@class AMPeer;
@class DKActorRef;
@class DKSyncKeyValue;
@class ImActorModelModulesMessagesEntityOutUnreadMessagesStorage;
@class ImActorModelModulesModules;
@protocol DKListEngine;
@protocol JavaUtilList;

#include "J2ObjC_header.h"
#include "im/actor/model/modules/utils/ModuleActor.h"

@interface ImActorModelModulesMessagesConversationActor : ImActorModelModulesUtilsModuleActor {
}

- (instancetype)initWithAMPeer:(AMPeer *)peer
withImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (void)preStart;

- (void)onReceiveWithId:(id)message;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesConversationActor)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesConversationActor)

@interface ImActorModelModulesMessagesConversationActor_MessageContentUpdated : NSObject {
}

- (instancetype)initWithLong:(jlong)rid
            withAMAbsContent:(AMAbsContent *)content;

- (jlong)getRid;

- (AMAbsContent *)getContent;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesConversationActor_MessageContentUpdated)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesConversationActor_MessageContentUpdated)

@interface ImActorModelModulesMessagesConversationActor_HistoryLoaded : NSObject {
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)messages;

- (id<JavaUtilList>)getMessages;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesConversationActor_HistoryLoaded)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesConversationActor_HistoryLoaded)

@interface ImActorModelModulesMessagesConversationActor_MessageReceived : NSObject {
}

- (instancetype)initWithLong:(jlong)date;

- (jlong)getDate;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesConversationActor_MessageReceived)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesConversationActor_MessageReceived)

@interface ImActorModelModulesMessagesConversationActor_MessageEncryptedReceived : NSObject {
}

- (instancetype)initWithLong:(jlong)rid;

- (jlong)getRid;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesConversationActor_MessageEncryptedReceived)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesConversationActor_MessageEncryptedReceived)

@interface ImActorModelModulesMessagesConversationActor_MessageRead : NSObject {
}

- (instancetype)initWithLong:(jlong)date;

- (jlong)getDate;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesConversationActor_MessageRead)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesConversationActor_MessageRead)

@interface ImActorModelModulesMessagesConversationActor_MessageEncryptedRead : NSObject {
}

- (instancetype)initWithLong:(jlong)rid;

- (jlong)getRid;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesConversationActor_MessageEncryptedRead)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesConversationActor_MessageEncryptedRead)

@interface ImActorModelModulesMessagesConversationActor_MessageSent : NSObject {
}

- (instancetype)initWithLong:(jlong)rid
                    withLong:(jlong)date;

- (jlong)getDate;

- (jlong)getRid;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesConversationActor_MessageSent)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesConversationActor_MessageSent)

@interface ImActorModelModulesMessagesConversationActor_MessageError : NSObject {
}

- (instancetype)initWithLong:(jlong)rid;

- (jlong)getRid;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesConversationActor_MessageError)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesConversationActor_MessageError)

@interface ImActorModelModulesMessagesConversationActor_MessagesDeleted : NSObject {
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)rids;

- (id<JavaUtilList>)getRids;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesConversationActor_MessagesDeleted)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesConversationActor_MessagesDeleted)

@interface ImActorModelModulesMessagesConversationActor_ClearConversation : NSObject {
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesConversationActor_ClearConversation)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesConversationActor_ClearConversation)

@interface ImActorModelModulesMessagesConversationActor_DeleteConversation : NSObject {
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesConversationActor_DeleteConversation)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesConversationActor_DeleteConversation)

#endif // _ImActorModelModulesMessagesConversationActor_H_