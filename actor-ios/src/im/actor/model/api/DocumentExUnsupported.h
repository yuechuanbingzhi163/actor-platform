//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/DocumentExUnsupported.java
//

#ifndef _ImActorModelApiDocumentExUnsupported_H_
#define _ImActorModelApiDocumentExUnsupported_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/api/DocumentEx.h"

@interface ImActorModelApiDocumentExUnsupported : ImActorModelApiDocumentEx {
}

- (instancetype)initWithInt:(jint)key
              withByteArray:(IOSByteArray *)content;

- (jint)getHeader;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiDocumentExUnsupported)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiDocumentExUnsupported)

#endif // _ImActorModelApiDocumentExUnsupported_H_