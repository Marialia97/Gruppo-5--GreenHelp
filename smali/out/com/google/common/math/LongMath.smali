.class public final Lcom/google/common/math/LongMath;
.super Ljava/lang/Object;
.source "LongMath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/LongMath$1;
    }
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_LONG:J = 0xb504f333L
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:J = -0x4afb0ccc06219b7cL
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final biggestBinomials:[I

.field static final biggestSimpleBinomials:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final factorials:[J

.field static final halfPowersOf10:[J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final maxLog10ForLeadingZeros:[B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final powersOf10:[J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x13

    .line 164
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_36

    sput-object v0, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    .line 171
    new-array v0, v1, [J

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/google/common/math/LongMath;->powersOf10:[J

    .line 196
    new-array v0, v1, [J

    fill-array-data v0, :array_aa

    sput-object v0, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    .line 633
    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_fa

    sput-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    .line 742
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_152

    sput-object v0, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    .line 751
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_19a

    sput-object v0, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    return-void

    .line 164
    nop

    :array_36
    .array-data 1
        0x13t
        0x12t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x11t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0xat
        0x9t
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 171
    :array_5a
    .array-data 8
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data

    .line 196
    :array_aa
    .array-data 8
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0xbc7c871cL
        0x75cdd4719L
        0x49a0a4c700L
        0x2e0466fc608L
        0x1cc2c05dbc53L
        0x11f9b83a95b45L
        0xb3c13249d90bbL
        0x7058bf6e27a751L
        0x463777a4d8c892dL
        0x2be2aac7077d5bc3L    # 2.731041190138108E-97
    .end array-data

    .line 633
    :array_fa
    .array-data 8
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data

    .line 742
    :array_152
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x3a25db
        0x1dc79
        0x3f2f
        0x10f1
        0x6c5
        0x377
        0x216
        0x169
        0x109
        0xce
        0xa9
        0x8f
        0x7d
        0x6f
        0x65
        0x5e
        0x58
        0x53
        0x4f
        0x4c
        0x4a
        0x48
        0x46
        0x45
        0x44
        0x43
        0x43
        0x42
        0x42
        0x42
        0x42
    .end array-data

    .line 751
    :array_19a
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x285146
        0x150eb
        0x2dcc
        0xc92
        0x521
        0x2ac
        0x1a3
        0x11f
        0xd6
        0xa9
        0x8b
        0x77
        0x69
        0x5f
        0x57
        0x51
        0x4c
        0x49
        0x46
        0x44
        0x42
        0x40
        0x3f
        0x3e
        0x3e
        0x3d
        0x3d
        0x3d
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)J
    .registers 20
    .param p0, "n"    # I
    .param p1, "k"    # I

    .prologue
    .line 664
    const-string v12, "n"

    move/from16 v0, p0

    invoke-static {v12, v0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 665
    const-string v12, "k"

    move/from16 v0, p1

    invoke-static {v12, v0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 666
    move/from16 v0, p1

    move/from16 v1, p0

    if-gt v0, v1, :cond_50

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

    .line 667
    shr-int/lit8 v12, p0, 0x1

    move/from16 v0, p1

    if-le v0, v12, :cond_33

    .line 668
    sub-int p1, p0, p1

    .line 670
    :cond_33
    packed-switch p1, :pswitch_data_d0

    .line 676
    sget-object v12, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v12, v12

    move/from16 v0, p0

    if-ge v0, v12, :cond_59

    .line 677
    sget-object v12, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v12, v12, p0

    sget-object v14, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v14, v14, p1

    sget-object v16, Lcom/google/common/math/LongMath;->factorials:[J

    sub-int v17, p0, p1

    aget-wide v16, v16, v17

    mul-long v14, v14, v16

    div-long v2, v12, v14

    .line 718
    :cond_4f
    :goto_4f
    return-wide v2

    .line 666
    :cond_50
    const/4 v12, 0x0

    goto :goto_15

    .line 672
    :pswitch_52
    const-wide/16 v2, 0x1

    goto :goto_4f

    .line 674
    :pswitch_55
    move/from16 v0, p0

    int-to-long v2, v0

    goto :goto_4f

    .line 678
    :cond_59
    sget-object v12, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    array-length v12, v12

    move/from16 v0, p1

    if-ge v0, v12, :cond_68

    sget-object v12, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    aget v12, v12, p1

    move/from16 v0, p0

    if-le v0, v12, :cond_6e

    .line 679
    :cond_68
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_4f

    .line 680
    :cond_6e
    sget-object v12, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    array-length v12, v12

    move/from16 v0, p1

    if-ge v0, v12, :cond_94

    sget-object v12, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    aget v12, v12, p1

    move/from16 v0, p0

    if-gt v0, v12, :cond_94

    .line 682
    add-int/lit8 v9, p0, -0x1

    .end local p0    # "n":I
    .local v9, "n":I
    move/from16 v0, p0

    int-to-long v2, v0

    .line 683
    .local v2, "result":J
    const/4 v8, 0x2

    .local v8, "i":I
    move/from16 p0, v9

    .end local v9    # "n":I
    .restart local p0    # "n":I
    :goto_85
    move/from16 v0, p1

    if-gt v8, v0, :cond_4f

    .line 684
    move/from16 v0, p0

    int-to-long v12, v0

    mul-long/2addr v2, v12

    .line 685
    int-to-long v12, v8

    div-long/2addr v2, v12

    .line 683
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_85

    .line 689
    .end local v2    # "result":J
    .end local v8    # "i":I
    :cond_94
    move/from16 v0, p0

    int-to-long v12, v0

    sget-object v14, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v12, v13, v14}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v10

    .line 691
    .local v10, "nBits":I
    const-wide/16 v2, 0x1

    .line 692
    .restart local v2    # "result":J
    add-int/lit8 v9, p0, -0x1

    .end local p0    # "n":I
    .restart local v9    # "n":I
    move/from16 v0, p0

    int-to-long v4, v0

    .line 693
    .local v4, "numerator":J
    const-wide/16 v6, 0x1

    .line 695
    .local v6, "denominator":J
    move v11, v10

    .line 703
    .local v11, "numeratorBits":I
    const/4 v8, 0x2

    .restart local v8    # "i":I
    move/from16 p0, v9

    .end local v9    # "n":I
    .restart local p0    # "n":I
    :goto_aa
    move/from16 v0, p1

    if-gt v8, v0, :cond_ca

    .line 704
    add-int v12, v11, v10

    const/16 v13, 0x3f

    if-ge v12, v13, :cond_c0

    .line 706
    move/from16 v0, p0

    int-to-long v12, v0

    mul-long/2addr v4, v12

    .line 707
    int-to-long v12, v8

    mul-long/2addr v6, v12

    .line 708
    add-int/2addr v11, v10

    .line 703
    :goto_bb
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_aa

    .line 712
    :cond_c0
    invoke-static/range {v2 .. v7}, Lcom/google/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide v2

    .line 713
    move/from16 v0, p0

    int-to-long v4, v0

    .line 714
    int-to-long v6, v8

    .line 715
    move v11, v10

    goto :goto_bb

    .line 718
    :cond_ca
    invoke-static/range {v2 .. v7}, Lcom/google/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide v2

    goto :goto_4f

    .line 670
    nop

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_52
        :pswitch_55
    .end packed-switch
.end method

.method public static checkedAdd(JJ)J
    .registers 14
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 523
    add-long v0, p0, p2

    .line 524
    .local v0, "result":J
    xor-long v4, p0, p2

    cmp-long v4, v4, v8

    if-gez v4, :cond_18

    move v4, v2

    :goto_d
    xor-long v6, p0, v0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1a

    :goto_13
    or-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 525
    return-wide v0

    :cond_18
    move v4, v3

    .line 524
    goto :goto_d

    :cond_1a
    move v2, v3

    goto :goto_13
.end method

.method public static checkedMultiply(JJ)J
    .registers 16
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 548
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    xor-long v6, p0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int/2addr v1, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int/2addr v1, v6

    xor-long v6, p2, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int v0, v1, v6

    .line 560
    .local v0, "leadingZeros":I
    const/16 v1, 0x41

    if-le v0, v1, :cond_25

    .line 561
    mul-long v2, p0, p2

    .line 567
    :goto_24
    return-wide v2

    .line 563
    :cond_25
    const/16 v1, 0x40

    if-lt v0, v1, :cond_4e

    move v1, v4

    :goto_2a
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 564
    cmp-long v1, p0, v10

    if-ltz v1, :cond_50

    move v6, v4

    :goto_32
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v1, p2, v8

    if-eqz v1, :cond_52

    move v1, v4

    :goto_39
    or-int/2addr v1, v6

    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 565
    mul-long v2, p0, p2

    .line 566
    .local v2, "result":J
    cmp-long v1, p0, v10

    if-eqz v1, :cond_49

    div-long v6, v2, p0

    cmp-long v1, v6, p2

    if-nez v1, :cond_4a

    :cond_49
    move v5, v4

    :cond_4a
    invoke-static {v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    goto :goto_24

    .end local v2    # "result":J
    :cond_4e
    move v1, v5

    .line 563
    goto :goto_2a

    :cond_50
    move v6, v5

    .line 564
    goto :goto_32

    :cond_52
    move v1, v5

    goto :goto_39
.end method

.method public static checkedPow(JI)J
    .registers 15
    .param p0, "b"    # J
    .param p2, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    const-wide/16 v2, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 578
    const-string v8, "exponent"

    invoke-static {v8, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 579
    const-wide/16 v8, -0x2

    cmp-long v8, p0, v8

    if-ltz v8, :cond_26

    move v9, v6

    :goto_12
    const-wide/16 v10, 0x2

    cmp-long v8, p0, v10

    if-gtz v8, :cond_28

    move v8, v6

    :goto_19
    and-int/2addr v8, v9

    if-eqz v8, :cond_54

    .line 580
    long-to-int v8, p0

    packed-switch v8, :pswitch_data_7e

    .line 594
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_26
    move v9, v7

    .line 579
    goto :goto_12

    :cond_28
    move v8, v7

    goto :goto_19

    .line 582
    :pswitch_2a
    if-nez p2, :cond_2d

    .line 603
    :cond_2c
    :goto_2c
    :pswitch_2c
    return-wide v2

    .line 582
    :cond_2d
    const-wide/16 v2, 0x0

    goto :goto_2c

    .line 586
    :pswitch_30
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_2c

    move-wide v2, v4

    goto :goto_2c

    .line 588
    :pswitch_36
    const/16 v4, 0x3f

    if-ge p2, v4, :cond_40

    move v4, v6

    :goto_3b
    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 589
    shl-long/2addr v2, p2

    goto :goto_2c

    :cond_40
    move v4, v7

    .line 588
    goto :goto_3b

    .line 591
    :pswitch_42
    const/16 v8, 0x40

    if-ge p2, v8, :cond_4f

    :goto_46
    invoke-static {v6}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 592
    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_51

    shl-long/2addr v2, p2

    goto :goto_2c

    :cond_4f
    move v6, v7

    .line 591
    goto :goto_46

    .line 592
    :cond_51
    shl-long v2, v4, p2

    goto :goto_2c

    .line 597
    :cond_54
    const-wide/16 v0, 0x1

    .line 599
    .local v0, "accum":J
    :cond_56
    :goto_56
    packed-switch p2, :pswitch_data_8c

    .line 605
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_61

    .line 606
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v0

    .line 608
    :cond_61
    shr-int/lit8 p2, p2, 0x1

    .line 609
    if-lez p2, :cond_56

    .line 610
    const-wide v2, 0xb504f333L

    cmp-long v2, p0, v2

    if-gtz v2, :cond_7b

    move v2, v6

    :goto_6f
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 611
    mul-long/2addr p0, p0

    goto :goto_56

    :pswitch_74
    move-wide v2, v0

    .line 601
    goto :goto_2c

    .line 603
    :pswitch_76
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v2

    goto :goto_2c

    :cond_7b
    move v2, v7

    .line 610
    goto :goto_6f

    .line 580
    nop

    :pswitch_data_7e
    .packed-switch -0x2
        :pswitch_42
        :pswitch_30
        :pswitch_2a
        :pswitch_2c
        :pswitch_36
    .end packed-switch

    .line 599
    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_74
        :pswitch_76
    .end packed-switch
.end method

.method public static checkedSubtract(JJ)J
    .registers 14
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 535
    sub-long v0, p0, p2

    .line 536
    .local v0, "result":J
    xor-long v4, p0, p2

    cmp-long v4, v4, v8

    if-ltz v4, :cond_18

    move v4, v2

    :goto_d
    xor-long v6, p0, v0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1a

    :goto_13
    or-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 537
    return-wide v0

    :cond_18
    move v4, v3

    .line 536
    goto :goto_d

    :cond_1a
    move v2, v3

    goto :goto_13
.end method

.method public static divide(JJLjava/math/RoundingMode;)J
    .registers 25
    .param p0, "p"    # J
    .param p2, "q"    # J
    .param p4, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 366
    invoke-static/range {p4 .. p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    div-long v6, p0, p2

    .line 368
    .local v6, "div":J
    mul-long v12, p2, v6

    sub-long v10, p0, v12

    .line 370
    .local v10, "rem":J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_10

    .line 415
    .end local v6    # "div":J
    :cond_f
    :goto_f
    return-wide v6

    .line 381
    .restart local v6    # "div":J
    :cond_10
    xor-long v12, p0, p2

    const/16 v14, 0x3f

    shr-long/2addr v12, v14

    long-to-int v12, v12

    or-int/lit8 v9, v12, 0x1

    .line 383
    .local v9, "signum":I
    sget-object v12, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p4 .. p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_8a

    .line 413
    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 385
    :pswitch_29
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_39

    const/4 v12, 0x1

    :goto_30
    invoke-static {v12}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 388
    :pswitch_33
    const/4 v8, 0x0

    .line 415
    .local v8, "increment":Z
    :goto_34
    if-eqz v8, :cond_f

    int-to-long v12, v9

    add-long/2addr v6, v12

    goto :goto_f

    .line 385
    .end local v8    # "increment":Z
    :cond_39
    const/4 v12, 0x0

    goto :goto_30

    .line 391
    :pswitch_3b
    const/4 v8, 0x1

    .line 392
    .restart local v8    # "increment":Z
    goto :goto_34

    .line 394
    .end local v8    # "increment":Z
    :pswitch_3d
    if-lez v9, :cond_41

    const/4 v8, 0x1

    .line 395
    .restart local v8    # "increment":Z
    :goto_40
    goto :goto_34

    .line 394
    .end local v8    # "increment":Z
    :cond_41
    const/4 v8, 0x0

    goto :goto_40

    .line 397
    :pswitch_43
    if-gez v9, :cond_47

    const/4 v8, 0x1

    .line 398
    .restart local v8    # "increment":Z
    :goto_46
    goto :goto_34

    .line 397
    .end local v8    # "increment":Z
    :cond_47
    const/4 v8, 0x0

    goto :goto_46

    .line 402
    :pswitch_49
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 403
    .local v2, "absRem":J
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    sub-long/2addr v12, v2

    sub-long v4, v2, v12

    .line 406
    .local v4, "cmpRemToHalfDivisor":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_7f

    .line 407
    sget-object v12, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_78

    const/4 v12, 0x1

    :goto_61
    sget-object v13, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_7a

    const/4 v13, 0x1

    move v14, v13

    :goto_69
    const-wide/16 v16, 0x1

    and-long v16, v16, v6

    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-eqz v13, :cond_7d

    const/4 v13, 0x1

    :goto_74
    and-int/2addr v13, v14

    or-int v8, v12, v13

    .restart local v8    # "increment":Z
    goto :goto_34

    .end local v8    # "increment":Z
    :cond_78
    const/4 v12, 0x0

    goto :goto_61

    :cond_7a
    const/4 v13, 0x0

    move v14, v13

    goto :goto_69

    :cond_7d
    const/4 v13, 0x0

    goto :goto_74

    .line 409
    :cond_7f
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_87

    const/4 v8, 0x1

    .line 411
    .restart local v8    # "increment":Z
    :goto_86
    goto :goto_34

    .line 409
    .end local v8    # "increment":Z
    :cond_87
    const/4 v8, 0x0

    goto :goto_86

    .line 383
    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_29
        :pswitch_33
        :pswitch_43
        :pswitch_3b
        :pswitch_3d
        :pswitch_49
        :pswitch_49
        :pswitch_49
    .end packed-switch
.end method

.method public static factorial(I)J
    .registers 3
    .param p0, "n"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 629
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 630
    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v0, v0

    if-ge p0, v0, :cond_f

    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v0, v0, p0

    :goto_e
    return-wide v0

    :cond_f
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_e
.end method

.method static fitsInInt(J)Z
    .registers 4
    .param p0, "x"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 760
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static gcd(JJ)J
    .registers 14
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 477
    const-string v6, "a"

    invoke-static {v6, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 478
    const-string v6, "b"

    invoke-static {v6, p2, p3}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 479
    cmp-long v6, p0, v8

    if-nez v6, :cond_12

    move-wide p0, p2

    .line 513
    .end local p0    # "a":J
    :cond_11
    :goto_11
    return-wide p0

    .line 483
    .restart local p0    # "a":J
    :cond_12
    cmp-long v6, p2, v8

    if-eqz v6, :cond_11

    .line 490
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    .line 491
    .local v0, "aTwos":I
    shr-long/2addr p0, v0

    .line 492
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    .line 493
    .local v1, "bTwos":I
    shr-long/2addr p2, v1

    .line 494
    :goto_20
    cmp-long v6, p0, p2

    if-eqz v6, :cond_37

    .line 502
    sub-long v2, p0, p2

    .line 504
    .local v2, "delta":J
    const/16 v6, 0x3f

    shr-long v6, v2, v6

    and-long v4, v2, v6

    .line 507
    .local v4, "minDeltaOrZero":J
    sub-long v6, v2, v4

    sub-long p0, v6, v4

    .line 510
    add-long/2addr p2, v4

    .line 511
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v6

    shr-long/2addr p0, v6

    .line 512
    goto :goto_20

    .line 513
    .end local v2    # "delta":J
    .end local v4    # "minDeltaOrZero":J
    :cond_37
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    shl-long/2addr p0, v6

    goto :goto_11
.end method

.method public static isPowerOfTwo(J)Z
    .registers 10
    .param p0, "x"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    cmp-long v2, p0, v6

    if-lez v2, :cond_14

    move v2, v0

    :goto_9
    const-wide/16 v4, 0x1

    sub-long v4, p0, v4

    and-long/2addr v4, p0

    cmp-long v3, v4, v6

    if-nez v3, :cond_16

    :goto_12
    and-int/2addr v0, v2

    return v0

    :cond_14
    move v2, v1

    goto :goto_9

    :cond_16
    move v0, v1

    goto :goto_12
.end method

.method public static log10(JLjava/math/RoundingMode;)I
    .registers 9
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 117
    const-string v3, "x"

    invoke-static {v3, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 118
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 119
    long-to-int v3, p0

    invoke-static {v3, p2}, Lcom/google/common/math/IntMath;->log10(ILjava/math/RoundingMode;)I

    move-result v2

    .line 137
    :cond_10
    :goto_10
    :pswitch_10
    return v2

    .line 121
    :cond_11
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->log10Floor(J)I

    move-result v2

    .line 122
    .local v2, "logFloor":I
    sget-object v3, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v0, v3, v2

    .line 123
    .local v0, "floorPow":J
    sget-object v3, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_48

    .line 139
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 125
    :pswitch_2a
    cmp-long v3, p0, v0

    if-nez v3, :cond_33

    const/4 v3, 0x1

    :goto_2f
    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    goto :goto_10

    :cond_33
    const/4 v3, 0x0

    goto :goto_2f

    .line 132
    :pswitch_35
    cmp-long v3, p0, v0

    if-eqz v3, :cond_10

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 137
    :pswitch_3c
    sget-object v3, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    aget-wide v4, v3, v2

    cmp-long v3, p0, v4

    if-lez v3, :cond_10

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 123
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_10
        :pswitch_10
        :pswitch_35
        :pswitch_35
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method

.method static log10Floor(J)I
    .registers 8
    .param p0, "x"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 152
    sget-object v3, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    aget-byte v2, v3, v4

    .line 155
    .local v2, "y":I
    sget-object v3, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v4, v3, v2

    sub-long v4, p0, v4

    const/16 v3, 0x3f

    ushr-long v0, v4, v3

    .line 160
    .local v0, "sgn":J
    long-to-int v3, v0

    sub-int v3, v2, v3

    return v3
.end method

.method public static log2(JLjava/math/RoundingMode;)I
    .registers 9
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    .line 75
    const-string v4, "x"

    invoke-static {v4, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 76
    sget-object v4, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_46

    .line 99
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "impossible"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 78
    :pswitch_18
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 82
    :pswitch_1f
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    rsub-int/lit8 v3, v4, 0x3f

    .line 96
    :cond_25
    :goto_25
    return v3

    .line 86
    :pswitch_26
    const-wide/16 v4, 0x1

    sub-long v4, p0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    rsub-int/lit8 v3, v4, 0x40

    goto :goto_25

    .line 92
    :pswitch_31
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    .line 93
    .local v2, "leadingZeros":I
    const-wide v4, -0x4afb0ccc06219b7cL    # -2.734104117489491E-53

    ushr-long v0, v4, v2

    .line 95
    .local v0, "cmp":J
    rsub-int/lit8 v3, v2, 0x3f

    .line 96
    .local v3, "logFloor":I
    cmp-long v4, p0, v0

    if-lez v4, :cond_25

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 76
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1f
        :pswitch_1f
        :pswitch_26
        :pswitch_26
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method public static mean(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 773
    and-long v0, p0, p2

    xor-long v2, p0, p2

    const/4 v4, 0x1

    shr-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static mod(JI)I
    .registers 5
    .param p0, "x"    # J
    .param p2, "m"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 437
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->mod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static mod(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "m"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 458
    cmp-long v2, p2, v4

    if-gtz v2, :cond_25

    .line 459
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Modulus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be > 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 461
    :cond_25
    rem-long v0, p0, p2

    .line 462
    .local v0, "result":J
    cmp-long v2, v0, v4

    if-ltz v2, :cond_2c

    .end local v0    # "result":J
    :goto_2b
    return-wide v0

    .restart local v0    # "result":J
    :cond_2c
    add-long/2addr v0, p2

    goto :goto_2b
.end method

.method static multiplyFraction(JJJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    .prologue
    .line 727
    const-wide/16 v2, 0x1

    cmp-long v2, p0, v2

    if-nez v2, :cond_9

    .line 728
    div-long v2, p2, p4

    .line 735
    :goto_8
    return-wide v2

    .line 730
    :cond_9
    invoke-static {p0, p1, p4, p5}, Lcom/google/common/math/LongMath;->gcd(JJ)J

    move-result-wide v0

    .line 731
    .local v0, "commonDivisor":J
    div-long/2addr p0, v0

    .line 732
    div-long/2addr p4, v0

    .line 735
    div-long v2, p2, p4

    mul-long/2addr v2, p0

    goto :goto_8
.end method

.method public static pow(JI)J
    .registers 13
    .param p0, "b"    # J
    .param p2, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const/16 v8, 0x40

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x1

    .line 227
    const-string v6, "exponent"

    invoke-static {v6, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 228
    const-wide/16 v6, -0x2

    cmp-long v6, v6, p0

    if-gtz v6, :cond_40

    const-wide/16 v6, 0x2

    cmp-long v6, p0, v6

    if-gtz v6, :cond_40

    .line 229
    long-to-int v6, p0

    packed-switch v6, :pswitch_data_56

    .line 245
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 231
    :pswitch_21
    if-nez p2, :cond_24

    .line 253
    :cond_23
    :goto_23
    :pswitch_23
    return-wide v2

    :cond_24
    move-wide v2, v4

    .line 231
    goto :goto_23

    .line 235
    :pswitch_26
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_23

    const-wide/16 v2, -0x1

    goto :goto_23

    .line 237
    :pswitch_2d
    if-ge p2, v8, :cond_31

    shl-long v4, v2, p2

    :cond_31
    move-wide v2, v4

    goto :goto_23

    .line 239
    :pswitch_33
    if-ge p2, v8, :cond_3e

    .line 240
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_3b

    shl-long/2addr v2, p2

    goto :goto_23

    :cond_3b
    shl-long/2addr v2, p2

    neg-long v2, v2

    goto :goto_23

    :cond_3e
    move-wide v2, v4

    .line 242
    goto :goto_23

    .line 248
    :cond_40
    const-wide/16 v0, 0x1

    .line 249
    .local v0, "accum":J
    :goto_42
    packed-switch p2, :pswitch_data_64

    .line 255
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_54

    move-wide v4, v2

    :goto_4a
    mul-long/2addr v0, v4

    .line 256
    mul-long/2addr p0, p0

    .line 248
    shr-int/lit8 p2, p2, 0x1

    goto :goto_42

    :pswitch_4f
    move-wide v2, v0

    .line 251
    goto :goto_23

    .line 253
    :pswitch_51
    mul-long v2, v0, p0

    goto :goto_23

    :cond_54
    move-wide v4, p0

    .line 255
    goto :goto_4a

    .line 229
    :pswitch_data_56
    .packed-switch -0x2
        :pswitch_33
        :pswitch_26
        :pswitch_21
        :pswitch_23
        :pswitch_2d
    .end packed-switch

    .line 249
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_51
    .end packed-switch
.end method

.method public static sqrt(JLjava/math/RoundingMode;)J
    .registers 15
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v10, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 271
    const-string v6, "x"

    invoke-static {v6, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 272
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 273
    long-to-int v4, p0

    invoke-static {v4, p2}, Lcom/google/common/math/IntMath;->sqrt(ILjava/math/RoundingMode;)I

    move-result v4

    int-to-long v2, v4

    .line 294
    :cond_15
    :goto_15
    :pswitch_15
    return-wide v2

    .line 275
    :cond_16
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->sqrtFloor(J)J

    move-result-wide v2

    .line 276
    .local v2, "sqrtFloor":J
    sget-object v6, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_58

    .line 296
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 278
    :pswitch_2b
    mul-long v6, v2, v2

    cmp-long v6, v6, p0

    if-nez v6, :cond_35

    :goto_31
    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    goto :goto_15

    :cond_35
    move v4, v5

    goto :goto_31

    .line 284
    :pswitch_37
    mul-long v4, v2, v2

    cmp-long v4, v4, p0

    if-eqz v4, :cond_15

    add-long/2addr v2, v10

    goto :goto_15

    .line 288
    :pswitch_3f
    mul-long v6, v2, v2

    add-long v0, v6, v2

    .line 294
    .local v0, "halfSquare":J
    cmp-long v6, v0, p0

    if-ltz v6, :cond_53

    move v6, v4

    :goto_48
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-gez v7, :cond_55

    :goto_4e
    or-int/2addr v4, v6

    if-nez v4, :cond_15

    add-long/2addr v2, v10

    goto :goto_15

    :cond_53
    move v6, v5

    goto :goto_48

    :cond_55
    move v4, v5

    goto :goto_4e

    .line 276
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_15
        :pswitch_15
        :pswitch_37
        :pswitch_37
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method

.method private static sqrtFloor(J)J
    .registers 12
    .param p0, "x"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v8, 0x1

    .line 302
    long-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-long v0, v4

    .line 346
    .local v0, "guess":J
    mul-long v2, v0, v0

    .line 347
    .local v2, "guessSquared":J
    sub-long v4, p0, v2

    add-long v6, v0, v0

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-ltz v4, :cond_15

    .line 349
    add-long/2addr v0, v8

    .line 353
    :cond_14
    :goto_14
    return-wide v0

    .line 350
    :cond_15
    cmp-long v4, p0, v2

    if-gez v4, :cond_14

    .line 351
    sub-long/2addr v0, v8

    goto :goto_14
.end method
