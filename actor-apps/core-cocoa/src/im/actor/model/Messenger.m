//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/Messenger.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/AuthState.h"
#include "im/actor/model/Configuration.h"
#include "im/actor/model/CryptoProvider.h"
#include "im/actor/model/DispatcherProvider.h"
#include "im/actor/model/LogProvider.h"
#include "im/actor/model/MainThreadProvider.h"
#include "im/actor/model/Messenger.h"
#include "im/actor/model/ThreadingProvider.h"
#include "im/actor/model/api/Sex.h"
#include "im/actor/model/concurrency/Command.h"
#include "im/actor/model/crypto/CryptoUtils.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/Environment.h"
#include "im/actor/model/droidkit/engine/PreferencesStorage.h"
#include "im/actor/model/entity/FileReference.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/content/FastThumb.h"
#include "im/actor/model/i18n/I18nEngine.h"
#include "im/actor/model/log/Log.h"
#include "im/actor/model/modules/Analytics.h"
#include "im/actor/model/modules/AppStateModule.h"
#include "im/actor/model/modules/Auth.h"
#include "im/actor/model/modules/Contacts.h"
#include "im/actor/model/modules/External.h"
#include "im/actor/model/modules/Files.h"
#include "im/actor/model/modules/Groups.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Notifications.h"
#include "im/actor/model/modules/Presence.h"
#include "im/actor/model/modules/Profile.h"
#include "im/actor/model/modules/Pushes.h"
#include "im/actor/model/modules/Security.h"
#include "im/actor/model/modules/Settings.h"
#include "im/actor/model/modules/Typing.h"
#include "im/actor/model/modules/Updates.h"
#include "im/actor/model/modules/Users.h"
#include "im/actor/model/mvvm/MVVMCollection.h"
#include "im/actor/model/mvvm/MVVMEngine.h"
#include "im/actor/model/mvvm/ValueModel.h"
#include "im/actor/model/network/ActorApi.h"
#include "im/actor/model/network/NetworkState.h"
#include "im/actor/model/network/parser/Request.h"
#include "im/actor/model/util/ActorTrace.h"
#include "im/actor/model/util/Timing.h"
#include "im/actor/model/viewmodel/AppStateVM.h"
#include "im/actor/model/viewmodel/FileCallback.h"
#include "im/actor/model/viewmodel/FileVM.h"
#include "im/actor/model/viewmodel/FileVMCallback.h"
#include "im/actor/model/viewmodel/GroupAvatarVM.h"
#include "im/actor/model/viewmodel/GroupTypingVM.h"
#include "im/actor/model/viewmodel/GroupVM.h"
#include "im/actor/model/viewmodel/OwnAvatarVM.h"
#include "im/actor/model/viewmodel/UploadFileCallback.h"
#include "im/actor/model/viewmodel/UploadFileVM.h"
#include "im/actor/model/viewmodel/UploadFileVMCallback.h"
#include "im/actor/model/viewmodel/UserTypingVM.h"
#include "im/actor/model/viewmodel/UserVM.h"
#include "java/util/ArrayList.h"

@implementation AMMessenger

- (instancetype)initWithConfiguration:(AMConfiguration *)configuration {
  AMMessenger_initWithConfiguration_(self, configuration);
  return self;
}

- (AMAuthStateEnum *)getAuthState {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) getAuthState];
}

- (jboolean)isLoggedIn {
  return [self getAuthState] == AMAuthStateEnum_get_LOGGED_IN();
}

- (id<AMCommand>)requestSmsObsoleteCommandWithPhone:(jlong)phone {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) requestSmsObsoleteWithLong:phone];
}

- (id<AMCommand>)requestStartEmailAuthCommandWithEmail:(NSString *)email {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) requestStartEmailAuthWithNSString:email];
}

- (id<AMCommand>)requestStartPhoneAuthCommandWithEmail:(jlong)phone {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) requestStartPhoneAuthWithLong:phone];
}

- (id<AMCommand>)requestGetOAuthParamsCommand {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) requestGetOAuth2Params];
}

- (id<AMCommand>)requestCompleteOAuthCommandWithCode:(NSString *)code {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) requestCompleteOauthWithNSString:code];
}

- (id<AMCommand>)sendCodeObsoleteCommand:(jint)code {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) sendCodeObsoleteWithInt:code];
}

- (id<AMCommand>)validateCodeCommandWithCode:(NSString *)code {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) requestValidateCodeWithNSString:code];
}

- (id<AMCommand>)signUpObsoleteCommandWithName:(NSString *)name
                                    withAvatar:(NSString *)avatarPath
                                      silently:(jboolean)isSilent {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) signUpObsoleteWithNSString:name withNSString:avatarPath withBoolean:isSilent];
}

- (id<AMCommand>)signUpCommandWithName:(NSString *)name
                               WithSex:(APSexEnum *)sex
                            withAvatar:(NSString *)avatarPath {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) signUpWithNSString:name withAPSexEnum:sex withNSString:avatarPath];
}

- (jlong)getAuthPhone {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) getPhone];
}

- (NSString *)getAuthEmail {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) getEmail];
}

- (void)resetAuth {
  [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) resetAuth];
}

- (void)onLoggedIn {
}

- (AMAppStateVM *)getAppState {
  return [((ImActorModelModulesAppStateModule *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAppStateModule])) getAppStateVM];
}

- (jint)myUid {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) myUid];
}

- (AMMVVMCollection *)getUsers {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getUsersModule] == nil) {
    return nil;
  }
  return [((ImActorModelModulesUsers *) nil_chk([modules_ getUsersModule])) getUsersCollection];
}

- (AMUserVM *)getUserWithUid:(jint)uid {
  return [((AMMVVMCollection *) nil_chk([self getUsers])) getWithId:uid];
}

- (AMMVVMCollection *)getGroups {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule] == nil) {
    return nil;
  }
  return [((ImActorModelModulesGroups *) nil_chk([modules_ getGroupsModule])) getGroupsCollection];
}

- (AMGroupVM *)getGroupWithGid:(jint)gid {
  return [((AMMVVMCollection *) nil_chk([self getGroups])) getWithId:gid];
}

- (AMValueModel *)getTypingWithUid:(jint)uid {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getTypingModule] == nil) {
    return nil;
  }
  return [((AMUserTypingVM *) nil_chk([((ImActorModelModulesTyping *) nil_chk([modules_ getTypingModule])) getTypingWithInt:uid])) getTyping];
}

- (AMValueModel *)getGroupTypingWithGid:(jint)gid {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getTypingModule] == nil) {
    return nil;
  }
  return [((AMGroupTypingVM *) nil_chk([((ImActorModelModulesTyping *) nil_chk([modules_ getTypingModule])) getGroupTypingWithInt:gid])) getActive];
}

- (AMOwnAvatarVM *)getOwnAvatarVM {
  return [((ImActorModelModulesProfile *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getProfile])) getOwnAvatarVM];
}

- (AMGroupAvatarVM *)getGroupAvatarVMWithGid:(jint)gid {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) getAvatarVMWithInt:gid];
}

- (void)onAppVisible {
  [((ImActorModelModulesModules *) nil_chk(modules_)) onAppVisible];
}

- (void)onAppHidden {
  [((ImActorModelModulesModules *) nil_chk(modules_)) onAppHidden];
}

- (void)onDialogsOpen {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getNotifications] != nil) {
    [((ImActorModelModulesNotifications *) nil_chk([modules_ getNotifications])) onDialogsOpen];
  }
}

- (void)onDialogsClosed {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getNotifications] != nil) {
    [((ImActorModelModulesNotifications *) nil_chk([modules_ getNotifications])) onDialogsClosed];
  }
}

- (void)onConversationOpenWithPeer:(AMPeer *)peer {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackChatOpenWithAMPeer:peer];
  if ([modules_ getPresenceModule] != nil) {
    [((ImActorModelModulesPresence *) nil_chk([modules_ getPresenceModule])) subscribeWithAMPeer:peer];
    [((ImActorModelModulesNotifications *) nil_chk([modules_ getNotifications])) onConversationOpenWithAMPeer:peer];
    [((ImActorModelModulesMessages *) nil_chk([modules_ getMessagesModule])) onConversationOpenWithAMPeer:peer];
  }
}

- (void)onConversationClosedWithPeer:(AMPeer *)peer {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackChatClosedWithAMPeer:peer];
  if ([modules_ getPresenceModule] != nil) {
    [((ImActorModelModulesNotifications *) nil_chk([modules_ getNotifications])) onConversationCloseWithAMPeer:peer];
  }
}

- (void)onProfileOpenWithUid:(jint)uid {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackProfileOpenWithInt:uid];
  if ([modules_ getPresenceModule] != nil) {
    [((ImActorModelModulesPresence *) nil_chk([modules_ getPresenceModule])) subscribeWithAMPeer:AMPeer_userWithInt_(uid)];
  }
}

- (void)onProfileClosedWithUid:(jint)uid {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackProfileClosedWithInt:uid];
}

- (void)onTypingWithPeer:(AMPeer *)peer {
  [((ImActorModelModulesTyping *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getTypingModule])) onTypingWithAMPeer:peer];
}

- (void)onPhoneBookChanged {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getContactsModule] != nil) {
    [((ImActorModelModulesContacts *) nil_chk([modules_ getContactsModule])) onPhoneBookChanged];
  }
}

- (void)onNetworkChangedWithAMNetworkStateEnum:(AMNetworkStateEnum *)state {
  [((AMActorApi *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getActorApi])) onNetworkChangedWithAMNetworkStateEnum:state];
}

- (void)onPushReceivedWithSeq:(jint)seq {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getUpdatesModule] != nil) {
    [((ImActorModelModulesUpdates *) nil_chk([modules_ getUpdatesModule])) onPushReceivedWithInt:seq];
  }
}

- (void)sendMessageWithPeer:(AMPeer *)peer
                   withText:(NSString *)text
           withMarkdownText:(NSString *)markDownText
               withMentions:(JavaUtilArrayList *)mentions {
  [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) sendMessageWithAMPeer:peer withNSString:text withNSString:markDownText withJavaUtilArrayList:mentions];
}

- (void)sendMessageWithPeer:(AMPeer *)peer
                   withText:(NSString *)text
           withMarkdownText:(NSString *)markDownText {
  [self sendMessageWithPeer:peer withText:text withMarkdownText:markDownText withMentions:nil];
}

- (void)sendMessageWithPeer:(AMPeer *)peer
                   withText:(NSString *)text
               withMentions:(JavaUtilArrayList *)mentions {
  [self sendMessageWithPeer:peer withText:text withMarkdownText:nil withMentions:mentions];
}

- (void)sendMessageWithPeer:(AMPeer *)peer
                   withText:(NSString *)text {
  [self sendMessageWithPeer:peer withText:text withMarkdownText:nil withMentions:nil];
}

- (void)sendPhotoWithPeer:(AMPeer *)peer
                 withName:(NSString *)fileName
                    withW:(jint)w
                    withH:(jint)h
                withThumb:(AMFastThumb *)fastThumb
           withDescriptor:(NSString *)descriptor {
  [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) sendPhotoWithAMPeer:peer withNSString:fileName withInt:w withInt:h withAMFastThumb:fastThumb withNSString:descriptor];
}

- (void)sendVideoWithPeer:(AMPeer *)peer
                 withName:(NSString *)fileName
                    withW:(jint)w
                    withH:(jint)h
             withDuration:(jint)duration
                withThumb:(AMFastThumb *)fastThumb
           withDescriptor:(NSString *)descriptor {
  [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) sendVideoWithAMPeer:peer withNSString:fileName withInt:w withInt:h withInt:duration withAMFastThumb:fastThumb withNSString:descriptor];
}

- (void)sendDocumentWithPeer:(AMPeer *)peer
                    withName:(NSString *)fileName
                    withMime:(NSString *)mimeType
              withDescriptor:(NSString *)descriptor {
  [self sendDocumentWithPeer:peer withName:fileName withMime:mimeType withThumb:nil withDescriptor:descriptor];
}

- (void)sendDocumentWithPeer:(AMPeer *)peer
                    withName:(NSString *)fileName
                    withMime:(NSString *)mimeType
                   withThumb:(AMFastThumb *)fastThumb
              withDescriptor:(NSString *)descriptor {
  [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) sendDocumentWithAMPeer:peer withNSString:fileName withNSString:mimeType withAMFastThumb:fastThumb withNSString:descriptor];
}

- (void)deleteMessagesWithPeer:(AMPeer *)peer
                      withRids:(IOSLongArray *)rids {
  [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) deleteMessagesWithAMPeer:peer withLongArray:rids];
}

- (id<AMCommand>)deleteChatCommandWithPeer:(AMPeer *)peer {
  return [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) deleteChatWithAMPeer:peer];
}

- (id<AMCommand>)clearChatCommandWithPeer:(AMPeer *)peer {
  return [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) clearChatWithAMPeer:peer];
}

- (void)saveDraftWithPeer:(AMPeer *)peer
                withDraft:(NSString *)draft {
  [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) saveDraftWithAMPeer:peer withNSString:draft];
}

- (NSString *)loadDraftWithPeer:(AMPeer *)peer {
  return [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) loadDraftWithAMPeer:peer];
}

- (id<AMCommand>)editMyNameCommandWithName:(NSString *)newName {
  return [((ImActorModelModulesUsers *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getUsersModule])) editMyNameWithNSString:newName];
}

- (void)changeMyAvatarWithDescriptor:(NSString *)descriptor {
  [((ImActorModelModulesProfile *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getProfile])) changeAvatarWithNSString:descriptor];
}

- (void)removeMyAvatar {
  [((ImActorModelModulesProfile *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getProfile])) removeAvatar];
}

- (id<AMCommand>)editNameCommandWithUid:(jint)uid
                               withName:(NSString *)name {
  return [((ImActorModelModulesUsers *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getUsersModule])) editNameWithInt:uid withNSString:name];
}

- (id<AMCommand>)editGroupTitleCommandWithGid:(jint)gid
                                    withTitle:(NSString *)title {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) editTitleWithInt:gid withNSString:title];
}

- (void)changeGroupAvatarWithGid:(jint)gid
                  withDescriptor:(NSString *)descriptor {
  [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) changeAvatarWithInt:gid withNSString:descriptor];
}

- (void)removeGroupAvatarWithGid:(jint)gid {
  [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) removeAvatarWithInt:gid];
}

- (id<AMCommand>)createGroupCommandWithTitle:(NSString *)title
                                  withAvatar:(NSString *)avatarDescriptor
                                    withUids:(IOSIntArray *)uids {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) createGroupWithNSString:title withNSString:avatarDescriptor withIntArray:uids];
}

- (id<AMCommand>)leaveGroupCommandWithGid:(jint)gid {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) leaveGroupWithInt:gid];
}

- (id<AMCommand>)inviteMemberCommandWithGid:(jint)gid
                                    withUid:(jint)uid {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) addMemberToGroupWithInt:gid withInt:uid];
}

- (id<AMCommand>)kickMemberCommandWithGid:(jint)gid
                                  withUid:(jint)uid {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) kickMemberWithInt:gid withInt:uid];
}

- (id<AMCommand>)requestInviteLinkCommandWithGid:(jint)gid {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) requestInviteLinkWithInt:gid];
}

- (id<AMCommand>)requestRevokeLinkCommandWithGid:(jint)gid {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) requestRevokeLinkWithInt:gid];
}

- (id<AMCommand>)joinGroupViaLinkCommandWithUrl:(NSString *)url {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) joinGroupViaLinkWithNSString:url];
}

- (id<AMCommand>)joinPublicGroupCommandWithGig:(jint)gid
                                withAccessHash:(jlong)accessHash {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) joinPublicGroupWithInt:gid withLong:accessHash];
}

- (id<AMCommand>)listPublicGroups {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) listPublicGroups];
}

- (id<AMCommand>)requestIntegrationTokenCommandWithGid:(jint)gid {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) requestIntegrationTokenWithInt:gid];
}

- (id<AMCommand>)revokeIntegrationTokenCommandWithGid:(jint)gid {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) revokeIntegrationTokenWithInt:gid];
}

- (id<AMCommand>)removeContactCommandWithUid:(jint)uid {
  return [((ImActorModelModulesContacts *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getContactsModule])) removeContactWithInt:uid];
}

- (id<AMCommand>)addContactCommandWithUid:(jint)uid {
  return [((ImActorModelModulesContacts *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getContactsModule])) addContactWithInt:uid];
}

- (id<AMCommand>)findUsersCommandWithQuery:(NSString *)query {
  return [((ImActorModelModulesContacts *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getContactsModule])) findUsersWithNSString:query];
}

- (AMFileVM *)bindFileWithReference:(AMFileReference *)fileReference
                          autoStart:(jboolean)isAutoStart
                       withCallback:(id<AMFileVMCallback>)callback {
  return new_AMFileVM_initWithAMFileReference_withBoolean_withImActorModelModulesModules_withAMFileVMCallback_(fileReference, isAutoStart, modules_, callback);
}

- (AMUploadFileVM *)bindUploadWithRid:(jlong)rid
                         withCallback:(id<AMUploadFileVMCallback>)callback {
  return new_AMUploadFileVM_initWithLong_withAMUploadFileVMCallback_withImActorModelModulesModules_(rid, callback, modules_);
}

- (void)bindRawFileWithReference:(AMFileReference *)fileReference
                       autoStart:(jboolean)isAutoStart
                    withCallback:(id<AMFileCallback>)callback {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) bindFileWithAMFileReference:fileReference withBoolean:isAutoStart withAMFileCallback:callback];
}

- (void)unbindRawFileWithFileId:(jlong)fileId
                     autoCancel:(jboolean)isAutoCancel
                   withCallback:(id<AMFileCallback>)callback {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) unbindFileWithLong:fileId withAMFileCallback:callback withBoolean:isAutoCancel];
}

- (void)bindRawUploadFileWithRid:(jlong)rid
                    withCallback:(id<AMUploadFileCallback>)callback {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) bindUploadFileWithLong:rid withAMUploadFileCallback:callback];
}

- (void)unbindRawUploadFileWithRid:(jlong)rid
                      withCallback:(id<AMUploadFileCallback>)callback {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) unbindUploadFileWithLong:rid withAMUploadFileCallback:callback];
}

- (void)requestStateWithFileId:(jlong)fileId
                  withCallback:(id<AMFileCallback>)callback {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) requestStateWithLong:fileId withAMFileCallback:callback];
}

- (void)requestUploadStateWithRid:(jlong)rid
                     withCallback:(id<AMUploadFileCallback>)callback {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) requestUploadStateWithLong:rid withAMUploadFileCallback:callback];
}

- (void)cancelDownloadingWithFileId:(jlong)fileId {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) cancelDownloadingWithLong:fileId];
}

- (void)startDownloadingWithReference:(AMFileReference *)reference {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) startDownloadingWithAMFileReference:reference];
}

- (void)resumeUploadWithRid:(jlong)rid {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) resumeUploadWithLong:rid];
}

- (void)pauseUploadWithRid:(jlong)rid {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) pauseUploadWithLong:rid];
}

- (NSString *)getDownloadedDescriptorWithFileId:(jlong)fileId {
  return [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) getDownloadedDescriptorWithLong:fileId];
}

- (jboolean)isConversationTonesEnabled {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) isConversationTonesEnabled];
}

- (void)changeConversationTonesEnabledWithValue:(jboolean)val {
  [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) changeConversationTonesEnabledWithBoolean:val];
}

- (jboolean)isNotificationsEnabled {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) isNotificationsEnabled];
}

- (void)changeNotificationsEnabledWithValue:(jboolean)val {
  [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) changeNotificationsEnabledWithBoolean:val];
}

- (jboolean)isNotificationSoundEnabled {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) isNotificationSoundEnabled];
}

- (void)changeNotificationSoundEnabledWithValue:(jboolean)val {
  [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) changeNotificationSoundEnabledWithBoolean:val];
}

- (NSString *)getNotificationSound {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) getNotificationSound];
}

- (void)changeNotificationSoundWithSound:(NSString *)sound {
  [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) changeNotificationSoundWithNSString:sound];
}

- (jboolean)isNotificationVibrationEnabled {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) isVibrationEnabled];
}

- (void)changeNotificationVibrationEnabledWithValueWithBoolean:(jboolean)val {
  [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) changeNotificationVibrationEnabledWithBoolean:val];
}

- (jboolean)isShowNotificationsText {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) isShowNotificationsText];
}

- (void)changeShowNotificationTextEnabledWithValue:(jboolean)val {
  [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) changeShowNotificationTextEnabledWithBoolean:val];
}

- (jboolean)isSendByEnterEnabled {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) isSendByEnterEnabled];
}

- (void)changeSendByEnterWithValue:(jboolean)val {
  [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) changeSendByEnterWithBoolean:val];
}

- (jboolean)isMarkdownEnabled {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) isMarkdownEnabled];
}

- (void)changeMarkdownWithValue:(jboolean)val {
  [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) changeMarkdownWithBoolean:val];
}

- (jboolean)isNotificationsEnabledWithPeer:(AMPeer *)peer {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) isNotificationsEnabledWithAMPeer:peer];
}

- (void)changeNotificationsEnabledWithPeer:(AMPeer *)peer
                                 withValue:(jboolean)val {
  [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) changeNotificationsEnabledWithAMPeer:peer withBoolean:val];
}

- (jboolean)isInAppNotificationsEnabled {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) isInAppEnabled];
}

- (void)changeInAppNotificationsEnabledWithValue:(jboolean)val {
  [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) changeInAppEnabledWithBoolean:val];
}

- (jboolean)isInAppNotificationSoundEnabled {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) isInAppSoundEnabled];
}

- (void)changeInAppNotificationSoundEnabledWithValue:(jboolean)val {
  [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) changeInAppSoundEnabledWithBoolean:val];
}

- (jboolean)isInAppNotificationVibrationEnabled {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) isInAppVibrationEnabled];
}

- (void)changeInAppNotificationVibrationEnabledWithValue:(jboolean)val {
  [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) changeInAppVibrationEnabledWithBoolean:val];
}

- (jboolean)isRenameHintShown {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) isRenameHintShown];
}

- (id<AMCommand>)loadSessionsCommand {
  return [((ImActorModelModulesSecurity *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSecurity])) loadSessions];
}

- (id<AMCommand>)terminateAllSessionsCommand {
  return [((ImActorModelModulesSecurity *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSecurity])) terminateAllSessions];
}

- (id<AMCommand>)terminateSessionCommandWithId:(jint)id_ {
  return [((ImActorModelModulesSecurity *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSecurity])) terminateSessionWithInt:id_];
}

- (void)trackAuthPhoneOpen {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthPhoneOpen];
}

- (void)trackAuthCountryOpen {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthCountryOpen];
}

- (void)trackAuthCountryClosed {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthCountryClosed];
}

- (void)trackAuthCountryPickedWithCountry:(NSString *)country {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthCountryPickedWithNSString:country];
}

- (void)trackAuthPhoneTypeWithValue:(NSString *)newValue {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthPhoneTypeWithNSString:newValue];
}

- (void)trackAuthPhoneInfoOpen {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthPhoneInfoOpen];
}

- (void)trackCodeRequest {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackCodeRequest];
}

- (void)trackAuthCodeTypeWithValue:(NSString *)newValue {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthCodeTypeWithNSString:newValue];
}

- (void)trackBackPressed {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackBackPressed];
}

- (void)trackUpPressed {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackUpPressed];
}

- (void)trackAuthCodeWrongNumber {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthCodeWrongNumber];
}

- (void)trackAuthCodeWrongNumberCancel {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthCodeWrongNumberCancel];
}

- (void)trackAuthCodeWrongNumberChange {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthCodeWrongNumberChange];
}

- (void)trackAuthCodeOpen {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthCodeOpen];
}

- (void)trackAuthCodeClosed {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthCodeClosed];
}

- (void)trackAuthSignupOpen {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthSignupOpen];
}

- (void)trackAuthSignupClosed {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthSignupClosed];
}

- (void)trackAuthSignupNameTypeWithValue:(NSString *)newValue {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthSignupClosedNameTypeWithNSString:newValue];
}

- (void)trackAuthSignupPressedAvatar {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthSignupPressedAvatar];
}

- (void)trackAuthSignupAvatarPicked {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthSignupAvatarPicked];
}

- (void)trackAuthSignupAvatarDeleted {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthSignupAvatarDeleted];
}

- (void)trackAuthSignupAvatarCanelled {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthSignupAvatarCanelled];
}

- (void)trackAuthSuccess {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackAuthSuccess];
}

- (void)trackDialogsOpen {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackDialogsOpen];
}

- (void)trackDialogsClosed {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackDialogsClosed];
}

- (void)trackContactsOpen {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackContactsOpen];
}

- (void)trackContactsClosed {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackContactsClosed];
}

- (void)trackMainScreensOpen {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackMainScreensOpen];
}

- (void)trackMainScreensClosed {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackMainScreensClosed];
}

- (void)trackOwnProfileOpen {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackOwnProfileOpen];
}

- (void)trackOwnProfileClosed {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackOwnProfileClosed];
}

- (void)trackTextSendWithPeer:(AMPeer *)peer {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackTextSendWithAMPeer:peer];
}

- (void)trackPhotoSendWithPeer:(AMPeer *)peer {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackPhotoSendWithAMPeer:peer];
}

- (void)trackVideoSendWithPeer:(AMPeer *)peer {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackVideoSendWithAMPeer:peer];
}

- (void)trackDocumentSendWithPeer:(AMPeer *)peer {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackDocumentSendWithAMPeer:peer];
}

- (void)trackActionError:(NSString *)action
                 withTag:(NSString *)tag
             withMessage:(NSString *)message {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackActionErrorWithNSString:action withNSString:tag withNSString:message];
}

- (void)trackActionSuccess:(NSString *)action {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackActionSuccessWithNSString:action];
}

- (void)trackActionTryAgain:(NSString *)action {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackActionTryAgainWithNSString:action];
}

- (void)trackActionCancel:(NSString *)action {
  [((ImActorModelModulesAnalytics *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAnalytics])) trackActionCancelWithNSString:action];
}

- (AMI18nEngine *)getFormatter {
  return [((ImActorModelModulesModules *) nil_chk(modules_)) getI18nEngine];
}

- (void)registerGooglePushWithProjectId:(jlong)projectId
                              withToken:(NSString *)token {
  [((ImActorModelModulesPushes *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getPushes])) registerGooglePushWithLong:projectId withNSString:token];
}

- (void)registerApplePushWithApnsId:(jint)apnsId
                          withToken:(NSString *)token {
  [((ImActorModelModulesPushes *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getPushes])) registerApplePushWithInt:apnsId withNSString:token];
}

- (id<DKPreferencesStorage>)getPreferences {
  return [((ImActorModelModulesModules *) nil_chk(modules_)) getPreferences];
}

- (id<AMCommand>)executeExternalCommand:(APRequest *)request {
  return [((ImActorModelModulesExternal *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getExternal])) externalMethodWithAPRequest:request];
}

- (void)forceNetworkCheck {
  [((AMActorApi *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getActorApi])) forceNetworkCheck];
}

@end

void AMMessenger_initWithConfiguration_(AMMessenger *self, AMConfiguration *configuration) {
  (void) NSObject_init(self);
  AMLog_setLogWithAMLogProvider_([((AMConfiguration *) nil_chk(configuration)) getLog]);
  DKEnvironment_setThreadingProviderWithAMThreadingProvider_([configuration getThreadingProvider]);
  DKEnvironment_setDispatcherProviderWithAMDispatcherProvider_([configuration getDispatcherProvider]);
  AMTiming *timing = new_AMTiming_initWithNSString_(@"MESSENGER_INIT");
  [timing sectionWithNSString:@"Crypto"];
  AMCryptoUtils_init__WithAMCryptoProvider_([configuration getCryptoProvider]);
  [timing sectionWithNSString:@"MVVM"];
  AMMVVMEngine_init__WithAMMainThreadProvider_([configuration getMainThreadProvider]);
  [timing sectionWithNSString:@"Actors"];
  [((DKActorSystem *) nil_chk(DKActorSystem_system())) setTraceInterfaceWithDKTraceInterface:new_AMActorTrace_init()];
  [((DKActorSystem *) nil_chk(DKActorSystem_system())) addDispatcherWithNSString:@"network"];
  [((DKActorSystem *) nil_chk(DKActorSystem_system())) addDispatcherWithNSString:@"heavy"];
  [((DKActorSystem *) nil_chk(DKActorSystem_system())) addDispatcherWithNSString:@"updates" withInt:1];
  if (![((id<AMMainThreadProvider>) nil_chk([configuration getMainThreadProvider])) isSingleThread]) {
    [((DKActorSystem *) nil_chk(DKActorSystem_system())) addDispatcherWithNSString:@"display_list"];
    [((DKActorSystem *) nil_chk(DKActorSystem_system())) addDispatcherWithNSString:@"db" withInt:1];
  }
  [timing sectionWithNSString:@"Modules:Create"];
  self->modules_ = new_ImActorModelModulesModules_initWithAMMessenger_withAMConfiguration_(self, configuration);
  [timing sectionWithNSString:@"Modules:Run"];
  [self->modules_ run];
  [timing end];
}

AMMessenger *new_AMMessenger_initWithConfiguration_(AMConfiguration *configuration) {
  AMMessenger *self = [AMMessenger alloc];
  AMMessenger_initWithConfiguration_(self, configuration);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMMessenger)
