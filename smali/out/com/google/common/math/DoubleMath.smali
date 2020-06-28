.class public final Lcom/google/common/math/DoubleMath;
.super Ljava/lang/Object;
.source "DoubleMath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/DoubleMath$1;
    }
.end annotation


# static fields
.field private static final LN_2:D

.field static final MAX_FACTORIAL:I = 0xaa
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_INT_AS_DOUBLE:D = 2.147483647E9

.field private static final MAX_LONG_AS_DOUBLE_PLUS_ONE:D = 9.223372036854776E18

.field private static final MIN_INT_AS_DOUBLE:D = -2.147483648E9

.field private static final MIN_LONG_AS_DOUBLE:D = -9.223372036854776E18

.field static final everySixteenthFactorial:[D
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 210
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleMath;->LN_2:D

    .line 301
    const/16 v0, 0xb

    new-array v0, v0, [D

    fill-array-data v0, :array_12

    sput-object v0, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    return-void

    :array_12
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x42b3077775800000L    # 2.0922789888E13
        0x474956ad0aae33a4L    # 2.631308369336935E35
        0x4c9ee69a78d72cb6L    # 1.2413915592536073E61
        0x526fe478ee34844aL    # 1.2688693218588417E89
        0x589c619094edabffL    # 7.156945704626381E118
        0x5f13638dd7bd6347L    # 9.916779348709496E149
        0x65c7cac197cfe503L    # 1.974506857221074E182
        0x6cb1e5dfc140e1e5L    # 3.856204823625804E215
        0x73c8ce85fadb707eL    # 5.5502938327393044E249
        0x7b095d5f3d928edeL    # 4.7147236359920616E284
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static factorial(I)D
    .registers 7
    .param p0, "n"    # I

    .prologue
    .line 283
    const-string v3, "n"

    invoke-static {v3, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 284
    const/16 v3, 0xaa

    if-le p0, v3, :cond_c

    .line 285
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 293
    :goto_b
    return-wide v4

    .line 289
    :cond_c
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 290
    .local v0, "accum":D
    and-int/lit8 v3, p0, -0x10

    add-int/lit8 v2, v3, 0x1

    .local v2, "i":I
    :goto_12
    if-gt v2, p0, :cond_19

    .line 291
    int-to-double v4, v2

    mul-double/2addr v0, v4

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 293
    :cond_19
    sget-object v3, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    shr-int/lit8 v4, p0, 0x4

    aget-wide v4, v3, v4

    mul-double/2addr v4, v0

    goto :goto_b
.end method

.method public static fuzzyCompare(DDD)I
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "tolerance"    # D

    .prologue
    .line 363
    invoke-static/range {p0 .. p5}, Lcom/google/common/math/DoubleMath;->fuzzyEquals(DDD)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 364
    const/4 v0, 0x0

    .line 370
    :goto_7
    return v0

    .line 365
    :cond_8
    cmpg-double v0, p0, p2

    if-gez v0, :cond_e

    .line 366
    const/4 v0, -0x1

    goto :goto_7

    .line 367
    :cond_e
    cmpl-double v0, p0, p2

    if-lez v0, :cond_14

    .line 368
    const/4 v0, 0x1

    goto :goto_7

    .line 370
    :cond_14
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result v0

    goto :goto_7
.end method

.method public static fuzzyEquals(DDD)Z
    .registers 10
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "tolerance"    # D

    .prologue
    .line 340
    const-string v0, "tolerance"

    invoke-static {v0, p4, p5}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;D)D

    .line 341
    sub-double v0, p0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-lez v0, :cond_1d

    cmpl-double v0, p0, p2

    if-eqz v0, :cond_1d

    cmpl-double v0, p0, p0

    if-eqz v0, :cond_1f

    cmpl-double v0, p2, p2

    if-eqz v0, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static isMathematicalInteger(D)Z
    .registers 4
    .param p0, "x"    # D

    .prologue
    .line 268
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_1c

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x34

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v1

    if-gt v0, v1, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static isPowerOfTwo(D)Z
    .registers 4
    .param p0, "x"    # D

    .prologue
    .line 188
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_18

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static log2(D)D
    .registers 6
    .param p0, "x"    # D

    .prologue
    .line 207
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/google/common/math/DoubleMath;->LN_2:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static log2(DLjava/math/RoundingMode;)I
    .registers 15
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 223
    const-wide/16 v8, 0x0

    cmpl-double v4, p0, v8

    if-lez v4, :cond_28

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v4

    if-eqz v4, :cond_28

    move v4, v5

    :goto_f
    const-string v7, "x must be positive and finite"

    invoke-static {v4, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 224
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 225
    .local v0, "exponent":I
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isNormal(D)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 226
    const-wide/high16 v4, 0x4330000000000000L    # 4.503599627370496E15

    mul-double/2addr v4, p0

    invoke-static {v4, v5, p2}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result v4

    add-int/lit8 v0, v4, -0x34

    .line 258
    .end local v0    # "exponent":I
    :cond_27
    :goto_27
    return v0

    :cond_28
    move v4, v6

    .line 223
    goto :goto_f

    .line 231
    .restart local v0    # "exponent":I
    :cond_2a
    sget-object v4, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_82

    .line 256
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 233
    :pswitch_3b
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 236
    :pswitch_42
    const/4 v1, 0x0

    .line 258
    .local v1, "increment":Z
    :goto_43
    if-eqz v1, :cond_27

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 239
    .end local v1    # "increment":Z
    :pswitch_48
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v4

    if-nez v4, :cond_50

    move v1, v5

    .line 240
    .restart local v1    # "increment":Z
    :goto_4f
    goto :goto_43

    .end local v1    # "increment":Z
    :cond_50
    move v1, v6

    .line 239
    goto :goto_4f

    .line 242
    :pswitch_52
    if-gez v0, :cond_5e

    move v4, v5

    :goto_55
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v7

    if-nez v7, :cond_60

    :goto_5b
    and-int v1, v4, v5

    .line 243
    .restart local v1    # "increment":Z
    goto :goto_43

    .end local v1    # "increment":Z
    :cond_5e
    move v4, v6

    .line 242
    goto :goto_55

    :cond_60
    move v5, v6

    goto :goto_5b

    .line 245
    :pswitch_62
    if-ltz v0, :cond_6e

    move v4, v5

    :goto_65
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v7

    if-nez v7, :cond_70

    :goto_6b
    and-int v1, v4, v5

    .line 246
    .restart local v1    # "increment":Z
    goto :goto_43

    .end local v1    # "increment":Z
    :cond_6e
    move v4, v6

    .line 245
    goto :goto_65

    :cond_70
    move v5, v6

    goto :goto_6b

    .line 250
    :pswitch_72
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->scaleNormalize(D)D

    move-result-wide v2

    .line 253
    .local v2, "xScaled":D
    mul-double v8, v2, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    cmpl-double v4, v8, v10

    if-lez v4, :cond_80

    move v1, v5

    .line 254
    .restart local v1    # "increment":Z
    :goto_7f
    goto :goto_43

    .end local v1    # "increment":Z
    :cond_80
    move v1, v6

    .line 253
    goto :goto_7f

    .line 231
    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_42
        :pswitch_48
        :pswitch_52
        :pswitch_62
        :pswitch_72
        :pswitch_72
        :pswitch_72
    .end packed-switch
.end method

.method static roundIntermediate(DLjava/math/RoundingMode;)D
    .registers 13
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    const-wide/16 v8, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 53
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v2

    if-nez v2, :cond_14

    .line 54
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "input is infinite or NaN"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_14
    sget-object v2, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_7c

    .line 107
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 58
    :pswitch_25
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 102
    .end local p0    # "x":D
    :cond_2c
    :goto_2c
    :pswitch_2c
    return-wide p0

    .line 62
    .restart local p0    # "x":D
    :pswitch_2d
    cmpl-double v2, p0, v8

    if-gez v2, :cond_2c

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 65
    sub-double/2addr p0, v6

    goto :goto_2c

    .line 69
    :pswitch_39
    cmpg-double v2, p0, v8

    if-lez v2, :cond_2c

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 72
    add-double/2addr p0, v6

    goto :goto_2c

    .line 79
    :pswitch_45
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 82
    invoke-static {v6, v7, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v2

    add-double/2addr p0, v2

    goto :goto_2c

    .line 86
    :pswitch_51
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    goto :goto_2c

    .line 89
    :pswitch_56
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    .line 90
    .local v0, "z":D
    sub-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_6a

    .line 91
    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v2

    add-double/2addr p0, v2

    goto :goto_2c

    :cond_6a
    move-wide p0, v0

    .line 93
    goto :goto_2c

    .line 98
    .end local v0    # "z":D
    :pswitch_6c
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    .line 99
    .restart local v0    # "z":D
    sub-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2c

    move-wide p0, v0

    .line 102
    goto :goto_2c

    .line 56
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2d
        :pswitch_39
        :pswitch_2c
        :pswitch_45
        :pswitch_51
        :pswitch_56
        :pswitch_6c
    .end packed-switch
.end method

.method public static roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;
    .registers 13
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 173
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide p0

    .line 174
    const-wide/high16 v6, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v6, p0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1f

    move v6, v4

    :goto_10
    const-wide/high16 v8, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v7, p0, v8

    if-gez v7, :cond_21

    :goto_16
    and-int/2addr v4, v6

    if-eqz v4, :cond_23

    .line 175
    double-to-long v4, p0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 180
    :cond_1e
    :goto_1e
    return-object v1

    :cond_1f
    move v6, v5

    .line 174
    goto :goto_10

    :cond_21
    move v4, v5

    goto :goto_16

    .line 177
    :cond_23
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 178
    .local v0, "exponent":I
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v2

    .line 179
    .local v2, "significand":J
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    add-int/lit8 v5, v0, -0x34

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 180
    .local v1, "result":Ljava/math/BigInteger;
    const-wide/16 v4, 0x0

    cmpg-double v4, p0, v4

    if-gez v4, :cond_1e

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_1e
.end method

.method public static roundToInt(DLjava/math/RoundingMode;)I
    .registers 11
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 126
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v0

    .line 127
    .local v0, "z":D
    const-wide v4, -0x3e1fffffffe00000L    # -2.147483649E9

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1c

    move v4, v2

    :goto_10
    const-wide/high16 v6, 0x41e0000000000000L    # 2.147483648E9

    cmpg-double v5, v0, v6

    if-gez v5, :cond_1e

    :goto_16
    and-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkInRange(Z)V

    .line 128
    double-to-int v2, v0

    return v2

    :cond_1c
    move v4, v3

    .line 127
    goto :goto_10

    :cond_1e
    move v2, v3

    goto :goto_16
.end method

.method public static roundToLong(DLjava/math/RoundingMode;)J
    .registers 11
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 149
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v0

    .line 150
    .local v0, "z":D
    const-wide/high16 v4, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1c

    move v4, v2

    :goto_10
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v5, v0, v6

    if-gez v5, :cond_1e

    :goto_16
    and-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkInRange(Z)V

    .line 151
    double-to-long v2, v0

    return-wide v2

    :cond_1c
    move v4, v3

    .line 150
    goto :goto_10

    :cond_1e
    move v2, v3

    goto :goto_16
.end method