.class public final Lcom/google/common/math/BigIntegerMath;
.super Ljava/lang/Object;
.source "BigIntegerMath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/BigIntegerMath$1;
    }
.end annotation


# static fields
.field private static final LN_10:D

.field private static final LN_2:D

.field static final SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SQRT2_PRECOMPUTE_THRESHOLD:I = 0x100
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 117
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "16a09e667f3bcc908b2fb1366ea957d3e3adec17512775099da2f590b0667322a"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/math/BigIntegerMath;->SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;

    .line 195
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/BigIntegerMath;->LN_10:D

    .line 196
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/BigIntegerMath;->LN_2:D

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)Ljava/math/BigInteger;
    .registers 19
    .param p0, "n"    # I
    .param p1, "k"    # I

    .prologue
    .line 397
    const-string v12, "n"

    move/from16 v0, p0

    invoke-static {v12, v0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 398
    const-string v12, "k"

    move/from16 v0, p1

    invoke-static {v12, v0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 399
    move/from16 v0, p1

    move/from16 v1, p0

    if-gt v0, v1, :cond_4b

    const/4 v12, 0x1

    :goto_15
    const-string v13, "k (%s) > n (%s)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 400
    shr-int/lit8 v12, p0, 0x1

    move/from16 v0, p1

    if-le v0, v12, :cond_33

    .line 401
    sub-int p1, p0, p1

    .line 403
    :cond_33
    sget-object v12, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    array-length v12, v12

    move/from16 v0, p1

    if-ge v0, v12, :cond_4d

    sget-object v12, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    aget v12, v12, p1

    move/from16 v0, p0

    if-gt v0, v12, :cond_4d

    .line 404
    invoke-static/range {p0 .. p1}, Lcom/google/common/math/LongMath;->binomial(II)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    .line 438
    :goto_4a
    return-object v12

    .line 399
    :cond_4b
    const/4 v12, 0x0

    goto :goto_15

    .line 407
    :cond_4d
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 409
    .local v2, "accum":Ljava/math/BigInteger;
    move/from16 v0, p0

    int-to-long v8, v0

    .line 410
    .local v8, "numeratorAccum":J
    const-wide/16 v4, 0x1

    .line 412
    .local v4, "denominatorAccum":J
    move/from16 v0, p0

    int-to-long v12, v0

    sget-object v14, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v12, v13, v14}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v3

    .line 414
    .local v3, "bits":I
    move v7, v3

    .line 416
    .local v7, "numeratorBits":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_5f
    move/from16 v0, p1

    if-ge v6, v0, :cond_89

    .line 417
    sub-int v10, p0, v6

    .line 418
    .local v10, "p":I
    add-int/lit8 v11, v6, 0x1

    .line 422
    .local v11, "q":I
    add-int v12, v7, v3

    const/16 v13, 0x3f

    if-lt v12, v13, :cond_83

    .line 425
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 428
    int-to-long v8, v10

    .line 429
    int-to-long v4, v11

    .line 430
    move v7, v3

    .line 416
    :goto_80
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    .line 433
    :cond_83
    int-to-long v12, v10

    mul-long/2addr v8, v12

    .line 434
    int-to-long v12, v11

    mul-long/2addr v4, v12

    .line 435
    add-int/2addr v7, v3

    goto :goto_80

    .line 438
    .end local v10    # "p":I
    .end local v11    # "q":I
    :cond_89
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    goto :goto_4a
.end method

.method public static divide(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;
    .registers 6
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 295
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 296
    .local v0, "pDec":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 297
    .local v1, "qDec":Ljava/math/BigDecimal;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method

.method public static factorial(I)Ljava/math/BigInteger;
    .registers 25
    .param p0, "n"    # I

    .prologue
    .line 313
    const-string v19, "n"

    move-object/from16 v0, v19

    move/from16 v1, p0

    invoke-static {v0, v1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 316
    sget-object v19, Lcom/google/common/math/LongMath;->factorials:[J

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, p0

    move/from16 v1, v19

    if-ge v0, v1, :cond_1f

    .line 317
    sget-object v19, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v20, v19, p0

    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v19

    .line 364
    :goto_1e
    return-object v19

    .line 321
    :cond_1f
    sget-object v19, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    move/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result v19

    mul-int v19, v19, p0

    const/16 v20, 0x40

    sget-object v21, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static/range {v19 .. v21}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v4

    .line 322
    .local v4, "approxSize":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 325
    .local v5, "bignums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    sget-object v19, Lcom/google/common/math/LongMath;->factorials:[J

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v17, v0

    .line 326
    .local v17, "startingNumber":I
    sget-object v19, Lcom/google/common/math/LongMath;->factorials:[J

    add-int/lit8 v20, v17, -0x1

    aget-wide v14, v19, v20

    .line 328
    .local v14, "product":J
    invoke-static {v14, v15}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v16

    .line 329
    .local v16, "shift":I
    shr-long v14, v14, v16

    .line 332
    sget-object v19, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-object/from16 v0, v19

    invoke-static {v14, v15, v0}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v19

    add-int/lit8 v9, v19, 0x1

    .line 333
    .local v9, "productBits":I
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sget-object v19, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v19

    add-int/lit8 v6, v19, 0x1

    .line 335
    .local v6, "bits":I
    const/16 v19, 0x1

    add-int/lit8 v20, v6, -0x1

    shl-int v7, v19, v20

    .line 338
    .local v7, "nextPowerOfTwo":I
    move/from16 v0, v17

    int-to-long v12, v0

    .local v12, "num":J
    :goto_6f
    move/from16 v0, p0

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v19, v12, v20

    if-gtz v19, :cond_b7

    .line 340
    int-to-long v0, v7

    move-wide/from16 v20, v0

    and-long v20, v20, v12

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-eqz v19, :cond_87

    .line 341
    shl-int/lit8 v7, v7, 0x1

    .line 342
    add-int/lit8 v6, v6, 0x1

    .line 345
    :cond_87
    invoke-static {v12, v13}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v18

    .line 346
    .local v18, "tz":I
    shr-long v10, v12, v18

    .line 347
    .local v10, "normalizedNum":J
    add-int v16, v16, v18

    .line 349
    sub-int v8, v6, v18

    .line 351
    .local v8, "normalizedBits":I
    add-int v19, v8, v9

    const/16 v20, 0x40

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_a7

    .line 352
    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    const-wide/16 v14, 0x1

    .line 354
    const/4 v9, 0x0

    .line 356
    :cond_a7
    mul-long/2addr v14, v10

    .line 357
    sget-object v19, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-object/from16 v0, v19

    invoke-static {v14, v15, v0}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v19

    add-int/lit8 v9, v19, 0x1

    .line 338
    const-wide/16 v20, 0x1

    add-long v12, v12, v20

    goto :goto_6f

    .line 360
    .end local v8    # "normalizedBits":I
    .end local v10    # "normalizedNum":J
    .end local v18    # "tz":I
    :cond_b7
    const-wide/16 v20, 0x1

    cmp-long v19, v14, v20

    if-lez v19, :cond_c6

    .line 361
    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_c6
    invoke-static {v5}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v19

    goto/16 :goto_1e
.end method

.method static fitsInLong(Ljava/math/BigInteger;)Z
    .registers 3
    .param p0, "x"    # Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 446
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isPowerOfTwo(Ljava/math/BigInteger;)Z
    .registers 3
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {p0}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method static listProduct(Ljava/util/List;)Ljava/math/BigInteger;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/math/BigInteger;",
            ">;)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "nums":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static listProduct(Ljava/util/List;II)Ljava/math/BigInteger;
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/math/BigInteger;",
            ">;II)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "nums":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    sub-int v1, p2, p1

    packed-switch v1, :pswitch_data_52

    .line 383
    add-int v1, p2, p1

    ushr-int/lit8 v0, v1, 0x1

    .line 384
    .local v0, "m":I
    invoke-static {p0, p1, v0}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p0, v0, p2}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .end local v0    # "m":I
    :goto_15
    return-object v1

    .line 374
    :pswitch_16
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    goto :goto_15

    .line 376
    :pswitch_19
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    goto :goto_15

    .line 378
    :pswitch_20
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_15

    .line 380
    :pswitch_33
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v1, p1, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_15

    .line 372
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_20
        :pswitch_33
    .end packed-switch
.end method

.method public static log10(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I
    .registers 16
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 130
    const-string v10, "x"

    invoke-static {v10, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 131
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->fitsInLong(Ljava/math/BigInteger;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 132
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11, p1}, Lcom/google/common/math/LongMath;->log10(JLjava/math/RoundingMode;)I

    move-result v4

    .line 189
    :cond_13
    :goto_13
    :pswitch_13
    return v4

    .line 135
    :cond_14
    sget-object v10, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {p0, v10}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    move-result v10

    int-to-double v10, v10

    sget-wide v12, Lcom/google/common/math/BigIntegerMath;->LN_2:D

    mul-double/2addr v10, v12

    sget-wide v12, Lcom/google/common/math/BigIntegerMath;->LN_10:D

    div-double/2addr v10, v12

    double-to-int v1, v10

    .line 136
    .local v1, "approxLog10":I
    sget-object v10, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v10, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 137
    .local v2, "approxPow":Ljava/math/BigInteger;
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .line 144
    .local v0, "approxCmp":I
    if-lez v0, :cond_50

    .line 151
    :cond_2e
    add-int/lit8 v1, v1, -0x1

    .line 152
    sget-object v10, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 153
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .line 154
    if-gtz v0, :cond_2e

    .line 167
    :cond_3c
    move v4, v1

    .line 168
    .local v4, "floorLog":I
    move-object v5, v2

    .line 169
    .local v5, "floorPow":Ljava/math/BigInteger;
    move v3, v0

    .line 171
    .local v3, "floorCmp":I
    sget-object v10, Lcom/google/common/math/BigIntegerMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_98

    .line 191
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 156
    .end local v3    # "floorCmp":I
    .end local v4    # "floorLog":I
    .end local v5    # "floorPow":Ljava/math/BigInteger;
    :cond_50
    sget-object v10, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 157
    .local v8, "nextPow":Ljava/math/BigInteger;
    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    .line 158
    .local v7, "nextCmp":I
    :goto_5a
    if-gtz v7, :cond_3c

    .line 159
    add-int/lit8 v1, v1, 0x1

    .line 160
    move-object v2, v8

    .line 161
    move v0, v7

    .line 162
    sget-object v10, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 163
    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    goto :goto_5a

    .line 173
    .end local v7    # "nextCmp":I
    .end local v8    # "nextPow":Ljava/math/BigInteger;
    .restart local v3    # "floorCmp":I
    .restart local v4    # "floorLog":I
    .restart local v5    # "floorPow":Ljava/math/BigInteger;
    :pswitch_6b
    if-nez v3, :cond_72

    const/4 v10, 0x1

    :goto_6e
    invoke-static {v10}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    goto :goto_13

    :cond_72
    const/4 v10, 0x0

    goto :goto_6e

    .line 181
    :pswitch_74
    invoke-virtual {v5, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 187
    :pswitch_7d
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 188
    .local v9, "x2":Ljava/math/BigInteger;
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v10

    sget-object v11, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 189
    .local v6, "halfPowerSquared":Ljava/math/BigInteger;
    invoke-virtual {v9, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-lez v10, :cond_13

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13

    .line 171
    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_13
        :pswitch_13
        :pswitch_74
        :pswitch_74
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
    .end packed-switch
.end method

.method public static log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I
    .registers 8
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "mode"    # Ljava/math/RoundingMode;

    .prologue
    .line 70
    const-string v5, "x"

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    invoke-static {v5, v4}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 71
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 72
    .local v1, "logFloor":I
    sget-object v4, Lcom/google/common/math/BigIntegerMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_5c

    .line 106
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 74
    :pswitch_22
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->isPowerOfTwo(Ljava/math/BigInteger;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 103
    .end local v1    # "logFloor":I
    :cond_29
    :goto_29
    :pswitch_29
    return v1

    .line 81
    .restart local v1    # "logFloor":I
    :pswitch_2a
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->isPowerOfTwo(Ljava/math/BigInteger;)Z

    move-result v4

    if-nez v4, :cond_29

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 86
    :pswitch_33
    const/16 v4, 0x100

    if-ge v1, v4, :cond_48

    .line 87
    sget-object v4, Lcom/google/common/math/BigIntegerMath;->SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;

    rsub-int v5, v1, 0x100

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 89
    .local v0, "halfPower":Ljava/math/BigInteger;
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_29

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 101
    .end local v0    # "halfPower":Ljava/math/BigInteger;
    :cond_48
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 102
    .local v3, "x2":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 103
    .local v2, "logX2Floor":I
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    if-lt v2, v4, :cond_29

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 72
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_22
        :pswitch_29
        :pswitch_29
        :pswitch_2a
        :pswitch_2a
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method public static sqrt(Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;
    .registers 7
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 208
    const-string v2, "x"

    invoke-static {v2, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 209
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->fitsInLong(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 210
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lcom/google/common/math/LongMath;->sqrt(JLjava/math/RoundingMode;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 231
    :cond_18
    :goto_18
    :pswitch_18
    return-object v1

    .line 212
    :cond_19
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->sqrtFloor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 213
    .local v1, "sqrtFloor":Ljava/math/BigInteger;
    sget-object v2, Lcom/google/common/math/BigIntegerMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_60

    .line 233
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 215
    :pswitch_2e
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    goto :goto_18

    .line 221
    :pswitch_3a
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_18

    .line 225
    :pswitch_4b
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 231
    .local v0, "halfSquare":Ljava/math/BigInteger;
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_18

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_18

    .line 213
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_18
        :pswitch_18
        :pswitch_3a
        :pswitch_3a
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
    .end packed-switch
.end method

.method private static sqrtApproxWithDoubles(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 283
    invoke-static {p0}, Lcom/google/common/math/DoubleUtils;->bigToDouble(Ljava/math/BigInteger;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {v0, v1, v2}, Lcom/google/common/math/DoubleMath;->roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static sqrtFloor(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 9
    .param p0, "x"    # Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 259
    sget-object v5, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {p0, v5}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    move-result v0

    .line 260
    .local v0, "log2":I
    const/16 v5, 0x3ff

    if-ge v0, v5, :cond_23

    .line 261
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->sqrtApproxWithDoubles(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 270
    .local v2, "sqrt0":Ljava/math/BigInteger;
    :goto_f
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 271
    .local v4, "sqrt1":Ljava/math/BigInteger;
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    move-object v3, v2

    .line 278
    .end local v2    # "sqrt0":Ljava/math/BigInteger;
    .local v3, "sqrt0":Ljava/math/BigInteger;
    :goto_22
    return-object v3

    .line 263
    .end local v3    # "sqrt0":Ljava/math/BigInteger;
    .end local v4    # "sqrt1":Ljava/math/BigInteger;
    :cond_23
    add-int/lit8 v5, v0, -0x34

    and-int/lit8 v1, v5, -0x2

    .line 268
    .local v1, "shift":I
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/math/BigIntegerMath;->sqrtApproxWithDoubles(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    shr-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    .restart local v2    # "sqrt0":Ljava/math/BigInteger;
    goto :goto_f

    .line 275
    .end local v1    # "shift":I
    .restart local v4    # "sqrt1":Ljava/math/BigInteger;
    :cond_36
    move-object v2, v4

    .line 276
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 277
    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_36

    move-object v3, v2

    .line 278
    .end local v2    # "sqrt0":Ljava/math/BigInteger;
    .restart local v3    # "sqrt0":Ljava/math/BigInteger;
    goto :goto_22
.end method
