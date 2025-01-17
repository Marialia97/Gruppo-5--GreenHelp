.class public Landroid/support/v4/util/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .prologue
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 69
    if-nez p1, :cond_13

    .line 70
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_LONGS:[J

    iput-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 71
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 77
    :goto_10
    iput v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 78
    return-void

    .line 73
    :cond_13
    invoke-static {p1}, Landroid/support/v4/util/ContainerHelpers;->idealLongArraySize(I)I

    move-result p1

    .line 74
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 75
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_10
.end method

.method private gc()V
    .registers 9

    .prologue
    .line 158
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 159
    .local v2, "n":I
    const/4 v3, 0x0

    .line 160
    .local v3, "o":I
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 161
    .local v1, "keys":[J
    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 163
    .local v5, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v2, :cond_20

    .line 164
    aget-object v4, v5, v0

    .line 166
    .local v4, "val":Ljava/lang/Object;
    sget-object v6, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1d

    .line 167
    if-eq v0, v3, :cond_1b

    .line 168
    aget-wide v6, v1, v0

    aput-wide v6, v1, v3

    .line 169
    aput-object v4, v5, v3

    .line 170
    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 173
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    .line 163
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 177
    .end local v4    # "val":Ljava/lang/Object;
    :cond_20
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 178
    iput v3, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 181
    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .registers 11
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 369
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-eqz v4, :cond_15

    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v5, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget-wide v4, v4, v5

    cmp-long v4, p1, v4

    if-gtz v4, :cond_15

    .line 370
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 396
    :goto_14
    return-void

    .line 374
    :cond_15
    iget-boolean v4, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v4, :cond_23

    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_23

    .line 375
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 378
    :cond_23
    iget v3, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 379
    .local v3, "pos":I
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v4, v4

    if-lt v3, v4, :cond_48

    .line 380
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Landroid/support/v4/util/ContainerHelpers;->idealLongArraySize(I)I

    move-result v0

    .line 382
    .local v0, "n":I
    new-array v1, v0, [J

    .line 383
    .local v1, "nkeys":[J
    new-array v2, v0, [Ljava/lang/Object;

    .line 386
    .local v2, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    iput-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 390
    iput-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 393
    .end local v0    # "n":I
    .end local v1    # "nkeys":[J
    .end local v2    # "nvalues":[Ljava/lang/Object;
    :cond_48
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v3

    .line 394
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v3

    .line 395
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    goto :goto_14
.end method

.method public clear()V
    .registers 6

    .prologue
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    const/4 v4, 0x0

    .line 353
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 354
    .local v1, "n":I
    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 356
    .local v2, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v1, :cond_e

    .line 357
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 360
    :cond_e
    iput v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 361
    iput-boolean v4, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 362
    return-void
.end method

.method public clone()Landroid/support/v4/util/LongSparseArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LongSparseArray",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/LongSparseArray;

    .line 86
    .local v0, "clone":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 87
    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 91
    return-object v0

    .line 88
    .end local v0    # "clone":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    :catch_1b
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/LongSparseArray;->clone()Landroid/support/v4/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(J)Z
    .registers 4
    .param p1, "key"    # J

    .prologue
    .line 341
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public delete(J)V
    .registers 6
    .param p1, "key"    # J

    .prologue
    .line 128
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 130
    .local v0, "i":I
    if-ltz v0, :cond_1b

    .line 131
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_1b

    .line 132
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 136
    :cond_1b
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p3, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 117
    .local v0, "i":I
    if-ltz v0, :cond_12

    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_13

    .line 120
    .end local p3    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_12
    :goto_12
    return-object p3

    .restart local p3    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_13
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p3, v1, v0

    goto :goto_12
.end method

.method public indexOfKey(J)I
    .registers 6
    .param p1, "key"    # J

    .prologue
    .line 312
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 313
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 316
    :cond_7
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_7

    .line 329
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 332
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_16

    .line 333
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_13

    .line 336
    .end local v0    # "i":I
    :goto_12
    return v0

    .line 332
    .restart local v0    # "i":I
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 336
    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 263
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public keyAt(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 272
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 273
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 276
    :cond_7
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .registers 13
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 189
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v5, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v4, v5, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 191
    .local v0, "i":I
    if-ltz v0, :cond_10

    .line 192
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 233
    :goto_f
    return-void

    .line 194
    :cond_10
    xor-int/lit8 v0, v0, -0x1

    .line 196
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-ge v0, v4, :cond_27

    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_27

    .line 197
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 198
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    goto :goto_f

    .line 202
    :cond_27
    iget-boolean v4, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v4, :cond_3f

    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_3f

    .line 203
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 206
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v5, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v4, v5, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 209
    :cond_3f
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_66

    .line 210
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Landroid/support/v4/util/ContainerHelpers;->idealLongArraySize(I)I

    move-result v1

    .line 212
    .local v1, "n":I
    new-array v2, v1, [J

    .line 213
    .local v2, "nkeys":[J
    new-array v3, v1, [Ljava/lang/Object;

    .line 216
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iput-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 220
    iput-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 223
    .end local v1    # "n":I
    .end local v2    # "nkeys":[J
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_66
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_83

    .line 225
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    :cond_83
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 230
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 231
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    goto/16 :goto_f
.end method

.method public putAll(Landroid/support/v4/util/LongSparseArray;)V
    .registers 7
    .param p1    # Landroid/support/v4/util/LongSparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/LongSparseArray",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p1, "other":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<+TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    .local v1, "size":I
    :goto_5
    if-ge v0, v1, :cond_15

    .line 242
    invoke-virtual {p1, v0}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 244
    :cond_15
    return-void
.end method

.method public remove(J)V
    .registers 4
    .param p1, "key"    # J

    .prologue
    .line 142
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    .line 143
    return-void
.end method

.method public removeAt(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 149
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    .line 150
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 153
    :cond_11
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 300
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 303
    :cond_7
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 304
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 251
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 252
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 255
    :cond_7
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 407
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v5

    if-gtz v5, :cond_9

    .line 408
    const-string v5, "{}"

    .line 428
    :goto_8
    return-object v5

    .line 411
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    mul-int/lit8 v5, v5, 0x1c

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 412
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v5, 0x7b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget v5, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-ge v1, v5, :cond_41

    .line 414
    if-lez v1, :cond_23

    .line 415
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_23
    invoke-virtual {p0, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 418
    .local v2, "key":J
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 419
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {p0, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 421
    .local v4, "value":Ljava/lang/Object;
    if-eq v4, p0, :cond_3b

    .line 422
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 413
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 424
    :cond_3b
    const-string v5, "(this Map)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 427
    .end local v2    # "key":J
    .end local v4    # "value":Ljava/lang/Object;
    :cond_41
    const/16 v5, 0x7d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 287
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 290
    :cond_7
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
