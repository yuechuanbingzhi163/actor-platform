//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core-crypto/src/main/java/org/bouncycastle/math/ec/ECAlgorithms.java
//


#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/math/ec/ECAlgorithms.h"
#include "org/bouncycastle/math/ec/ECConstants.h"
#include "org/bouncycastle/math/ec/ECCurve.h"
#include "org/bouncycastle/math/ec/ECFieldElement.h"
#include "org/bouncycastle/math/ec/ECPoint.h"
#include "org/bouncycastle/math/ec/ECPointMap.h"
#include "org/bouncycastle/math/ec/WNafPreCompInfo.h"
#include "org/bouncycastle/math/ec/WNafUtil.h"
#include "org/bouncycastle/math/ec/endo/ECEndomorphism.h"
#include "org/bouncycastle/math/ec/endo/GLVEndomorphism.h"
#include "org/bouncycastle/math/field/FiniteField.h"
#include "org/bouncycastle/math/field/PolynomialExtensionField.h"

@interface OrgBouncycastleMathEcECAlgorithms ()

+ (OrgBouncycastleMathEcECPoint *)implShamirsTrickWNafWithOrgBouncycastleMathEcECPointArray:(IOSObjectArray *)preCompP
                                                      withOrgBouncycastleMathEcECPointArray:(IOSObjectArray *)preCompNegP
                                                                              withByteArray:(IOSByteArray *)wnafP
                                                      withOrgBouncycastleMathEcECPointArray:(IOSObjectArray *)preCompQ
                                                      withOrgBouncycastleMathEcECPointArray:(IOSObjectArray *)preCompNegQ
                                                                              withByteArray:(IOSByteArray *)wnafQ;

+ (OrgBouncycastleMathEcECPoint *)implSumOfMultipliesWithBooleanArray:(IOSBooleanArray *)negs
                        withOrgBouncycastleMathEcWNafPreCompInfoArray:(IOSObjectArray *)infos
                                                       withByteArray2:(IOSObjectArray *)wnafs;

@end

__attribute__((unused)) static OrgBouncycastleMathEcECPoint *OrgBouncycastleMathEcECAlgorithms_implShamirsTrickWNafWithOrgBouncycastleMathEcECPointArray_withOrgBouncycastleMathEcECPointArray_withByteArray_withOrgBouncycastleMathEcECPointArray_withOrgBouncycastleMathEcECPointArray_withByteArray_(IOSObjectArray *preCompP, IOSObjectArray *preCompNegP, IOSByteArray *wnafP, IOSObjectArray *preCompQ, IOSObjectArray *preCompNegQ, IOSByteArray *wnafQ);

__attribute__((unused)) static OrgBouncycastleMathEcECPoint *OrgBouncycastleMathEcECAlgorithms_implSumOfMultipliesWithBooleanArray_withOrgBouncycastleMathEcWNafPreCompInfoArray_withByteArray2_(IOSBooleanArray *negs, IOSObjectArray *infos, IOSObjectArray *wnafs);

@implementation OrgBouncycastleMathEcECAlgorithms

+ (jboolean)isF2mCurveWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)c {
  return OrgBouncycastleMathEcECAlgorithms_isF2mCurveWithOrgBouncycastleMathEcECCurve_(c);
}

+ (jboolean)isFpCurveWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)c {
  return OrgBouncycastleMathEcECAlgorithms_isFpCurveWithOrgBouncycastleMathEcECCurve_(c);
}

+ (OrgBouncycastleMathEcECPoint *)sumOfMultipliesWithOrgBouncycastleMathEcECPointArray:(IOSObjectArray *)ps
                                                           withJavaMathBigIntegerArray:(IOSObjectArray *)ks {
  return OrgBouncycastleMathEcECAlgorithms_sumOfMultipliesWithOrgBouncycastleMathEcECPointArray_withJavaMathBigIntegerArray_(ps, ks);
}

+ (OrgBouncycastleMathEcECPoint *)sumOfTwoMultipliesWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)P
                                                              withJavaMathBigInteger:(JavaMathBigInteger *)a
                                                    withOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)Q
                                                              withJavaMathBigInteger:(JavaMathBigInteger *)b {
  return OrgBouncycastleMathEcECAlgorithms_sumOfTwoMultipliesWithOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_withOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_(P, a, Q, b);
}

+ (OrgBouncycastleMathEcECPoint *)shamirsTrickWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)P
                                                        withJavaMathBigInteger:(JavaMathBigInteger *)k
                                              withOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)Q
                                                        withJavaMathBigInteger:(JavaMathBigInteger *)l {
  return OrgBouncycastleMathEcECAlgorithms_shamirsTrickWithOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_withOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_(P, k, Q, l);
}

+ (OrgBouncycastleMathEcECPoint *)importPointWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)c
                                             withOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)p {
  return OrgBouncycastleMathEcECAlgorithms_importPointWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECPoint_(c, p);
}

+ (void)montgomeryTrickWithOrgBouncycastleMathEcECFieldElementArray:(IOSObjectArray *)zs
                                                            withInt:(jint)off
                                                            withInt:(jint)len {
  OrgBouncycastleMathEcECAlgorithms_montgomeryTrickWithOrgBouncycastleMathEcECFieldElementArray_withInt_withInt_(zs, off, len);
}

+ (OrgBouncycastleMathEcECPoint *)referenceMultiplyWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)p
                                                             withJavaMathBigInteger:(JavaMathBigInteger *)k {
  return OrgBouncycastleMathEcECAlgorithms_referenceMultiplyWithOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_(p, k);
}

+ (OrgBouncycastleMathEcECPoint *)validatePointWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)p {
  return OrgBouncycastleMathEcECAlgorithms_validatePointWithOrgBouncycastleMathEcECPoint_(p);
}

+ (OrgBouncycastleMathEcECPoint *)implShamirsTrickJsfWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)P
                                                               withJavaMathBigInteger:(JavaMathBigInteger *)k
                                                     withOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)Q
                                                               withJavaMathBigInteger:(JavaMathBigInteger *)l {
  return OrgBouncycastleMathEcECAlgorithms_implShamirsTrickJsfWithOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_withOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_(P, k, Q, l);
}

+ (OrgBouncycastleMathEcECPoint *)implShamirsTrickWNafWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)P
                                                                withJavaMathBigInteger:(JavaMathBigInteger *)k
                                                      withOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)Q
                                                                withJavaMathBigInteger:(JavaMathBigInteger *)l {
  return OrgBouncycastleMathEcECAlgorithms_implShamirsTrickWNafWithOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_withOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_(P, k, Q, l);
}

+ (OrgBouncycastleMathEcECPoint *)implShamirsTrickWNafWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)P
                                                                withJavaMathBigInteger:(JavaMathBigInteger *)k
                                                   withOrgBouncycastleMathEcECPointMap:(id<OrgBouncycastleMathEcECPointMap>)pointMapQ
                                                                withJavaMathBigInteger:(JavaMathBigInteger *)l {
  return OrgBouncycastleMathEcECAlgorithms_implShamirsTrickWNafWithOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_withOrgBouncycastleMathEcECPointMap_withJavaMathBigInteger_(P, k, pointMapQ, l);
}

+ (OrgBouncycastleMathEcECPoint *)implShamirsTrickWNafWithOrgBouncycastleMathEcECPointArray:(IOSObjectArray *)preCompP
                                                      withOrgBouncycastleMathEcECPointArray:(IOSObjectArray *)preCompNegP
                                                                              withByteArray:(IOSByteArray *)wnafP
                                                      withOrgBouncycastleMathEcECPointArray:(IOSObjectArray *)preCompQ
                                                      withOrgBouncycastleMathEcECPointArray:(IOSObjectArray *)preCompNegQ
                                                                              withByteArray:(IOSByteArray *)wnafQ {
  return OrgBouncycastleMathEcECAlgorithms_implShamirsTrickWNafWithOrgBouncycastleMathEcECPointArray_withOrgBouncycastleMathEcECPointArray_withByteArray_withOrgBouncycastleMathEcECPointArray_withOrgBouncycastleMathEcECPointArray_withByteArray_(preCompP, preCompNegP, wnafP, preCompQ, preCompNegQ, wnafQ);
}

+ (OrgBouncycastleMathEcECPoint *)implSumOfMultipliesWithOrgBouncycastleMathEcECPointArray:(IOSObjectArray *)ps
                                                               withJavaMathBigIntegerArray:(IOSObjectArray *)ks {
  return OrgBouncycastleMathEcECAlgorithms_implSumOfMultipliesWithOrgBouncycastleMathEcECPointArray_withJavaMathBigIntegerArray_(ps, ks);
}

+ (OrgBouncycastleMathEcECPoint *)implSumOfMultipliesGLVWithOrgBouncycastleMathEcECPointArray:(IOSObjectArray *)ps
                                                                  withJavaMathBigIntegerArray:(IOSObjectArray *)ks
                                                 withOrgBouncycastleMathEcEndoGLVEndomorphism:(id<OrgBouncycastleMathEcEndoGLVEndomorphism>)glvEndomorphism {
  return OrgBouncycastleMathEcECAlgorithms_implSumOfMultipliesGLVWithOrgBouncycastleMathEcECPointArray_withJavaMathBigIntegerArray_withOrgBouncycastleMathEcEndoGLVEndomorphism_(ps, ks, glvEndomorphism);
}

+ (OrgBouncycastleMathEcECPoint *)implSumOfMultipliesWithOrgBouncycastleMathEcECPointArray:(IOSObjectArray *)ps
                                                       withOrgBouncycastleMathEcECPointMap:(id<OrgBouncycastleMathEcECPointMap>)pointMap
                                                               withJavaMathBigIntegerArray:(IOSObjectArray *)ks {
  return OrgBouncycastleMathEcECAlgorithms_implSumOfMultipliesWithOrgBouncycastleMathEcECPointArray_withOrgBouncycastleMathEcECPointMap_withJavaMathBigIntegerArray_(ps, pointMap, ks);
}

+ (OrgBouncycastleMathEcECPoint *)implSumOfMultipliesWithBooleanArray:(IOSBooleanArray *)negs
                        withOrgBouncycastleMathEcWNafPreCompInfoArray:(IOSObjectArray *)infos
                                                       withByteArray2:(IOSObjectArray *)wnafs {
  return OrgBouncycastleMathEcECAlgorithms_implSumOfMultipliesWithBooleanArray_withOrgBouncycastleMathEcWNafPreCompInfoArray_withByteArray2_(negs, infos, wnafs);
}

- (instancetype)init {
  OrgBouncycastleMathEcECAlgorithms_init(self);
  return self;
}

@end

jboolean OrgBouncycastleMathEcECAlgorithms_isF2mCurveWithOrgBouncycastleMathEcECCurve_(OrgBouncycastleMathEcECCurve *c) {
  OrgBouncycastleMathEcECAlgorithms_initialize();
  id<OrgBouncycastleMathFieldFiniteField> field = [((OrgBouncycastleMathEcECCurve *) nil_chk(c)) getField];
  return [((id<OrgBouncycastleMathFieldFiniteField>) nil_chk(field)) getDimension] > 1 && [((JavaMathBigInteger *) nil_chk([field getCharacteristic])) isEqual:OrgBouncycastleMathEcECConstants_get_TWO_()] && [OrgBouncycastleMathFieldPolynomialExtensionField_class_() isInstance:field];
}

jboolean OrgBouncycastleMathEcECAlgorithms_isFpCurveWithOrgBouncycastleMathEcECCurve_(OrgBouncycastleMathEcECCurve *c) {
  OrgBouncycastleMathEcECAlgorithms_initialize();
  return [((id<OrgBouncycastleMathFieldFiniteField>) nil_chk([((OrgBouncycastleMathEcECCurve *) nil_chk(c)) getField])) getDimension] == 1;
}

OrgBouncycastleMathEcECPoint *OrgBouncycastleMathEcECAlgorithms_sumOfMultipliesWithOrgBouncycastleMathEcECPointArray_withJavaMathBigIntegerArray_(IOSObjectArray *ps, IOSObjectArray *ks) {
  OrgBouncycastleMathEcECAlgorithms_initialize();
  if (ps == nil || ks == nil || ps->size_ != ks->size_ || ps->size_ < 1) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"point and scalar arrays should be non-null, and of equal, non-zero, length");
  }
  jint count = ((IOSObjectArray *) nil_chk(ps))->size_;
  switch (count) {
    case 1:
    return [((OrgBouncycastleMathEcECPoint *) nil_chk(IOSObjectArray_Get(ps, 0))) multiplyWithJavaMathBigInteger:IOSObjectArray_Get(nil_chk(ks), 0)];
    case 2:
    return OrgBouncycastleMathEcECAlgorithms_sumOfTwoMultipliesWithOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_withOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_(IOSObjectArray_Get(ps, 0), IOSObjectArray_Get(nil_chk(ks), 0), IOSObjectArray_Get(ps, 1), IOSObjectArray_Get(ks, 1));
    default:
    break;
  }
  OrgBouncycastleMathEcECPoint *p = IOSObjectArray_Get(ps, 0);
  OrgBouncycastleMathEcECCurve *c = [((OrgBouncycastleMathEcECPoint *) nil_chk(p)) getCurve];
  IOSObjectArray *imported = [IOSObjectArray newArrayWithLength:count type:OrgBouncycastleMathEcECPoint_class_()];
  (void) IOSObjectArray_Set(imported, 0, p);
  for (jint i = 1; i < count; ++i) {
    (void) IOSObjectArray_Set(imported, i, OrgBouncycastleMathEcECAlgorithms_importPointWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECPoint_(c, IOSObjectArray_Get(ps, i)));
  }
  id<OrgBouncycastleMathEcEndoECEndomorphism> endomorphism = [((OrgBouncycastleMathEcECCurve *) nil_chk(c)) getEndomorphism];
  if ([OrgBouncycastleMathEcEndoGLVEndomorphism_class_() isInstance:endomorphism]) {
    return OrgBouncycastleMathEcECAlgorithms_validatePointWithOrgBouncycastleMathEcECPoint_(OrgBouncycastleMathEcECAlgorithms_implSumOfMultipliesGLVWithOrgBouncycastleMathEcECPointArray_withJavaMathBigIntegerArray_withOrgBouncycastleMathEcEndoGLVEndomorphism_(imported, ks, (id<OrgBouncycastleMathEcEndoGLVEndomorphism>) check_protocol_cast(endomorphism, @protocol(OrgBouncycastleMathEcEndoGLVEndomorphism))));
  }
  return OrgBouncycastleMathEcECAlgorithms_validatePointWithOrgBouncycastleMathEcECPoint_(OrgBouncycastleMathEcECAlgorithms_implSumOfMultipliesWithOrgBouncycastleMathEcECPointArray_withJavaMathBigIntegerArray_(imported, ks));
}

OrgBouncycastleMathEcECPoint *OrgBouncycastleMathEcECAlgorithms_sumOfTwoMultipliesWithOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_withOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_(OrgBouncycastleMathEcECPoint *P, JavaMathBigInteger *a, OrgBouncycastleMathEcECPoint *Q, JavaMathBigInteger *b) {
  OrgBouncycastleMathEcECAlgorithms_initialize();
  OrgBouncycastleMathEcECCurve *cp = [((OrgBouncycastleMathEcECPoint *) nil_chk(P)) getCurve];
  Q = OrgBouncycastleMathEcECAlgorithms_importPointWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECPoint_(cp, Q);
  if ([cp isKindOfClass:[OrgBouncycastleMathEcECCurve_F2m class]]) {
    OrgBouncycastleMathEcECCurve_F2m *f2mCurve = (OrgBouncycastleMathEcECCurve_F2m *) check_class_cast(cp, [OrgBouncycastleMathEcECCurve_F2m class]);
    if ([((OrgBouncycastleMathEcECCurve_F2m *) nil_chk(f2mCurve)) isKoblitz]) {
      return OrgBouncycastleMathEcECAlgorithms_validatePointWithOrgBouncycastleMathEcECPoint_([((OrgBouncycastleMathEcECPoint *) nil_chk([P multiplyWithJavaMathBigInteger:a])) addWithOrgBouncycastleMathEcECPoint:[((OrgBouncycastleMathEcECPoint *) nil_chk(Q)) multiplyWithJavaMathBigInteger:b]]);
    }
  }
  id<OrgBouncycastleMathEcEndoECEndomorphism> endomorphism = [((OrgBouncycastleMathEcECCurve *) nil_chk(cp)) getEndomorphism];
  if ([OrgBouncycastleMathEcEndoGLVEndomorphism_class_() isInstance:endomorphism]) {
    return OrgBouncycastleMathEcECAlgorithms_validatePointWithOrgBouncycastleMathEcECPoint_(OrgBouncycastleMathEcECAlgorithms_implSumOfMultipliesGLVWithOrgBouncycastleMathEcECPointArray_withJavaMathBigIntegerArray_withOrgBouncycastleMathEcEndoGLVEndomorphism_([IOSObjectArray newArrayWithObjects:(id[]){ P, Q } count:2 type:OrgBouncycastleMathEcECPoint_class_()], [IOSObjectArray newArrayWithObjects:(id[]){ a, b } count:2 type:JavaMathBigInteger_class_()], (id<OrgBouncycastleMathEcEndoGLVEndomorphism>) check_protocol_cast(endomorphism, @protocol(OrgBouncycastleMathEcEndoGLVEndomorphism))));
  }
  return OrgBouncycastleMathEcECAlgorithms_validatePointWithOrgBouncycastleMathEcECPoint_(OrgBouncycastleMathEcECAlgorithms_implShamirsTrickWNafWithOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_withOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_(P, a, Q, b));
}

OrgBouncycastleMathEcECPoint *OrgBouncycastleMathEcECAlgorithms_shamirsTrickWithOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_withOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_(OrgBouncycastleMathEcECPoint *P, JavaMathBigInteger *k, OrgBouncycastleMathEcECPoint *Q, JavaMathBigInteger *l) {
  OrgBouncycastleMathEcECAlgorithms_initialize();
  OrgBouncycastleMathEcECCurve *cp = [((OrgBouncycastleMathEcECPoint *) nil_chk(P)) getCurve];
  Q = OrgBouncycastleMathEcECAlgorithms_importPointWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECPoint_(cp, Q);
  return OrgBouncycastleMathEcECAlgorithms_validatePointWithOrgBouncycastleMathEcECPoint_(OrgBouncycastleMathEcECAlgorithms_implShamirsTrickJsfWithOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_withOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_(P, k, Q, l));
}

OrgBouncycastleMathEcECPoint *OrgBouncycastleMathEcECAlgorithms_importPointWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECPoint_(OrgBouncycastleMathEcECCurve *c, OrgBouncycastleMathEcECPoint *p) {
  OrgBouncycastleMathEcECAlgorithms_initialize();
  OrgBouncycastleMathEcECCurve *cp = [((OrgBouncycastleMathEcECPoint *) nil_chk(p)) getCurve];
  if (![((OrgBouncycastleMathEcECCurve *) nil_chk(c)) equalsWithOrgBouncycastleMathEcECCurve:cp]) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Point must be on the same curve");
  }
  return [c importPointWithOrgBouncycastleMathEcECPoint:p];
}

void OrgBouncycastleMathEcECAlgorithms_montgomeryTrickWithOrgBouncycastleMathEcECFieldElementArray_withInt_withInt_(IOSObjectArray *zs, jint off, jint len) {
  OrgBouncycastleMathEcECAlgorithms_initialize();
  IOSObjectArray *c = [IOSObjectArray newArrayWithLength:len type:OrgBouncycastleMathEcECFieldElement_class_()];
  (void) IOSObjectArray_Set(c, 0, IOSObjectArray_Get(nil_chk(zs), off));
  jint i = 0;
  while (++i < len) {
    (void) IOSObjectArray_Set(c, i, [((OrgBouncycastleMathEcECFieldElement *) nil_chk(IOSObjectArray_Get(c, i - 1))) multiplyWithOrgBouncycastleMathEcECFieldElement:IOSObjectArray_Get(zs, off + i)]);
  }
  OrgBouncycastleMathEcECFieldElement *u = [((OrgBouncycastleMathEcECFieldElement *) nil_chk(IOSObjectArray_Get(c, --i))) invert];
  while (i > 0) {
    jint j = off + i--;
    OrgBouncycastleMathEcECFieldElement *tmp = IOSObjectArray_Get(zs, j);
    (void) IOSObjectArray_Set(zs, j, [((OrgBouncycastleMathEcECFieldElement *) nil_chk(IOSObjectArray_Get(c, i))) multiplyWithOrgBouncycastleMathEcECFieldElement:u]);
    u = [((OrgBouncycastleMathEcECFieldElement *) nil_chk(u)) multiplyWithOrgBouncycastleMathEcECFieldElement:tmp];
  }
  (void) IOSObjectArray_Set(zs, off, u);
}

OrgBouncycastleMathEcECPoint *OrgBouncycastleMathEcECAlgorithms_referenceMultiplyWithOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_(OrgBouncycastleMathEcECPoint *p, JavaMathBigInteger *k) {
  OrgBouncycastleMathEcECAlgorithms_initialize();
  JavaMathBigInteger *x = [((JavaMathBigInteger *) nil_chk(k)) abs];
  OrgBouncycastleMathEcECPoint *q = [((OrgBouncycastleMathEcECCurve *) nil_chk([((OrgBouncycastleMathEcECPoint *) nil_chk(p)) getCurve])) getInfinity];
  jint t = [((JavaMathBigInteger *) nil_chk(x)) bitLength];
  if (t > 0) {
    if ([x testBitWithInt:0]) {
      q = p;
    }
    for (jint i = 1; i < t; i++) {
      p = [p twice];
      if ([x testBitWithInt:i]) {
        q = [((OrgBouncycastleMathEcECPoint *) nil_chk(q)) addWithOrgBouncycastleMathEcECPoint:p];
      }
    }
  }
  return [k signum] < 0 ? [((OrgBouncycastleMathEcECPoint *) nil_chk(q)) negate] : q;
}

OrgBouncycastleMathEcECPoint *OrgBouncycastleMathEcECAlgorithms_validatePointWithOrgBouncycastleMathEcECPoint_(OrgBouncycastleMathEcECPoint *p) {
  OrgBouncycastleMathEcECAlgorithms_initialize();
  if (![((OrgBouncycastleMathEcECPoint *) nil_chk(p)) isValid]) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Invalid point");
  }
  return p;
}

OrgBouncycastleMathEcECPoint *OrgBouncycastleMathEcECAlgorithms_implShamirsTrickJsfWithOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_withOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_(OrgBouncycastleMathEcECPoint *P, JavaMathBigInteger *k, OrgBouncycastleMathEcECPoint *Q, JavaMathBigInteger *l) {
  OrgBouncycastleMathEcECAlgorithms_initialize();
  OrgBouncycastleMathEcECCurve *curve = [((OrgBouncycastleMathEcECPoint *) nil_chk(P)) getCurve];
  OrgBouncycastleMathEcECPoint *infinity = [((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) getInfinity];
  OrgBouncycastleMathEcECPoint *PaddQ = [P addWithOrgBouncycastleMathEcECPoint:Q];
  OrgBouncycastleMathEcECPoint *PsubQ = [P subtractWithOrgBouncycastleMathEcECPoint:Q];
  IOSObjectArray *points = [IOSObjectArray newArrayWithObjects:(id[]){ Q, PsubQ, P, PaddQ } count:4 type:OrgBouncycastleMathEcECPoint_class_()];
  [curve normalizeAllWithOrgBouncycastleMathEcECPointArray:points];
  IOSObjectArray *table = [IOSObjectArray newArrayWithObjects:(id[]){ [((OrgBouncycastleMathEcECPoint *) nil_chk(IOSObjectArray_Get(points, 3))) negate], [((OrgBouncycastleMathEcECPoint *) nil_chk(IOSObjectArray_Get(points, 2))) negate], [((OrgBouncycastleMathEcECPoint *) nil_chk(IOSObjectArray_Get(points, 1))) negate], [((OrgBouncycastleMathEcECPoint *) nil_chk(IOSObjectArray_Get(points, 0))) negate], infinity, IOSObjectArray_Get(points, 0), IOSObjectArray_Get(points, 1), IOSObjectArray_Get(points, 2), IOSObjectArray_Get(points, 3) } count:9 type:OrgBouncycastleMathEcECPoint_class_()];
  IOSByteArray *jsf = OrgBouncycastleMathEcWNafUtil_generateJSFWithJavaMathBigInteger_withJavaMathBigInteger_(k, l);
  OrgBouncycastleMathEcECPoint *R = infinity;
  jint i = ((IOSByteArray *) nil_chk(jsf))->size_;
  while (--i >= 0) {
    jint jsfi = IOSByteArray_Get(jsf, i);
    jint kDigit = (RShift32((LShift32(jsfi, 24)), 28)), lDigit = (RShift32((LShift32(jsfi, 28)), 28));
    jint index = 4 + (kDigit * 3) + lDigit;
    R = [((OrgBouncycastleMathEcECPoint *) nil_chk(R)) twicePlusWithOrgBouncycastleMathEcECPoint:IOSObjectArray_Get(table, index)];
  }
  return R;
}

OrgBouncycastleMathEcECPoint *OrgBouncycastleMathEcECAlgorithms_implShamirsTrickWNafWithOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_withOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_(OrgBouncycastleMathEcECPoint *P, JavaMathBigInteger *k, OrgBouncycastleMathEcECPoint *Q, JavaMathBigInteger *l) {
  OrgBouncycastleMathEcECAlgorithms_initialize();
  jboolean negK = [((JavaMathBigInteger *) nil_chk(k)) signum] < 0, negL = [((JavaMathBigInteger *) nil_chk(l)) signum] < 0;
  k = [k abs];
  l = [l abs];
  jint widthP = JavaLangMath_maxWithInt_withInt_(2, JavaLangMath_minWithInt_withInt_(16, OrgBouncycastleMathEcWNafUtil_getWindowSizeWithInt_([((JavaMathBigInteger *) nil_chk(k)) bitLength])));
  jint widthQ = JavaLangMath_maxWithInt_withInt_(2, JavaLangMath_minWithInt_withInt_(16, OrgBouncycastleMathEcWNafUtil_getWindowSizeWithInt_([((JavaMathBigInteger *) nil_chk(l)) bitLength])));
  OrgBouncycastleMathEcWNafPreCompInfo *infoP = OrgBouncycastleMathEcWNafUtil_precomputeWithOrgBouncycastleMathEcECPoint_withInt_withBoolean_(P, widthP, YES);
  OrgBouncycastleMathEcWNafPreCompInfo *infoQ = OrgBouncycastleMathEcWNafUtil_precomputeWithOrgBouncycastleMathEcECPoint_withInt_withBoolean_(Q, widthQ, YES);
  IOSObjectArray *preCompP = negK ? [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(infoP)) getPreCompNeg] : [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(infoP)) getPreComp];
  IOSObjectArray *preCompQ = negL ? [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(infoQ)) getPreCompNeg] : [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(infoQ)) getPreComp];
  IOSObjectArray *preCompNegP = negK ? [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(infoP)) getPreComp] : [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(infoP)) getPreCompNeg];
  IOSObjectArray *preCompNegQ = negL ? [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(infoQ)) getPreComp] : [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(infoQ)) getPreCompNeg];
  IOSByteArray *wnafP = OrgBouncycastleMathEcWNafUtil_generateWindowNafWithInt_withJavaMathBigInteger_(widthP, k);
  IOSByteArray *wnafQ = OrgBouncycastleMathEcWNafUtil_generateWindowNafWithInt_withJavaMathBigInteger_(widthQ, l);
  return OrgBouncycastleMathEcECAlgorithms_implShamirsTrickWNafWithOrgBouncycastleMathEcECPointArray_withOrgBouncycastleMathEcECPointArray_withByteArray_withOrgBouncycastleMathEcECPointArray_withOrgBouncycastleMathEcECPointArray_withByteArray_(preCompP, preCompNegP, wnafP, preCompQ, preCompNegQ, wnafQ);
}

OrgBouncycastleMathEcECPoint *OrgBouncycastleMathEcECAlgorithms_implShamirsTrickWNafWithOrgBouncycastleMathEcECPoint_withJavaMathBigInteger_withOrgBouncycastleMathEcECPointMap_withJavaMathBigInteger_(OrgBouncycastleMathEcECPoint *P, JavaMathBigInteger *k, id<OrgBouncycastleMathEcECPointMap> pointMapQ, JavaMathBigInteger *l) {
  OrgBouncycastleMathEcECAlgorithms_initialize();
  jboolean negK = [((JavaMathBigInteger *) nil_chk(k)) signum] < 0, negL = [((JavaMathBigInteger *) nil_chk(l)) signum] < 0;
  k = [k abs];
  l = [l abs];
  jint width = JavaLangMath_maxWithInt_withInt_(2, JavaLangMath_minWithInt_withInt_(16, OrgBouncycastleMathEcWNafUtil_getWindowSizeWithInt_(JavaLangMath_maxWithInt_withInt_([((JavaMathBigInteger *) nil_chk(k)) bitLength], [((JavaMathBigInteger *) nil_chk(l)) bitLength]))));
  OrgBouncycastleMathEcECPoint *Q = OrgBouncycastleMathEcWNafUtil_mapPointWithPrecompWithOrgBouncycastleMathEcECPoint_withInt_withBoolean_withOrgBouncycastleMathEcECPointMap_(P, width, YES, pointMapQ);
  OrgBouncycastleMathEcWNafPreCompInfo *infoP = OrgBouncycastleMathEcWNafUtil_getWNafPreCompInfoWithOrgBouncycastleMathEcECPoint_(P);
  OrgBouncycastleMathEcWNafPreCompInfo *infoQ = OrgBouncycastleMathEcWNafUtil_getWNafPreCompInfoWithOrgBouncycastleMathEcECPoint_(Q);
  IOSObjectArray *preCompP = negK ? [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(infoP)) getPreCompNeg] : [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(infoP)) getPreComp];
  IOSObjectArray *preCompQ = negL ? [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(infoQ)) getPreCompNeg] : [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(infoQ)) getPreComp];
  IOSObjectArray *preCompNegP = negK ? [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(infoP)) getPreComp] : [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(infoP)) getPreCompNeg];
  IOSObjectArray *preCompNegQ = negL ? [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(infoQ)) getPreComp] : [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(infoQ)) getPreCompNeg];
  IOSByteArray *wnafP = OrgBouncycastleMathEcWNafUtil_generateWindowNafWithInt_withJavaMathBigInteger_(width, k);
  IOSByteArray *wnafQ = OrgBouncycastleMathEcWNafUtil_generateWindowNafWithInt_withJavaMathBigInteger_(width, l);
  return OrgBouncycastleMathEcECAlgorithms_implShamirsTrickWNafWithOrgBouncycastleMathEcECPointArray_withOrgBouncycastleMathEcECPointArray_withByteArray_withOrgBouncycastleMathEcECPointArray_withOrgBouncycastleMathEcECPointArray_withByteArray_(preCompP, preCompNegP, wnafP, preCompQ, preCompNegQ, wnafQ);
}

OrgBouncycastleMathEcECPoint *OrgBouncycastleMathEcECAlgorithms_implShamirsTrickWNafWithOrgBouncycastleMathEcECPointArray_withOrgBouncycastleMathEcECPointArray_withByteArray_withOrgBouncycastleMathEcECPointArray_withOrgBouncycastleMathEcECPointArray_withByteArray_(IOSObjectArray *preCompP, IOSObjectArray *preCompNegP, IOSByteArray *wnafP, IOSObjectArray *preCompQ, IOSObjectArray *preCompNegQ, IOSByteArray *wnafQ) {
  OrgBouncycastleMathEcECAlgorithms_initialize();
  jint len = JavaLangMath_maxWithInt_withInt_(((IOSByteArray *) nil_chk(wnafP))->size_, ((IOSByteArray *) nil_chk(wnafQ))->size_);
  OrgBouncycastleMathEcECCurve *curve = [((OrgBouncycastleMathEcECPoint *) nil_chk(IOSObjectArray_Get(nil_chk(preCompP), 0))) getCurve];
  OrgBouncycastleMathEcECPoint *infinity = [((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) getInfinity];
  OrgBouncycastleMathEcECPoint *R = infinity;
  jint zeroes = 0;
  for (jint i = len - 1; i >= 0; --i) {
    jint wiP = i < wnafP->size_ ? IOSByteArray_Get(wnafP, i) : 0;
    jint wiQ = i < wnafQ->size_ ? IOSByteArray_Get(wnafQ, i) : 0;
    if ((wiP | wiQ) == 0) {
      ++zeroes;
      continue;
    }
    OrgBouncycastleMathEcECPoint *r = infinity;
    if (wiP != 0) {
      jint nP = JavaLangMath_absWithInt_(wiP);
      IOSObjectArray *tableP = wiP < 0 ? preCompNegP : preCompP;
      r = [((OrgBouncycastleMathEcECPoint *) nil_chk(r)) addWithOrgBouncycastleMathEcECPoint:IOSObjectArray_Get(tableP, URShift32(nP, 1))];
    }
    if (wiQ != 0) {
      jint nQ = JavaLangMath_absWithInt_(wiQ);
      IOSObjectArray *tableQ = wiQ < 0 ? preCompNegQ : preCompQ;
      r = [((OrgBouncycastleMathEcECPoint *) nil_chk(r)) addWithOrgBouncycastleMathEcECPoint:IOSObjectArray_Get(tableQ, URShift32(nQ, 1))];
    }
    if (zeroes > 0) {
      R = [((OrgBouncycastleMathEcECPoint *) nil_chk(R)) timesPow2WithInt:zeroes];
      zeroes = 0;
    }
    R = [((OrgBouncycastleMathEcECPoint *) nil_chk(R)) twicePlusWithOrgBouncycastleMathEcECPoint:r];
  }
  if (zeroes > 0) {
    R = [((OrgBouncycastleMathEcECPoint *) nil_chk(R)) timesPow2WithInt:zeroes];
  }
  return R;
}

OrgBouncycastleMathEcECPoint *OrgBouncycastleMathEcECAlgorithms_implSumOfMultipliesWithOrgBouncycastleMathEcECPointArray_withJavaMathBigIntegerArray_(IOSObjectArray *ps, IOSObjectArray *ks) {
  OrgBouncycastleMathEcECAlgorithms_initialize();
  jint count = ((IOSObjectArray *) nil_chk(ps))->size_;
  IOSBooleanArray *negs = [IOSBooleanArray newArrayWithLength:count];
  IOSObjectArray *infos = [IOSObjectArray newArrayWithLength:count type:OrgBouncycastleMathEcWNafPreCompInfo_class_()];
  IOSObjectArray *wnafs = [IOSObjectArray newArrayWithLength:count type:IOSClass_byteArray(1)];
  for (jint i = 0; i < count; ++i) {
    JavaMathBigInteger *ki = IOSObjectArray_Get(nil_chk(ks), i);
    *IOSBooleanArray_GetRef(negs, i) = ([((JavaMathBigInteger *) nil_chk(ki)) signum] < 0);
    ki = [ki abs];
    jint width = JavaLangMath_maxWithInt_withInt_(2, JavaLangMath_minWithInt_withInt_(16, OrgBouncycastleMathEcWNafUtil_getWindowSizeWithInt_([((JavaMathBigInteger *) nil_chk(ki)) bitLength])));
    (void) IOSObjectArray_Set(infos, i, OrgBouncycastleMathEcWNafUtil_precomputeWithOrgBouncycastleMathEcECPoint_withInt_withBoolean_(IOSObjectArray_Get(ps, i), width, YES));
    (void) IOSObjectArray_Set(wnafs, i, OrgBouncycastleMathEcWNafUtil_generateWindowNafWithInt_withJavaMathBigInteger_(width, ki));
  }
  return OrgBouncycastleMathEcECAlgorithms_implSumOfMultipliesWithBooleanArray_withOrgBouncycastleMathEcWNafPreCompInfoArray_withByteArray2_(negs, infos, wnafs);
}

OrgBouncycastleMathEcECPoint *OrgBouncycastleMathEcECAlgorithms_implSumOfMultipliesGLVWithOrgBouncycastleMathEcECPointArray_withJavaMathBigIntegerArray_withOrgBouncycastleMathEcEndoGLVEndomorphism_(IOSObjectArray *ps, IOSObjectArray *ks, id<OrgBouncycastleMathEcEndoGLVEndomorphism> glvEndomorphism) {
  OrgBouncycastleMathEcECAlgorithms_initialize();
  JavaMathBigInteger *n = [((OrgBouncycastleMathEcECCurve *) nil_chk([((OrgBouncycastleMathEcECPoint *) nil_chk(IOSObjectArray_Get(nil_chk(ps), 0))) getCurve])) getOrder];
  jint len = ps->size_;
  IOSObjectArray *abs = [IOSObjectArray newArrayWithLength:LShift32(len, 1) type:JavaMathBigInteger_class_()];
  for (jint i = 0, j = 0; i < len; ++i) {
    IOSObjectArray *ab = [((id<OrgBouncycastleMathEcEndoGLVEndomorphism>) nil_chk(glvEndomorphism)) decomposeScalarWithJavaMathBigInteger:[((JavaMathBigInteger *) nil_chk(IOSObjectArray_Get(nil_chk(ks), i))) modWithJavaMathBigInteger:n]];
    (void) IOSObjectArray_Set(abs, j++, IOSObjectArray_Get(nil_chk(ab), 0));
    (void) IOSObjectArray_Set(abs, j++, IOSObjectArray_Get(ab, 1));
  }
  id<OrgBouncycastleMathEcECPointMap> pointMap = [((id<OrgBouncycastleMathEcEndoGLVEndomorphism>) nil_chk(glvEndomorphism)) getPointMap];
  if ([glvEndomorphism hasEfficientPointMap]) {
    return OrgBouncycastleMathEcECAlgorithms_implSumOfMultipliesWithOrgBouncycastleMathEcECPointArray_withOrgBouncycastleMathEcECPointMap_withJavaMathBigIntegerArray_(ps, pointMap, abs);
  }
  IOSObjectArray *pqs = [IOSObjectArray newArrayWithLength:LShift32(len, 1) type:OrgBouncycastleMathEcECPoint_class_()];
  for (jint i = 0, j = 0; i < len; ++i) {
    OrgBouncycastleMathEcECPoint *p = IOSObjectArray_Get(ps, i), *q = [((id<OrgBouncycastleMathEcECPointMap>) nil_chk(pointMap)) mapWithOrgBouncycastleMathEcECPoint:p];
    (void) IOSObjectArray_Set(pqs, j++, p);
    (void) IOSObjectArray_Set(pqs, j++, q);
  }
  return OrgBouncycastleMathEcECAlgorithms_implSumOfMultipliesWithOrgBouncycastleMathEcECPointArray_withJavaMathBigIntegerArray_(pqs, abs);
}

OrgBouncycastleMathEcECPoint *OrgBouncycastleMathEcECAlgorithms_implSumOfMultipliesWithOrgBouncycastleMathEcECPointArray_withOrgBouncycastleMathEcECPointMap_withJavaMathBigIntegerArray_(IOSObjectArray *ps, id<OrgBouncycastleMathEcECPointMap> pointMap, IOSObjectArray *ks) {
  OrgBouncycastleMathEcECAlgorithms_initialize();
  jint halfCount = ((IOSObjectArray *) nil_chk(ps))->size_, fullCount = LShift32(halfCount, 1);
  IOSBooleanArray *negs = [IOSBooleanArray newArrayWithLength:fullCount];
  IOSObjectArray *infos = [IOSObjectArray newArrayWithLength:fullCount type:OrgBouncycastleMathEcWNafPreCompInfo_class_()];
  IOSObjectArray *wnafs = [IOSObjectArray newArrayWithLength:fullCount type:IOSClass_byteArray(1)];
  for (jint i = 0; i < halfCount; ++i) {
    jint j0 = LShift32(i, 1), j1 = j0 + 1;
    JavaMathBigInteger *kj0 = IOSObjectArray_Get(nil_chk(ks), j0);
    *IOSBooleanArray_GetRef(negs, j0) = ([((JavaMathBigInteger *) nil_chk(kj0)) signum] < 0);
    kj0 = [kj0 abs];
    JavaMathBigInteger *kj1 = IOSObjectArray_Get(ks, j1);
    *IOSBooleanArray_GetRef(negs, j1) = ([((JavaMathBigInteger *) nil_chk(kj1)) signum] < 0);
    kj1 = [kj1 abs];
    jint width = JavaLangMath_maxWithInt_withInt_(2, JavaLangMath_minWithInt_withInt_(16, OrgBouncycastleMathEcWNafUtil_getWindowSizeWithInt_(JavaLangMath_maxWithInt_withInt_([((JavaMathBigInteger *) nil_chk(kj0)) bitLength], [((JavaMathBigInteger *) nil_chk(kj1)) bitLength]))));
    OrgBouncycastleMathEcECPoint *P = IOSObjectArray_Get(ps, i), *Q = OrgBouncycastleMathEcWNafUtil_mapPointWithPrecompWithOrgBouncycastleMathEcECPoint_withInt_withBoolean_withOrgBouncycastleMathEcECPointMap_(P, width, YES, pointMap);
    (void) IOSObjectArray_Set(infos, j0, OrgBouncycastleMathEcWNafUtil_getWNafPreCompInfoWithOrgBouncycastleMathEcECPoint_(P));
    (void) IOSObjectArray_Set(infos, j1, OrgBouncycastleMathEcWNafUtil_getWNafPreCompInfoWithOrgBouncycastleMathEcECPoint_(Q));
    (void) IOSObjectArray_Set(wnafs, j0, OrgBouncycastleMathEcWNafUtil_generateWindowNafWithInt_withJavaMathBigInteger_(width, kj0));
    (void) IOSObjectArray_Set(wnafs, j1, OrgBouncycastleMathEcWNafUtil_generateWindowNafWithInt_withJavaMathBigInteger_(width, kj1));
  }
  return OrgBouncycastleMathEcECAlgorithms_implSumOfMultipliesWithBooleanArray_withOrgBouncycastleMathEcWNafPreCompInfoArray_withByteArray2_(negs, infos, wnafs);
}

OrgBouncycastleMathEcECPoint *OrgBouncycastleMathEcECAlgorithms_implSumOfMultipliesWithBooleanArray_withOrgBouncycastleMathEcWNafPreCompInfoArray_withByteArray2_(IOSBooleanArray *negs, IOSObjectArray *infos, IOSObjectArray *wnafs) {
  OrgBouncycastleMathEcECAlgorithms_initialize();
  jint len = 0, count = ((IOSObjectArray *) nil_chk(wnafs))->size_;
  for (jint i = 0; i < count; ++i) {
    len = JavaLangMath_maxWithInt_withInt_(len, ((IOSByteArray *) nil_chk(IOSObjectArray_Get(wnafs, i)))->size_);
  }
  OrgBouncycastleMathEcECCurve *curve = [((OrgBouncycastleMathEcECPoint *) nil_chk(IOSObjectArray_Get(nil_chk([((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(IOSObjectArray_Get(nil_chk(infos), 0))) getPreComp]), 0))) getCurve];
  OrgBouncycastleMathEcECPoint *infinity = [((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) getInfinity];
  OrgBouncycastleMathEcECPoint *R = infinity;
  jint zeroes = 0;
  for (jint i = len - 1; i >= 0; --i) {
    OrgBouncycastleMathEcECPoint *r = infinity;
    for (jint j = 0; j < count; ++j) {
      IOSByteArray *wnaf = IOSObjectArray_Get(wnafs, j);
      jint wi = i < ((IOSByteArray *) nil_chk(wnaf))->size_ ? IOSByteArray_Get(wnaf, i) : 0;
      if (wi != 0) {
        jint n = JavaLangMath_absWithInt_(wi);
        OrgBouncycastleMathEcWNafPreCompInfo *info = IOSObjectArray_Get(infos, j);
        IOSObjectArray *table = (wi < 0 == IOSBooleanArray_Get(nil_chk(negs), j)) ? [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(info)) getPreComp] : [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(info)) getPreCompNeg];
        r = [((OrgBouncycastleMathEcECPoint *) nil_chk(r)) addWithOrgBouncycastleMathEcECPoint:IOSObjectArray_Get(table, URShift32(n, 1))];
      }
    }
    if (r == infinity) {
      ++zeroes;
      continue;
    }
    if (zeroes > 0) {
      R = [((OrgBouncycastleMathEcECPoint *) nil_chk(R)) timesPow2WithInt:zeroes];
      zeroes = 0;
    }
    R = [((OrgBouncycastleMathEcECPoint *) nil_chk(R)) twicePlusWithOrgBouncycastleMathEcECPoint:r];
  }
  if (zeroes > 0) {
    R = [((OrgBouncycastleMathEcECPoint *) nil_chk(R)) timesPow2WithInt:zeroes];
  }
  return R;
}

void OrgBouncycastleMathEcECAlgorithms_init(OrgBouncycastleMathEcECAlgorithms *self) {
  (void) NSObject_init(self);
}

OrgBouncycastleMathEcECAlgorithms *new_OrgBouncycastleMathEcECAlgorithms_init() {
  OrgBouncycastleMathEcECAlgorithms *self = [OrgBouncycastleMathEcECAlgorithms alloc];
  OrgBouncycastleMathEcECAlgorithms_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathEcECAlgorithms)
