//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core-crypto/src/main/java/org/bouncycastle/crypto/encodings/OAEPEncoding.java
//

#ifndef _OrgBouncycastleCryptoEncodingsOAEPEncoding_H_
#define _OrgBouncycastleCryptoEncodingsOAEPEncoding_H_

#include "J2ObjC_header.h"
#include "org/bouncycastle/crypto/AsymmetricBlockCipher.h"

@class IOSByteArray;
@class OrgBouncycastleCryptoParamsParametersWithRandom;
@protocol OrgBouncycastleCryptoDigest;

@interface OrgBouncycastleCryptoEncodingsOAEPEncoding : NSObject < OrgBouncycastleCryptoAsymmetricBlockCipher >

#pragma mark Public

- (instancetype)initWithOrgBouncycastleCryptoAsymmetricBlockCipher:(id<OrgBouncycastleCryptoAsymmetricBlockCipher>)cipher;

- (instancetype)initWithOrgBouncycastleCryptoAsymmetricBlockCipher:(id<OrgBouncycastleCryptoAsymmetricBlockCipher>)cipher
                                   withOrgBouncycastleCryptoDigest:(id<OrgBouncycastleCryptoDigest>)hash_;

- (instancetype)initWithOrgBouncycastleCryptoAsymmetricBlockCipher:(id<OrgBouncycastleCryptoAsymmetricBlockCipher>)cipher
                                   withOrgBouncycastleCryptoDigest:(id<OrgBouncycastleCryptoDigest>)hash_
                                                     withByteArray:(IOSByteArray *)encodingParams;

- (instancetype)initWithOrgBouncycastleCryptoAsymmetricBlockCipher:(id<OrgBouncycastleCryptoAsymmetricBlockCipher>)cipher
                                   withOrgBouncycastleCryptoDigest:(id<OrgBouncycastleCryptoDigest>)hash_
                                   withOrgBouncycastleCryptoDigest:(id<OrgBouncycastleCryptoDigest>)mgf1Hash
                                                     withByteArray:(IOSByteArray *)encodingParams;

- (IOSByteArray *)decodeBlockWithByteArray:(IOSByteArray *)inArg
                                   withInt:(jint)inOff
                                   withInt:(jint)inLen;

- (IOSByteArray *)encodeBlockWithByteArray:(IOSByteArray *)inArg
                                   withInt:(jint)inOff
                                   withInt:(jint)inLen;

- (jint)getInputBlockSize;

- (jint)getOutputBlockSize;

- (id<OrgBouncycastleCryptoAsymmetricBlockCipher>)getUnderlyingCipher;

- (void)init__WithBoolean:(jboolean)forEncryption
withOrgBouncycastleCryptoParamsParametersWithRandom:(OrgBouncycastleCryptoParamsParametersWithRandom *)param OBJC_METHOD_FAMILY_NONE;

- (IOSByteArray *)processBlockWithByteArray:(IOSByteArray *)inArg
                                    withInt:(jint)inOff
                                    withInt:(jint)inLen;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoEncodingsOAEPEncoding)

FOUNDATION_EXPORT void OrgBouncycastleCryptoEncodingsOAEPEncoding_initWithOrgBouncycastleCryptoAsymmetricBlockCipher_(OrgBouncycastleCryptoEncodingsOAEPEncoding *self, id<OrgBouncycastleCryptoAsymmetricBlockCipher> cipher);

FOUNDATION_EXPORT OrgBouncycastleCryptoEncodingsOAEPEncoding *new_OrgBouncycastleCryptoEncodingsOAEPEncoding_initWithOrgBouncycastleCryptoAsymmetricBlockCipher_(id<OrgBouncycastleCryptoAsymmetricBlockCipher> cipher) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgBouncycastleCryptoEncodingsOAEPEncoding_initWithOrgBouncycastleCryptoAsymmetricBlockCipher_withOrgBouncycastleCryptoDigest_(OrgBouncycastleCryptoEncodingsOAEPEncoding *self, id<OrgBouncycastleCryptoAsymmetricBlockCipher> cipher, id<OrgBouncycastleCryptoDigest> hash_);

FOUNDATION_EXPORT OrgBouncycastleCryptoEncodingsOAEPEncoding *new_OrgBouncycastleCryptoEncodingsOAEPEncoding_initWithOrgBouncycastleCryptoAsymmetricBlockCipher_withOrgBouncycastleCryptoDigest_(id<OrgBouncycastleCryptoAsymmetricBlockCipher> cipher, id<OrgBouncycastleCryptoDigest> hash_) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgBouncycastleCryptoEncodingsOAEPEncoding_initWithOrgBouncycastleCryptoAsymmetricBlockCipher_withOrgBouncycastleCryptoDigest_withByteArray_(OrgBouncycastleCryptoEncodingsOAEPEncoding *self, id<OrgBouncycastleCryptoAsymmetricBlockCipher> cipher, id<OrgBouncycastleCryptoDigest> hash_, IOSByteArray *encodingParams);

FOUNDATION_EXPORT OrgBouncycastleCryptoEncodingsOAEPEncoding *new_OrgBouncycastleCryptoEncodingsOAEPEncoding_initWithOrgBouncycastleCryptoAsymmetricBlockCipher_withOrgBouncycastleCryptoDigest_withByteArray_(id<OrgBouncycastleCryptoAsymmetricBlockCipher> cipher, id<OrgBouncycastleCryptoDigest> hash_, IOSByteArray *encodingParams) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgBouncycastleCryptoEncodingsOAEPEncoding_initWithOrgBouncycastleCryptoAsymmetricBlockCipher_withOrgBouncycastleCryptoDigest_withOrgBouncycastleCryptoDigest_withByteArray_(OrgBouncycastleCryptoEncodingsOAEPEncoding *self, id<OrgBouncycastleCryptoAsymmetricBlockCipher> cipher, id<OrgBouncycastleCryptoDigest> hash_, id<OrgBouncycastleCryptoDigest> mgf1Hash, IOSByteArray *encodingParams);

FOUNDATION_EXPORT OrgBouncycastleCryptoEncodingsOAEPEncoding *new_OrgBouncycastleCryptoEncodingsOAEPEncoding_initWithOrgBouncycastleCryptoAsymmetricBlockCipher_withOrgBouncycastleCryptoDigest_withOrgBouncycastleCryptoDigest_withByteArray_(id<OrgBouncycastleCryptoAsymmetricBlockCipher> cipher, id<OrgBouncycastleCryptoDigest> hash_, id<OrgBouncycastleCryptoDigest> mgf1Hash, IOSByteArray *encodingParams) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoEncodingsOAEPEncoding)

#endif // _OrgBouncycastleCryptoEncodingsOAEPEncoding_H_
