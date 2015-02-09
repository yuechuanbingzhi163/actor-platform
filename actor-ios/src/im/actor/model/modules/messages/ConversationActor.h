//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/messages/ConversationActor.java
//

#ifndef _ImActorModelModulesMessagesConversationActor_H_
#define _ImActorModelModulesMessagesConversationActor_H_

@class AMMessenger;
@class DAActorRef;
@class ImActorModelEntityMessage;
@class ImActorModelEntityPeer;
@protocol ImActorModelMvvmListEngine;

#include "J2ObjC_header.h"
#include "com/droidkit/actors/Actor.h"

@interface ImActorModelModulesMessagesConversationActor : DAActor {
}

- (instancetype)initWithImActorModelEntityPeer:(ImActorModelEntityPeer *)peer
                               withAMMessenger:(AMMessenger *)messenger;

- (void)preStart;

- (void)onReceiveWithId:(id)message;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesConversationActor)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesConversationActor)

#endif // _ImActorModelModulesMessagesConversationActor_H_
