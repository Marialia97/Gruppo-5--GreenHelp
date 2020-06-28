.class public final Lcom/google/common/primitives/UnsignedLong;
.super Ljava/lang/Number;
.source "UnsignedLong.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/common/primitives/UnsignedLong;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:Lcom/google/common/primitives/UnsignedLong;

.field public static final ONE:Lcom/google/common/primitives/UnsignedLong;

.field private static final UNSIGNED_MASK:J = 0x7fffffffffffffffL

.field public static final ZERO:Lcom/google/common/primitives/UnsignedLong;


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 48
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    sput-object v0, Lcom/google/common/primitives/UnsignedLong;->ZERO:Lcom/google/common/primitives/UnsignedLong;

    .line 49
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    sput-object v0, Lcom/google/common/primitives/UnsignedLong;->ONE:Lcom/google/common/primitives/UnsignedLong;

    .line 50
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    sput-object v0, Lcom/google/common/primitives/UnsignedLong;->MAX_VALUE:Lcom/google/common/primitives/UnsignedLong;

    return-void
.end method

.method private constructor <init>(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-wide p1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    .line 56
    return-void
.end method

.method public static asUnsigned(J)Lcom/google/common/primitives/UnsignedLong;
    .registers 4
    .param p0, "value"    # J
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public static fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;
    .registers 4
    .param p0, "bits"    # J

    .prologue
    .line 89
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    invoke-direct {v0, p0, p1}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    return-object v0
.end method

.method public static valueOf(J)Lcom/google/common/primitives/UnsignedLong;
    .registers 8
    .param p0, "value"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    const-wide/16 v4, 0x0

    cmp-long v0, p0, v4

    if-ltz v0, :cond_1b

    move v0, v1

    :goto_9
    const-string v3, "value (%s) is outside the range for an unsigned long value"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0

    :cond_1b
    move v0, v2

    .line 99
    goto :goto_9
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedLong;
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 125
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedLong;->valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedLong;
    .registers 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I

    .prologue
    .line 137
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLongs;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/math/BigInteger;)Lcom/google/common/primitives/UnsignedLong;
    .registers 5
    .param p0, "value"    # Ljava/math/BigInteger;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_26

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v3, 0x40

    if-gt v0, v3, :cond_26

    move v0, v1

    :goto_14
    const-string v3, "value (%s) is outside the range for an unsigned long value"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0

    :cond_26
    move v0, v2

    .line 112
    goto :goto_14
.end method


# virtual methods
.method public add(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .registers 3
    .param p1, "val"    # Lcom/google/common/primitives/UnsignedLong;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->plus(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .registers 7

    .prologue
    .line 306
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 307
    .local v0, "bigInt":Ljava/math/BigInteger;
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1a

    .line 308
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 310
    :cond_1a
    return-object v0
.end method

.method public compareTo(Lcom/google/common/primitives/UnsignedLong;)I
    .registers 6
    .param p1, "o"    # Lcom/google/common/primitives/UnsignedLong;

    .prologue
    .line 315
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    iget-wide v2, p1, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, Lcom/google/common/primitives/UnsignedLong;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->compareTo(Lcom/google/common/primitives/UnsignedLong;)I

    move-result v0

    return v0
.end method

.method public divide(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .registers 3
    .param p1, "val"    # Lcom/google/common/primitives/UnsignedLong;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->dividedBy(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public dividedBy(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .registers 6
    .param p1, "val"    # Lcom/google/common/primitives/UnsignedLong;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 229
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v0, v0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .registers 7

    .prologue
    .line 295
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v2, v4

    long-to-double v0, v2

    .line 296
    .local v0, "dValue":D
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_14

    .line 297
    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    add-double/2addr v0, v2

    .line 299
    :cond_14
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 326
    instance-of v2, p1, Lcom/google/common/primitives/UnsignedLong;

    if-eqz v2, :cond_11

    move-object v0, p1

    .line 327
    check-cast v0, Lcom/google/common/primitives/UnsignedLong;

    .line 328
    .local v0, "other":Lcom/google/common/primitives/UnsignedLong;
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    iget-wide v4, v0, Lcom/google/common/primitives/UnsignedLong;->value:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_11

    const/4 v1, 0x1

    .line 330
    .end local v0    # "other":Lcom/google/common/primitives/UnsignedLong;
    :cond_11
    return v1
.end method

.method public floatValue()F
    .registers 7

    .prologue
    .line 281
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v2, v4

    long-to-float v0, v2

    .line 282
    .local v0, "fValue":F
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_14

    .line 283
    const/high16 v1, 0x5f000000

    add-float/2addr v0, v1

    .line 285
    :cond_14
    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 321
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 271
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    return-wide v0
.end method

.method public minus(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .registers 6
    .param p1, "val"    # Lcom/google/common/primitives/UnsignedLong;

    .prologue
    .line 183
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v0, v0, Lcom/google/common/primitives/UnsignedLong;->value:J

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public mod(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .registers 6
    .param p1, "val"    # Lcom/google/common/primitives/UnsignedLong;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 251
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v0, v0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public multiply(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .registers 3
    .param p1, "val"    # Lcom/google/common/primitives/UnsignedLong;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->times(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .registers 6
    .param p1, "val"    # Lcom/google/common/primitives/UnsignedLong;

    .prologue
    .line 160
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v0, v0, Lcom/google/common/primitives/UnsignedLong;->value:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public remainder(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .registers 3
    .param p1, "val"    # Lcom/google/common/primitives/UnsignedLong;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->mod(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .registers 3
    .param p1, "val"    # Lcom/google/common/primitives/UnsignedLong;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->minus(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public times(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .registers 6
    .param p1, "val"    # Lcom/google/common/primitives/UnsignedLong;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 207
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v0, v0, Lcom/google/common/primitives/UnsignedLong;->value:J

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 338
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 4
    .param p1, "radix"    # I

    .prologue
    .line 347
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1, p1}, Lcom/google/common/primitives/UnsignedLongs;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
