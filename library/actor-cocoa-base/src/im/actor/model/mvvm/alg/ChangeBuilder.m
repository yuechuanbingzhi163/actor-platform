//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/mvvm/alg/ChangeBuilder.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/mvvm/ChangeDescription.h"
#include "im/actor/model/mvvm/alg/ChangeBuilder.h"
#include "java/util/ArrayList.h"

@interface ImActorModelMvvmAlgChangeBuilder ()

- (instancetype)init;

@end

__attribute__((unused)) static void ImActorModelMvvmAlgChangeBuilder_init(ImActorModelMvvmAlgChangeBuilder *self);

__attribute__((unused)) static ImActorModelMvvmAlgChangeBuilder *new_ImActorModelMvvmAlgChangeBuilder_init() NS_RETURNS_RETAINED;

@interface ImActorModelMvvmAlgChangeBuilder_State : NSObject {
 @public
  jboolean wasDeleted_;
  jint startingIndex_;
  jboolean wasUpdated_;
  jboolean wasMoved_;
  jboolean wasAdded_;
  id item_;
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelMvvmAlgChangeBuilder_State)

J2OBJC_FIELD_SETTER(ImActorModelMvvmAlgChangeBuilder_State, item_, id)

__attribute__((unused)) static void ImActorModelMvvmAlgChangeBuilder_State_init(ImActorModelMvvmAlgChangeBuilder_State *self);

__attribute__((unused)) static ImActorModelMvvmAlgChangeBuilder_State *new_ImActorModelMvvmAlgChangeBuilder_State_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelMvvmAlgChangeBuilder_State)

@implementation ImActorModelMvvmAlgChangeBuilder

+ (JavaUtilArrayList *)processAndroidModificationsWithJavaUtilArrayList:(JavaUtilArrayList *)modifications
                                                  withJavaUtilArrayList:(JavaUtilArrayList *)initialList {
  return ImActorModelMvvmAlgChangeBuilder_processAndroidModificationsWithJavaUtilArrayList_withJavaUtilArrayList_(modifications, initialList);
}

+ (JavaUtilArrayList *)processAppleModificationsWithJavaUtilArrayList:(JavaUtilArrayList *)modifications
                                                withJavaUtilArrayList:(JavaUtilArrayList *)initialList {
  return ImActorModelMvvmAlgChangeBuilder_processAppleModificationsWithJavaUtilArrayList_withJavaUtilArrayList_(modifications, initialList);
}

- (instancetype)init {
  ImActorModelMvvmAlgChangeBuilder_init(self);
  return self;
}

@end

JavaUtilArrayList *ImActorModelMvvmAlgChangeBuilder_processAndroidModificationsWithJavaUtilArrayList_withJavaUtilArrayList_(JavaUtilArrayList *modifications, JavaUtilArrayList *initialList) {
  ImActorModelMvvmAlgChangeBuilder_initialize();
  return modifications;
}

JavaUtilArrayList *ImActorModelMvvmAlgChangeBuilder_processAppleModificationsWithJavaUtilArrayList_withJavaUtilArrayList_(JavaUtilArrayList *modifications, JavaUtilArrayList *initialList) {
  ImActorModelMvvmAlgChangeBuilder_initialize();
  JavaUtilArrayList *states = new_JavaUtilArrayList_init();
  JavaUtilArrayList *current = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [((JavaUtilArrayList *) nil_chk(initialList)) size]; i++) {
    ImActorModelMvvmAlgChangeBuilder_State *state = new_ImActorModelMvvmAlgChangeBuilder_State_init();
    state->startingIndex_ = i;
    [states addWithId:state];
    [current addWithId:state];
  }
  for (AMChangeDescription * __strong m in nil_chk(modifications)) {
    if ([((AMChangeDescription *) nil_chk(m)) getOperationType] == AMChangeDescription_OperationTypeEnum_get_REMOVE()) {
      for (jint i = 0; i < [m getLength]; i++) {
        ImActorModelMvvmAlgChangeBuilder_State *state = [current removeWithInt:[m getIndex]];
        ((ImActorModelMvvmAlgChangeBuilder_State *) nil_chk(state))->wasDeleted_ = YES;
      }
    }
    else if ([m getOperationType] == AMChangeDescription_OperationTypeEnum_get_ADD()) {
      jint index = [m getIndex];
      for (id __strong itm in nil_chk([m getItems])) {
        ImActorModelMvvmAlgChangeBuilder_State *state = new_ImActorModelMvvmAlgChangeBuilder_State_init();
        state->wasAdded_ = YES;
        state->item_ = itm;
        [current addWithInt:index++ withId:state];
      }
    }
    else if ([m getOperationType] == AMChangeDescription_OperationTypeEnum_get_MOVE()) {
      ImActorModelMvvmAlgChangeBuilder_State *state = [current removeWithInt:[m getIndex]];
      [current addWithInt:[m getDestIndex] withId:state];
      if (!((ImActorModelMvvmAlgChangeBuilder_State *) nil_chk(state))->wasAdded_) {
        state->wasMoved_ = YES;
      }
    }
    else if ([m getOperationType] == AMChangeDescription_OperationTypeEnum_get_UPDATE()) {
      jint index = [m getIndex];
      for (id __strong itm in nil_chk([m getItems])) {
        ImActorModelMvvmAlgChangeBuilder_State *state = [current getWithInt:index++];
        ((ImActorModelMvvmAlgChangeBuilder_State *) nil_chk(state))->item_ = itm;
        if (!state->wasAdded_) {
          state->wasUpdated_ = YES;
        }
      }
    }
  }
  JavaUtilArrayList *res = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [states size]; i++) {
    ImActorModelMvvmAlgChangeBuilder_State *s = [states getWithInt:i];
    if (((ImActorModelMvvmAlgChangeBuilder_State *) nil_chk(s))->wasDeleted_) {
      [res addWithId:AMChangeDescription_removeWithInt_(s->startingIndex_)];
    }
  }
  for (jint i = 0; i < [current size]; i++) {
    ImActorModelMvvmAlgChangeBuilder_State *s = [current getWithInt:i];
    if (((ImActorModelMvvmAlgChangeBuilder_State *) nil_chk(s))->wasMoved_ && s->startingIndex_ != i) {
      [res addWithId:AMChangeDescription_moveWithInt_withInt_(s->startingIndex_, i)];
    }
    if (s->wasUpdated_) {
      [res addWithId:AMChangeDescription_updateWithInt_withId_(s->startingIndex_, s->item_)];
    }
    if (s->wasAdded_) {
      [res addWithId:AMChangeDescription_addWithInt_withId_(i, s->item_)];
    }
  }
  return res;
}

void ImActorModelMvvmAlgChangeBuilder_init(ImActorModelMvvmAlgChangeBuilder *self) {
  (void) NSObject_init(self);
}

ImActorModelMvvmAlgChangeBuilder *new_ImActorModelMvvmAlgChangeBuilder_init() {
  ImActorModelMvvmAlgChangeBuilder *self = [ImActorModelMvvmAlgChangeBuilder alloc];
  ImActorModelMvvmAlgChangeBuilder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelMvvmAlgChangeBuilder)

@implementation ImActorModelMvvmAlgChangeBuilder_State

- (instancetype)init {
  ImActorModelMvvmAlgChangeBuilder_State_init(self);
  return self;
}

@end

void ImActorModelMvvmAlgChangeBuilder_State_init(ImActorModelMvvmAlgChangeBuilder_State *self) {
  (void) NSObject_init(self);
  self->startingIndex_ = -1;
}

ImActorModelMvvmAlgChangeBuilder_State *new_ImActorModelMvvmAlgChangeBuilder_State_init() {
  ImActorModelMvvmAlgChangeBuilder_State *self = [ImActorModelMvvmAlgChangeBuilder_State alloc];
  ImActorModelMvvmAlgChangeBuilder_State_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelMvvmAlgChangeBuilder_State)