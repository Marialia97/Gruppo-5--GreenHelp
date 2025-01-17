.class public final Lcom/google/common/primitives/Chars;
.super Ljava/lang/Object;
.source "Chars.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Chars$CharArrayAsList;,
        Lcom/google/common/primitives/Chars$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([CCII)I
    .registers 5
    .param p0, "x0"    # [C
    .param p1, "x1"    # C
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->indexOf([CCII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([CCII)I
    .registers 5
    .param p0, "x0"    # [C
    .param p1, "x1"    # C
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->lastIndexOf([CCII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([C)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    array-length v0, p0

    if-nez v0, :cond_8

    .line 460
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 462
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([C)V

    goto :goto_7
.end method

.method public static checkedCast(J)C
    .registers 8
    .param p0, "value"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    long-to-int v1, p0

    int-to-char v0, v1

    .line 81
    .local v0, "result":C
    int-to-long v4, v0

    cmp-long v1, v4, p0

    if-nez v1, :cond_18

    move v1, v2

    :goto_a
    const-string v4, "Out of range: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 82
    return v0

    :cond_18
    move v1, v3

    .line 81
    goto :goto_a
.end method

.method public static compare(CC)I
    .registers 3
    .param p0, "a"    # C
    .param p1, "b"    # C

    .prologue
    .line 113
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs concat([[C)[C
    .registers 10
    .param p0, "arrays"    # [[C

    .prologue
    .line 260
    const/4 v4, 0x0

    .line 261
    .local v4, "length":I
    move-object v0, p0

    .local v0, "arr$":[[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 262
    .local v1, "array":[C
    array-length v7, v1

    add-int/2addr v4, v7

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 264
    .end local v1    # "array":[C
    :cond_d
    new-array v6, v4, [C

    .line 265
    .local v6, "result":[C
    const/4 v5, 0x0

    .line 266
    .local v5, "pos":I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 267
    .restart local v1    # "array":[C
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    array-length v7, v1

    add-int/2addr v5, v7

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 270
    .end local v1    # "array":[C
    :cond_21
    return-object v6
.end method

.method public static contains([CC)Z
    .registers 7
    .param p0, "array"    # [C
    .param p1, "target"    # C

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "arr$":[C
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_e

    aget-char v3, v0, v1

    .line 127
    .local v3, "value":C
    if-ne v3, p1, :cond_b

    .line 128
    const/4 v4, 0x1

    .line 131
    .end local v3    # "value":C
    :goto_a
    return v4

    .line 126
    .restart local v3    # "value":C
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 131
    .end local v3    # "value":C
    :cond_e
    const/4 v4, 0x0

    goto :goto_a
.end method

.method private static copyOf([CI)[C
    .registers 5
    .param p0, "original"    # [C
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 349
    new-array v0, p1, [C

    .line 350
    .local v0, "copy":[C
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    return-object v0
.end method

.method public static ensureCapacity([CII)[C
    .registers 9
    .param p0, "array"    # [C
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 340
    if-ltz p1, :cond_2c

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 341
    if-ltz p2, :cond_2e

    move v0, v1

    :goto_15
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 342
    array-length v0, p0

    if-ge v0, p1, :cond_2b

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Chars;->copyOf([CI)[C

    move-result-object p0

    .end local p0    # "array":[C
    :cond_2b
    return-object p0

    .restart local p0    # "array":[C
    :cond_2c
    move v0, v2

    .line 340
    goto :goto_5

    :cond_2e
    move v0, v2

    .line 341
    goto :goto_15
.end method

.method public static fromByteArray([B)C
    .registers 8
    .param p0, "bytes"    # [B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 305
    array-length v0, p0

    if-lt v0, v6, :cond_24

    move v0, v1

    :goto_7
    const-string v3, "array too small: %s < %s"

    new-array v4, v6, [Ljava/lang/Object;

    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 307
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Chars;->fromBytes(BB)C

    move-result v0

    return v0

    :cond_24
    move v0, v2

    .line 305
    goto :goto_7
.end method

.method public static fromBytes(BB)C
    .registers 4
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    .line 319
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static hashCode(C)I
    .registers 1
    .param p0, "value"    # C

    .prologue
    .line 68
    return p0
.end method

.method public static indexOf([CC)I
    .registers 4
    .param p0, "array"    # [C
    .param p1, "target"    # C

    .prologue
    .line 144
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Chars;->indexOf([CCII)I

    move-result v0

    return v0
.end method

.method private static indexOf([CCII)I
    .registers 6
    .param p0, "array"    # [C
    .param p1, "target"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 150
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 151
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_8

    .line 155
    .end local v0    # "i":I
    :goto_7
    return v0

    .line 150
    .restart local v0    # "i":I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    :cond_b
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public static indexOf([C[C)I
    .registers 6
    .param p0, "array"    # [C
    .param p1, "target"    # [C

    .prologue
    .line 170
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    array-length v2, p1

    if-nez v2, :cond_f

    .line 173
    const/4 v0, 0x0

    .line 185
    :cond_e
    :goto_e
    return v0

    .line 177
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_29

    .line 178
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_e

    .line 179
    add-int v2, v0, v1

    aget-char v2, p0, v2

    aget-char v3, p1, v1

    if-eq v2, v3, :cond_26

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 178
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 185
    .end local v1    # "j":I
    :cond_29
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public static varargs join(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 7
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [C

    .prologue
    .line 364
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    array-length v2, p1

    .line 366
    .local v2, "len":I
    if-nez v2, :cond_9

    .line 367
    const-string v3, ""

    .line 376
    :goto_8
    return-object v3

    .line 370
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v2, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 372
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    aget-char v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1d
    if-ge v1, v2, :cond_2b

    .line 374
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-char v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 376
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method

.method public static lastIndexOf([CC)I
    .registers 4
    .param p0, "array"    # [C
    .param p1, "target"    # C

    .prologue
    .line 198
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Chars;->lastIndexOf([CCII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([CCII)I
    .registers 6
    .param p0, "array"    # [C
    .param p1, "target"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 204
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p2, :cond_c

    .line 205
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 209
    .end local v0    # "i":I
    :goto_8
    return v0

    .line 204
    .restart local v0    # "i":I
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 209
    :cond_c
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[C>;"
        }
    .end annotation

    .prologue
    .line 396
    sget-object v0, Lcom/google/common/primitives/Chars$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Chars$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([C)C
    .registers 5
    .param p0, "array"    # [C

    .prologue
    const/4 v3, 0x0

    .line 240
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 241
    aget-char v1, p0, v3

    .line 242
    .local v1, "max":C
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 243
    aget-char v2, p0, v0

    if-le v2, v1, :cond_14

    .line 244
    aget-char v1, p0, v0

    .line 242
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v1    # "max":C
    :cond_17
    move v2, v3

    .line 240
    goto :goto_5

    .line 247
    .restart local v0    # "i":I
    .restart local v1    # "max":C
    :cond_19
    return v1
.end method

.method public static varargs min([C)C
    .registers 5
    .param p0, "array"    # [C

    .prologue
    const/4 v3, 0x0

    .line 221
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 222
    aget-char v1, p0, v3

    .line 223
    .local v1, "min":C
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 224
    aget-char v2, p0, v0

    if-ge v2, v1, :cond_14

    .line 225
    aget-char v1, p0, v0

    .line 223
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v1    # "min":C
    :cond_17
    move v2, v3

    .line 221
    goto :goto_5

    .line 228
    .restart local v0    # "i":I
    .restart local v1    # "min":C
    :cond_19
    return v1
.end method

.method public static saturatedCast(J)C
    .registers 4
    .param p0, "value"    # J

    .prologue
    .line 94
    const-wide/32 v0, 0xffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_b

    .line 95
    const v0, 0xffff

    .line 100
    :goto_a
    return v0

    .line 97
    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_13

    .line 98
    const/4 v0, 0x0

    goto :goto_a

    .line 100
    :cond_13
    long-to-int v0, p0

    int-to-char v0, v0

    goto :goto_a
.end method

.method public static toArray(Ljava/util/Collection;)[C
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Character;",
            ">;)[C"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    if-eqz v4, :cond_b

    .line 431
    check-cast p0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->toCharArray()[C

    move-result-object v0

    .line 441
    .local v0, "array":[C
    .local v1, "boxedArray":[Ljava/lang/Object;
    .local v2, "i":I
    .local v3, "len":I
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    :cond_a
    return-object v0

    .line 434
    .end local v0    # "array":[C
    .end local v1    # "boxedArray":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 435
    .restart local v1    # "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 436
    .restart local v3    # "len":I
    new-array v0, v3, [C

    .line 437
    .restart local v0    # "array":[C
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_13
    if-ge v2, v3, :cond_a

    .line 439
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    aput-char v4, v0, v2

    .line 437
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public static toByteArray(C)[B
    .registers 4
    .param p0, "value"    # C
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method
