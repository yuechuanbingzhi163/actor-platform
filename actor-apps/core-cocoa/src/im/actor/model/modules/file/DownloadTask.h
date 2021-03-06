//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/modules/file/DownloadTask.java
//

#ifndef _ImActorModelModulesFileDownloadTask_H_
#define _ImActorModelModulesFileDownloadTask_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/utils/ModuleActor.h"

@class AMFileReference;
@class DKActorRef;
@class ImActorModelModulesModules;

@interface ImActorModelModulesFileDownloadTask : ImActorModelModulesUtilsModuleActor

#pragma mark Public

- (instancetype)initWithAMFileReference:(AMFileReference *)fileReference
                         withDKActorRef:(DKActorRef *)manager
         withImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (void)onReceiveWithId:(id)message;

- (void)preStart;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFileDownloadTask)

FOUNDATION_EXPORT void ImActorModelModulesFileDownloadTask_initWithAMFileReference_withDKActorRef_withImActorModelModulesModules_(ImActorModelModulesFileDownloadTask *self, AMFileReference *fileReference, DKActorRef *manager, ImActorModelModulesModules *messenger);

FOUNDATION_EXPORT ImActorModelModulesFileDownloadTask *new_ImActorModelModulesFileDownloadTask_initWithAMFileReference_withDKActorRef_withImActorModelModulesModules_(AMFileReference *fileReference, DKActorRef *manager, ImActorModelModulesModules *messenger) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFileDownloadTask)

#endif // _ImActorModelModulesFileDownloadTask_H_
