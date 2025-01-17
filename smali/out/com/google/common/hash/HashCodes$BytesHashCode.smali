.class final Lcom/google/common/hash/HashCodes$BytesHashCode;
.super Lcom/google/common/hash/HashCode;
.source "HashCodes.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HashCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BytesHashCode"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final bytes:[B


# direct methods
.method constructor <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/common/hash/HashCode;-><init>()V

    .line 148
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    .line 149
    return-void
.end method


# virtual methods
.method public asBytes()[B
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public asInt()I
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    array-length v0, v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_3d

    move v0, v1

    :goto_9
    const-string v3, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes)."

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0

    :cond_3d
    move v0, v2

    .line 160
    goto :goto_9
.end method

.method public asLong()J
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0xff

    .line 169
    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    array-length v0, v0

    if-lt v0, v8, :cond_6d

    move v0, v1

    :goto_c
    const-string v3, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes)."

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    aget-byte v0, v0, v2

    int-to-long v2, v0

    and-long/2addr v2, v6

    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    shl-long/2addr v0, v8

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x7

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    :cond_6d
    move v0, v2

    .line 169
    goto :goto_c
.end method

.method public bits()I
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 188
    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    array-length v2, v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_b

    .line 189
    invoke-virtual {p0}, Lcom/google/common/hash/HashCodes$BytesHashCode;->asInt()I

    move-result v1

    .line 195
    :cond_a
    return v1

    .line 191
    :cond_b
    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 192
    .local v1, "val":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_13
    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 193
    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public padToLong()J
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/google/common/hash/HashCodes$BytesHashCode;->asInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v0

    :goto_f
    return-wide v0

    :cond_10
    invoke-virtual {p0}, Lcom/google/common/hash/HashCodes$BytesHashCode;->asLong()J

    move-result-wide v0

    goto :goto_f
.end method
