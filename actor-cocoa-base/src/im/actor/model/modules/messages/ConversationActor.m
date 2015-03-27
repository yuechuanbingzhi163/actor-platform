//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/messages/ConversationActor.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/engine/ListEngine.h"
#include "im/actor/model/droidkit/engine/SyncKeyValue.h"
#include "im/actor/model/entity/Message.h"
#include "im/actor/model/entity/MessageState.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/messages/ConversationActor.h"
#include "im/actor/model/modules/messages/DialogsActor.h"
#include "im/actor/model/modules/messages/entity/OutUnreadMessage.h"
#include "im/actor/model/modules/messages/entity/OutUnreadMessagesStorage.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "java/io/IOException.h"
#include "java/lang/Long.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onInMessageWithAMMessage_(ImActorModelModulesMessagesConversationActor *self, AMMessage *message);
__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onMessageContentUpdatedWithLong_withAMAbsContent_(ImActorModelModulesMessagesConversationActor *self, jlong rid, AMAbsContent *content);
__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onMessageSentWithLong_withLong_(ImActorModelModulesMessagesConversationActor *self, jlong rid, jlong date);
__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onMessageErrorWithLong_(ImActorModelModulesMessagesConversationActor *self, jlong rid);
__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onMessagePlainReadWithLong_(ImActorModelModulesMessagesConversationActor *self, jlong date);
__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onMessagePlainReceivedWithLong_(ImActorModelModulesMessagesConversationActor *self, jlong date);
__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onMessageEncryptedReceivedWithLong_(ImActorModelModulesMessagesConversationActor *self, jlong rid);
__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onMessageEncryptedReadWithLong_(ImActorModelModulesMessagesConversationActor *self, jlong rid);
__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onMessagesDeletedWithJavaUtilList_(ImActorModelModulesMessagesConversationActor *self, id<JavaUtilList> rids);
__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onClearConversation(ImActorModelModulesMessagesConversationActor *self);
__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onDeleteConversation(ImActorModelModulesMessagesConversationActor *self);
__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_onHistoryLoadedWithJavaUtilList_(ImActorModelModulesMessagesConversationActor *self, id<JavaUtilList> history);
__attribute__((unused)) static void ImActorModelModulesMessagesConversationActor_savePending(ImActorModelModulesMessagesConversationActor *self);

@interface ImActorModelModulesMessagesConversationActor () {
 @public
  AMPeer *peer_;
  id<DKListEngine> messages_;
  ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *messagesStorage_;
  DKActorRef *dialogsActor_;
  DKSyncKeyValue *pendingKeyValue_;
}

- (void)onInMessageWithAMMessage:(AMMessage *)message;

- (void)onMessageContentUpdatedWithLong:(jlong)rid
                       withAMAbsContent:(AMAbsContent *)content;

- (void)onMessageSentWithLong:(jlong)rid
                     withLong:(jlong)date;

- (void)onMessageErrorWithLong:(jlong)rid;

- (void)onMessagePlainReadWithLong:(jlong)date;

- (void)onMessagePlainReceivedWithLong:(jlong)date;

- (void)onMessageEncryptedReceivedWithLong:(jlong)rid;

- (void)onMessageEncryptedReadWithLong:(jlong)rid;

- (void)onMessagesDeletedWithJavaUtilList:(id<JavaUtilList>)rids;

- (void)onClearConversation;

- (void)onDeleteConversation;

- (void)onHistoryLoadedWithJavaUtilList:(id<JavaUtilList>)history;

- (void)savePending;
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesConversationActor, peer_, AMPeer *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesConversationActor, messages_, id<DKListEngine>)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesConversationActor, messagesStorage_, ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesConversationActor, dialogsActor_, DKActorRef *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesConversationActor, pendingKeyValue_, DKSyncKeyValue *)

@interface ImActorModelModulesMessagesConversationActor_MessageContentUpdated () {
 @public
  jlong rid_;
  AMAbsContent *content_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesConversationActor_MessageContentUpdated, content_, AMAbsContent *)

@interface ImActorModelModulesMessagesConversationActor_HistoryLoaded () {
 @public
  id<JavaUtilList> messages_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesConversationActor_HistoryLoaded, messages_, id<JavaUtilList>)

@interface ImActorModelModulesMessagesConversationActor_MessageReceived () {
 @public
  jlong date_;
}
@end

@interface ImActorModelModulesMessagesConversationActor_MessageEncryptedReceived () {
 @public
  jlong rid_;
}
@end

@interface ImActorModelModulesMessagesConversationActor_MessageRead () {
 @public
  jlong date_;
}
@end

@interface ImActorModelModulesMessagesConversationActor_MessageEncryptedRead () {
 @public
  jlong rid_;
}
@end

@interface ImActorModelModulesMessagesConversationActor_MessageSent () {
 @public
  jlong rid_;
  jlong date_;
}
@end

@interface ImActorModelModulesMessagesConversationActor_MessageError () {
 @public
  jlong rid_;
}
@end

@interface ImActorModelModulesMessagesConversationActor_MessagesDeleted () {
 @public
  id<JavaUtilList> rids_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesConversationActor_MessagesDeleted, rids_, id<JavaUtilList>)

@implementation ImActorModelModulesMessagesConversationActor

- (instancetype)initWithAMPeer:(AMPeer *)peer
withImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  if (self = [super initWithImActorModelModulesModules:messenger]) {
    self->peer_ = peer;
    self->pendingKeyValue_ = [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(messenger)) getMessagesModule])) getConversationPending];
  }
  return self;
}

- (void)preStart {
  messages_ = [self messagesWithAMPeer:peer_];
  messagesStorage_ = [[ImActorModelModulesMessagesEntityOutUnreadMessagesStorage alloc] init];
  IOSByteArray *data = [((DKSyncKeyValue *) nil_chk(pendingKeyValue_)) getWithLong:[((AMPeer *) nil_chk(peer_)) getUnuqueId]];
  if (data != nil) {
    @try {
      messagesStorage_ = ImActorModelModulesMessagesEntityOutUnreadMessagesStorage_fromBytesWithByteArray_(data);
    }
    @catch (JavaIoIOException *e) {
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    }
  }
  dialogsActor_ = [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) getDialogsActor];
}

- (void)onInMessageWithAMMessage:(AMMessage *)message {
  ImActorModelModulesMessagesConversationActor_onInMessageWithAMMessage_(self, message);
}

- (void)onMessageContentUpdatedWithLong:(jlong)rid
                       withAMAbsContent:(AMAbsContent *)content {
  ImActorModelModulesMessagesConversationActor_onMessageContentUpdatedWithLong_withAMAbsContent_(self, rid, content);
}

- (void)onMessageSentWithLong:(jlong)rid
                     withLong:(jlong)date {
  ImActorModelModulesMessagesConversationActor_onMessageSentWithLong_withLong_(self, rid, date);
}

- (void)onMessageErrorWithLong:(jlong)rid {
  ImActorModelModulesMessagesConversationActor_onMessageErrorWithLong_(self, rid);
}

- (void)onMessagePlainReadWithLong:(jlong)date {
  ImActorModelModulesMessagesConversationActor_onMessagePlainReadWithLong_(self, date);
}

- (void)onMessagePlainReceivedWithLong:(jlong)date {
  ImActorModelModulesMessagesConversationActor_onMessagePlainReceivedWithLong_(self, date);
}

- (void)onMessageEncryptedReceivedWithLong:(jlong)rid {
  ImActorModelModulesMessagesConversationActor_onMessageEncryptedReceivedWithLong_(self, rid);
}

- (void)onMessageEncryptedReadWithLong:(jlong)rid {
  ImActorModelModulesMessagesConversationActor_onMessageEncryptedReadWithLong_(self, rid);
}

- (void)onMessagesDeletedWithJavaUtilList:(id<JavaUtilList>)rids {
  ImActorModelModulesMessagesConversationActor_onMessagesDeletedWithJavaUtilList_(self, rids);
}

- (void)onClearConversation {
  ImActorModelModulesMessagesConversationActor_onClearConversation(self);
}

- (void)onDeleteConversation {
  ImActorModelModulesMessagesConversationActor_onDeleteConversation(self);
}

- (void)onHistoryLoadedWithJavaUtilList:(id<JavaUtilList>)history {
  ImActorModelModulesMessagesConversationActor_onHistoryLoadedWithJavaUtilList_(self, history);
}

- (void)savePending {
  ImActorModelModulesMessagesConversationActor_savePending(self);
}

- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[AMMessage class]]) {
    ImActorModelModulesMessagesConversationActor_onInMessageWithAMMessage_(self, (AMMessage *) check_class_cast(message, [AMMessage class]));
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_MessageContentUpdated class]]) {
    ImActorModelModulesMessagesConversationActor_MessageContentUpdated *contentUpdated = (ImActorModelModulesMessagesConversationActor_MessageContentUpdated *) check_class_cast(message, [ImActorModelModulesMessagesConversationActor_MessageContentUpdated class]);
    ImActorModelModulesMessagesConversationActor_onMessageContentUpdatedWithLong_withAMAbsContent_(self, [((ImActorModelModulesMessagesConversationActor_MessageContentUpdated *) nil_chk(contentUpdated)) getRid], [contentUpdated getContent]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_MessageSent class]]) {
    ImActorModelModulesMessagesConversationActor_MessageSent *sent = (ImActorModelModulesMessagesConversationActor_MessageSent *) check_class_cast(message, [ImActorModelModulesMessagesConversationActor_MessageSent class]);
    ImActorModelModulesMessagesConversationActor_onMessageSentWithLong_withLong_(self, [((ImActorModelModulesMessagesConversationActor_MessageSent *) nil_chk(sent)) getRid], [sent getDate]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_MessageError class]]) {
    ImActorModelModulesMessagesConversationActor_MessageError *messageError = (ImActorModelModulesMessagesConversationActor_MessageError *) check_class_cast(message, [ImActorModelModulesMessagesConversationActor_MessageError class]);
    ImActorModelModulesMessagesConversationActor_onMessageErrorWithLong_(self, [((ImActorModelModulesMessagesConversationActor_MessageError *) nil_chk(messageError)) getRid]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_MessageRead class]]) {
    ImActorModelModulesMessagesConversationActor_onMessagePlainReadWithLong_(self, [((ImActorModelModulesMessagesConversationActor_MessageRead *) nil_chk(((ImActorModelModulesMessagesConversationActor_MessageRead *) check_class_cast(message, [ImActorModelModulesMessagesConversationActor_MessageRead class])))) getDate]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_MessageEncryptedRead class]]) {
    ImActorModelModulesMessagesConversationActor_onMessageEncryptedReadWithLong_(self, [((ImActorModelModulesMessagesConversationActor_MessageEncryptedRead *) nil_chk(((ImActorModelModulesMessagesConversationActor_MessageEncryptedRead *) check_class_cast(message, [ImActorModelModulesMessagesConversationActor_MessageEncryptedRead class])))) getRid]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_MessageReceived class]]) {
    ImActorModelModulesMessagesConversationActor_onMessagePlainReceivedWithLong_(self, [((ImActorModelModulesMessagesConversationActor_MessageReceived *) nil_chk(((ImActorModelModulesMessagesConversationActor_MessageReceived *) check_class_cast(message, [ImActorModelModulesMessagesConversationActor_MessageReceived class])))) getDate]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_MessageEncryptedReceived class]]) {
    ImActorModelModulesMessagesConversationActor_onMessageEncryptedReceivedWithLong_(self, [((ImActorModelModulesMessagesConversationActor_MessageEncryptedReceived *) nil_chk(((ImActorModelModulesMessagesConversationActor_MessageEncryptedReceived *) check_class_cast(message, [ImActorModelModulesMessagesConversationActor_MessageEncryptedReceived class])))) getRid]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_HistoryLoaded class]]) {
    ImActorModelModulesMessagesConversationActor_onHistoryLoadedWithJavaUtilList_(self, [((ImActorModelModulesMessagesConversationActor_HistoryLoaded *) nil_chk(((ImActorModelModulesMessagesConversationActor_HistoryLoaded *) check_class_cast(message, [ImActorModelModulesMessagesConversationActor_HistoryLoaded class])))) getMessages]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_ClearConversation class]]) {
    ImActorModelModulesMessagesConversationActor_onClearConversation(self);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_DeleteConversation class]]) {
    ImActorModelModulesMessagesConversationActor_onDeleteConversation(self);
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesConversationActor_MessagesDeleted class]]) {
    ImActorModelModulesMessagesConversationActor_onMessagesDeletedWithJavaUtilList_(self, [((ImActorModelModulesMessagesConversationActor_MessagesDeleted *) nil_chk(((ImActorModelModulesMessagesConversationActor_MessagesDeleted *) check_class_cast(message, [ImActorModelModulesMessagesConversationActor_MessagesDeleted class])))) getRids]);
  }
  else {
    [self dropWithId:message];
  }
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessagesConversationActor *)other {
  [super copyAllFieldsTo:other];
  other->peer_ = peer_;
  other->messages_ = messages_;
  other->messagesStorage_ = messagesStorage_;
  other->dialogsActor_ = dialogsActor_;
  other->pendingKeyValue_ = pendingKeyValue_;
}

@end

void ImActorModelModulesMessagesConversationActor_onInMessageWithAMMessage_(ImActorModelModulesMessagesConversationActor *self, AMMessage *message) {
  if ([((id<DKListEngine>) nil_chk(self->messages_)) getValueWithLong:[((AMMessage *) nil_chk(message)) getEngineId]] != nil) {
    return;
  }
  [self->messages_ addOrUpdateItemWithBSBserObject:message];
  [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:[[ImActorModelModulesMessagesDialogsActor_InMessage alloc] initWithAMPeer:self->peer_ withAMMessage:message]];
  if ([message getSenderId] == [self myUid]) {
    [((JavaUtilArrayList *) nil_chk([((ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *) nil_chk(self->messagesStorage_)) getMessages])) addWithId:[[ImActorModelModulesMessagesEntityOutUnreadMessage alloc] initWithLong:[message getRid] withLong:[message getDate]]];
    ImActorModelModulesMessagesConversationActor_savePending(self);
  }
}

void ImActorModelModulesMessagesConversationActor_onMessageContentUpdatedWithLong_withAMAbsContent_(ImActorModelModulesMessagesConversationActor *self, jlong rid, AMAbsContent *content) {
  AMMessage *message = [((id<DKListEngine>) nil_chk(self->messages_)) getValueWithLong:rid];
  if (message == nil) {
    return;
  }
  [self->messages_ addOrUpdateItemWithBSBserObject:[((AMMessage *) nil_chk(message)) changeContentWithAMAbsContent:content]];
  [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:[[ImActorModelModulesMessagesDialogsActor_MessageContentChanged alloc] initWithAMPeer:self->peer_ withLong:rid withAMAbsContent:content]];
}

void ImActorModelModulesMessagesConversationActor_onMessageSentWithLong_withLong_(ImActorModelModulesMessagesConversationActor *self, jlong rid, jlong date) {
  AMMessage *msg = [((id<DKListEngine>) nil_chk(self->messages_)) getValueWithLong:rid];
  if (msg != nil && ([msg getMessageState] == AMMessageStateEnum_get_PENDING())) {
    for (ImActorModelModulesMessagesEntityOutUnreadMessage * __strong p in nil_chk([((ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *) nil_chk(self->messagesStorage_)) getMessages])) {
      if ([((ImActorModelModulesMessagesEntityOutUnreadMessage *) nil_chk(p)) getRid] == rid) {
        [((JavaUtilArrayList *) nil_chk([self->messagesStorage_ getMessages])) removeWithId:p];
        [((JavaUtilArrayList *) nil_chk([self->messagesStorage_ getMessages])) addWithId:[[ImActorModelModulesMessagesEntityOutUnreadMessage alloc] initWithLong:rid withLong:date]];
        break;
      }
    }
    ImActorModelModulesMessagesConversationActor_savePending(self);
    [self->messages_ addOrUpdateItemWithBSBserObject:[((AMMessage *) nil_chk([msg changeDateWithLong:date])) changeStateWithAMMessageStateEnum:AMMessageStateEnum_get_SENT()]];
    [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:[[ImActorModelModulesMessagesDialogsActor_MessageSent alloc] initWithAMPeer:self->peer_ withLong:rid withLong:date]];
  }
}

void ImActorModelModulesMessagesConversationActor_onMessageErrorWithLong_(ImActorModelModulesMessagesConversationActor *self, jlong rid) {
  AMMessage *msg = [((id<DKListEngine>) nil_chk(self->messages_)) getValueWithLong:rid];
  if (msg != nil && ([msg getMessageState] == AMMessageStateEnum_get_PENDING() || [msg getMessageState] == AMMessageStateEnum_get_SENT())) {
    [self->messages_ addOrUpdateItemWithBSBserObject:[msg changeStateWithAMMessageStateEnum:AMMessageStateEnum_get_ERROR()]];
    [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:[[ImActorModelModulesMessagesDialogsActor_MessageStateChanged alloc] initWithAMPeer:self->peer_ withLong:rid withAMMessageStateEnum:AMMessageStateEnum_get_ERROR()]];
  }
}

void ImActorModelModulesMessagesConversationActor_onMessagePlainReadWithLong_(ImActorModelModulesMessagesConversationActor *self, jlong date) {
  jboolean removed = NO;
  {
    IOSObjectArray *a__ = [((JavaUtilArrayList *) nil_chk([((ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *) nil_chk(self->messagesStorage_)) getMessages])) toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:0 type:ImActorModelModulesMessagesEntityOutUnreadMessage_class_()]];
    ImActorModelModulesMessagesEntityOutUnreadMessage * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    ImActorModelModulesMessagesEntityOutUnreadMessage * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      ImActorModelModulesMessagesEntityOutUnreadMessage *p = *b__++;
      if ([((ImActorModelModulesMessagesEntityOutUnreadMessage *) nil_chk(p)) getDate] <= date) {
        AMMessage *msg = [((id<DKListEngine>) nil_chk(self->messages_)) getValueWithLong:[p getRid]];
        if (msg != nil && ([msg getMessageState] == AMMessageStateEnum_get_SENT() || [msg getMessageState] == AMMessageStateEnum_get_RECEIVED())) {
          [self->messages_ addOrUpdateItemWithBSBserObject:[msg changeStateWithAMMessageStateEnum:AMMessageStateEnum_get_READ()]];
          [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:[[ImActorModelModulesMessagesDialogsActor_MessageStateChanged alloc] initWithAMPeer:self->peer_ withLong:[p getRid] withAMMessageStateEnum:AMMessageStateEnum_get_READ()]];
          removed = YES;
          [((JavaUtilArrayList *) nil_chk([self->messagesStorage_ getMessages])) removeWithId:p];
        }
      }
    }
  }
  if (removed) {
    ImActorModelModulesMessagesConversationActor_savePending(self);
  }
}

void ImActorModelModulesMessagesConversationActor_onMessagePlainReceivedWithLong_(ImActorModelModulesMessagesConversationActor *self, jlong date) {
  for (ImActorModelModulesMessagesEntityOutUnreadMessage * __strong p in nil_chk([((ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *) nil_chk(self->messagesStorage_)) getMessages])) {
    if ([((ImActorModelModulesMessagesEntityOutUnreadMessage *) nil_chk(p)) getDate] <= date) {
      AMMessage *msg = [((id<DKListEngine>) nil_chk(self->messages_)) getValueWithLong:[p getRid]];
      if (msg != nil && [msg getMessageState] == AMMessageStateEnum_get_SENT()) {
        [self->messages_ addOrUpdateItemWithBSBserObject:[msg changeStateWithAMMessageStateEnum:AMMessageStateEnum_get_RECEIVED()]];
        [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:[[ImActorModelModulesMessagesDialogsActor_MessageStateChanged alloc] initWithAMPeer:self->peer_ withLong:[p getRid] withAMMessageStateEnum:AMMessageStateEnum_get_RECEIVED()]];
      }
    }
  }
}

void ImActorModelModulesMessagesConversationActor_onMessageEncryptedReceivedWithLong_(ImActorModelModulesMessagesConversationActor *self, jlong rid) {
  AMMessage *msg = [((id<DKListEngine>) nil_chk(self->messages_)) getValueWithLong:rid];
  if (msg != nil && [msg getMessageState] == AMMessageStateEnum_get_SENT()) {
    [self->messages_ addOrUpdateItemWithBSBserObject:[msg changeStateWithAMMessageStateEnum:AMMessageStateEnum_get_RECEIVED()]];
    [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:[[ImActorModelModulesMessagesDialogsActor_MessageStateChanged alloc] initWithAMPeer:self->peer_ withLong:rid withAMMessageStateEnum:AMMessageStateEnum_get_RECEIVED()]];
  }
}

void ImActorModelModulesMessagesConversationActor_onMessageEncryptedReadWithLong_(ImActorModelModulesMessagesConversationActor *self, jlong rid) {
  AMMessage *msg = [((id<DKListEngine>) nil_chk(self->messages_)) getValueWithLong:rid];
  if (msg != nil && ([msg getMessageState] == AMMessageStateEnum_get_SENT() || [msg getMessageState] == AMMessageStateEnum_get_RECEIVED())) {
    [self->messages_ addOrUpdateItemWithBSBserObject:[msg changeStateWithAMMessageStateEnum:AMMessageStateEnum_get_READ()]];
    [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:[[ImActorModelModulesMessagesDialogsActor_MessageStateChanged alloc] initWithAMPeer:self->peer_ withLong:rid withAMMessageStateEnum:AMMessageStateEnum_get_READ()]];
  }
}

void ImActorModelModulesMessagesConversationActor_onMessagesDeletedWithJavaUtilList_(ImActorModelModulesMessagesConversationActor *self, id<JavaUtilList> rids) {
  IOSLongArray *rids2 = [IOSLongArray newArrayWithLength:[((id<JavaUtilList>) nil_chk(rids)) size]];
  for (jint i = 0; i < rids2->size_; i++) {
    *IOSLongArray_GetRef(rids2, i) = [((JavaLangLong *) nil_chk([rids getWithInt:i])) longLongValue];
  }
  [((id<DKListEngine>) nil_chk(self->messages_)) removeItemsWithLongArray:rids2];
  AMMessage *topMessage = [self->messages_ getHeadValue];
  [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:[[ImActorModelModulesMessagesDialogsActor_MessageDeleted alloc] initWithAMPeer:self->peer_ withAMMessage:topMessage]];
}

void ImActorModelModulesMessagesConversationActor_onClearConversation(ImActorModelModulesMessagesConversationActor *self) {
  [((id<DKListEngine>) nil_chk(self->messages_)) clear];
  [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:[[ImActorModelModulesMessagesDialogsActor_ChatClear alloc] initWithAMPeer:self->peer_]];
}

void ImActorModelModulesMessagesConversationActor_onDeleteConversation(ImActorModelModulesMessagesConversationActor *self) {
  [((id<DKListEngine>) nil_chk(self->messages_)) clear];
  [((DKActorRef *) nil_chk(self->dialogsActor_)) sendWithId:[[ImActorModelModulesMessagesDialogsActor_ChatDelete alloc] initWithAMPeer:self->peer_]];
}

void ImActorModelModulesMessagesConversationActor_onHistoryLoadedWithJavaUtilList_(ImActorModelModulesMessagesConversationActor *self, id<JavaUtilList> history) {
  JavaUtilArrayList *updated = [[JavaUtilArrayList alloc] init];
  jboolean isPendingChanged = NO;
  for (AMMessage * __strong historyMessage in nil_chk(history)) {
    if ([((id<DKListEngine>) nil_chk(self->messages_)) getValueWithLong:[((AMMessage *) nil_chk(historyMessage)) getEngineId]] != nil) {
      continue;
    }
    [updated addWithId:historyMessage];
    if ([historyMessage getMessageState] == AMMessageStateEnum_get_SENT()) {
      [((JavaUtilArrayList *) nil_chk([((ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *) nil_chk(self->messagesStorage_)) getMessages])) addWithId:[[ImActorModelModulesMessagesEntityOutUnreadMessage alloc] initWithLong:[historyMessage getRid] withLong:[historyMessage getDate]]];
      isPendingChanged = YES;
    }
  }
  if (isPendingChanged) {
    ImActorModelModulesMessagesConversationActor_savePending(self);
  }
  if ([updated size] > 0) {
    [((id<DKListEngine>) nil_chk(self->messages_)) addOrUpdateItemsWithJavaUtilList:updated];
  }
}

void ImActorModelModulesMessagesConversationActor_savePending(ImActorModelModulesMessagesConversationActor *self) {
  [((DKSyncKeyValue *) nil_chk(self->pendingKeyValue_)) putWithLong:[((AMPeer *) nil_chk(self->peer_)) getUnuqueId] withByteArray:[((ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *) nil_chk(self->messagesStorage_)) toByteArray]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor)

@implementation ImActorModelModulesMessagesConversationActor_MessageContentUpdated

- (instancetype)initWithLong:(jlong)rid
            withAMAbsContent:(AMAbsContent *)content {
  if (self = [super init]) {
    self->rid_ = rid;
    self->content_ = content;
  }
  return self;
}

- (jlong)getRid {
  return rid_;
}

- (AMAbsContent *)getContent {
  return content_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessagesConversationActor_MessageContentUpdated *)other {
  [super copyAllFieldsTo:other];
  other->rid_ = rid_;
  other->content_ = content_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_MessageContentUpdated)

@implementation ImActorModelModulesMessagesConversationActor_HistoryLoaded

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)messages {
  if (self = [super init]) {
    self->messages_ = messages;
  }
  return self;
}

- (id<JavaUtilList>)getMessages {
  return messages_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessagesConversationActor_HistoryLoaded *)other {
  [super copyAllFieldsTo:other];
  other->messages_ = messages_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_HistoryLoaded)

@implementation ImActorModelModulesMessagesConversationActor_MessageReceived

- (instancetype)initWithLong:(jlong)date {
  if (self = [super init]) {
    self->date_ = date;
  }
  return self;
}

- (jlong)getDate {
  return date_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessagesConversationActor_MessageReceived *)other {
  [super copyAllFieldsTo:other];
  other->date_ = date_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_MessageReceived)

@implementation ImActorModelModulesMessagesConversationActor_MessageEncryptedReceived

- (instancetype)initWithLong:(jlong)rid {
  if (self = [super init]) {
    self->rid_ = rid;
  }
  return self;
}

- (jlong)getRid {
  return rid_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessagesConversationActor_MessageEncryptedReceived *)other {
  [super copyAllFieldsTo:other];
  other->rid_ = rid_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_MessageEncryptedReceived)

@implementation ImActorModelModulesMessagesConversationActor_MessageRead

- (instancetype)initWithLong:(jlong)date {
  if (self = [super init]) {
    self->date_ = date;
  }
  return self;
}

- (jlong)getDate {
  return date_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessagesConversationActor_MessageRead *)other {
  [super copyAllFieldsTo:other];
  other->date_ = date_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_MessageRead)

@implementation ImActorModelModulesMessagesConversationActor_MessageEncryptedRead

- (instancetype)initWithLong:(jlong)rid {
  if (self = [super init]) {
    self->rid_ = rid;
  }
  return self;
}

- (jlong)getRid {
  return rid_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessagesConversationActor_MessageEncryptedRead *)other {
  [super copyAllFieldsTo:other];
  other->rid_ = rid_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_MessageEncryptedRead)

@implementation ImActorModelModulesMessagesConversationActor_MessageSent

- (instancetype)initWithLong:(jlong)rid
                    withLong:(jlong)date {
  if (self = [super init]) {
    self->rid_ = rid;
    self->date_ = date;
  }
  return self;
}

- (jlong)getDate {
  return date_;
}

- (jlong)getRid {
  return rid_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessagesConversationActor_MessageSent *)other {
  [super copyAllFieldsTo:other];
  other->rid_ = rid_;
  other->date_ = date_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_MessageSent)

@implementation ImActorModelModulesMessagesConversationActor_MessageError

- (instancetype)initWithLong:(jlong)rid {
  if (self = [super init]) {
    self->rid_ = rid;
  }
  return self;
}

- (jlong)getRid {
  return rid_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessagesConversationActor_MessageError *)other {
  [super copyAllFieldsTo:other];
  other->rid_ = rid_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_MessageError)

@implementation ImActorModelModulesMessagesConversationActor_MessagesDeleted

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)rids {
  if (self = [super init]) {
    self->rids_ = rids;
  }
  return self;
}

- (id<JavaUtilList>)getRids {
  return rids_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessagesConversationActor_MessagesDeleted *)other {
  [super copyAllFieldsTo:other];
  other->rids_ = rids_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_MessagesDeleted)

@implementation ImActorModelModulesMessagesConversationActor_ClearConversation

- (instancetype)init {
  return [super init];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_ClearConversation)

@implementation ImActorModelModulesMessagesConversationActor_DeleteConversation

- (instancetype)init {
  return [super init];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesConversationActor_DeleteConversation)