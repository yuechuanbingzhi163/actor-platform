//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/bser/BserObject.java
//

#ifndef _BSBserObject_H_
#define _BSBserObject_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"

@interface BSBserObject : NSObject {
}

- (instancetype)init;

- (IOSByteArray *)toByteArray;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(BSBserObject)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef BSBserObject ImActorModelDroidkitBserBserObject;

J2OBJC_TYPE_LITERAL_HEADER(BSBserObject)

#endif // _BSBserObject_H_