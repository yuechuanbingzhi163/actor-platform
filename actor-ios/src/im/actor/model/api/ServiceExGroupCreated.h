//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/ServiceExGroupCreated.java
//

#ifndef _ImActorModelApiServiceExGroupCreated_H_
#define _ImActorModelApiServiceExGroupCreated_H_

@class BSBserValues;
@class BSBserWriter;

#include "J2ObjC_header.h"
#include "im/actor/model/api/ServiceEx.h"

@interface ImActorModelApiServiceExGroupCreated : ImActorModelApiServiceEx {
}

- (instancetype)init;

- (jint)getHeader;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiServiceExGroupCreated)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiServiceExGroupCreated)

#endif // _ImActorModelApiServiceExGroupCreated_H_