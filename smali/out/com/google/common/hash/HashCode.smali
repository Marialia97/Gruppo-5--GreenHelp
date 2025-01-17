.class public abstract Lcom/google/common/hash/HashCode;
.super Ljava/lang/Object;
.source "HashCode.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# static fields
.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 131
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/HashCode;->hexDigits:[C

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract asBytes()[B
.end method

.method public abstract asInt()I
.end method

.method public abstract asLong()J
.end method

.method public abstract bits()I
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    instance-of v1, p1, Lcom/google/common/hash/HashCode;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 92
    check-cast v0, Lcom/google/common/hash/HashCode;

    .line 95
    .local v0, "that":Lcom/google/common/hash/HashCode;
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v1

    .line 97
    .end local v0    # "that":Lcom/google/common/hash/HashCode;
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v0

    return v0
.end method

.method public abstract padToLong()J
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v2

    .line 124
    .local v2, "bytes":[B
    new-instance v5, Ljava/lang/StringBuilder;

    array-length v6, v2

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 125
    .local v5, "sb":Ljava/lang/StringBuilder;
    move-object v0, v2

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_f
    if-ge v3, v4, :cond_2b

    aget-byte v1, v0, v3

    .line 126
    .local v1, "b":B
    sget-object v6, Lcom/google/common/hash/HashCode;->hexDigits:[C

    shr-int/lit8 v7, v1, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/google/common/hash/HashCode;->hexDigits:[C

    and-int/lit8 v8, v1, 0xf

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 128
    .end local v1    # "b":B
    :cond_2b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public writeBytesTo([BII)I
    .registers 9
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "maxLength"    # I

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v0

    .line 79
    .local v0, "hash":[B
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput p3, v1, v4

    const/4 v2, 0x1

    array-length v3, v0

    aput v3, v1, v2

    invoke-static {v1}, Lcom/google/common/primitives/Ints;->min([I)I

    move-result p3

    .line 80
    add-int v1, p2, p3

    array-length v2, p1

    invoke-static {p2, v1, v2}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 81
    invoke-static {v0, v4, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    return p3
.end method
