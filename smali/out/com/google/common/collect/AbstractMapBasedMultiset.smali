.class abstract Lcom/google/common/collect/AbstractMapBasedMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultiset",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f3c5464cd7009c6L
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "not needed in emulated source."
    .end annotation
.end field


# instance fields
.field private transient backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TE;",
            "Lcom/google/common/collect/Count;",
            ">;"
        }
    .end annotation
.end field

.field private transient size:J


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;",
            "Lcom/google/common/collect/Count;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, "backingMap":Ljava/util/Map;, "Ljava/util/Map<TE;Lcom/google/common/collect/Count;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 63
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/AbstractMapBasedMultiset;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$110(Lcom/google/common/collect/AbstractMapBasedMultiset;)J
    .registers 5
    .param p0, "x0"    # Lcom/google/common/collect/AbstractMapBasedMultiset;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method static synthetic access$122(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J
    .registers 6
    .param p0, "x0"    # Lcom/google/common/collect/AbstractMapBasedMultiset;
    .param p1, "x1"    # J

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method private static getAndSet(Lcom/google/common/collect/Count;I)I
    .registers 3
    .param p0, "i"    # Lcom/google/common/collect/Count;
    .param p1, "count"    # I

    .prologue
    .line 286
    if-nez p0, :cond_4

    .line 287
    const/4 v0, 0x0

    .line 290
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Count;->getAndSet(I)I

    move-result v0

    goto :goto_3
.end method

.method private readObjectNoData()V
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectStreamException"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Stream data required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .registers 15
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 216
    if-nez p2, :cond_9

    .line 217
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 234
    :goto_8
    return v1

    .line 219
    :cond_9
    if-lez p2, :cond_35

    move v4, v5

    :goto_c
    const-string v7, "occurrences cannot be negative: %s"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v4, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iget-object v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    .line 223
    .local v0, "frequency":Lcom/google/common/collect/Count;
    if-nez v0, :cond_37

    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, "oldCount":I
    iget-object v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    new-instance v5, Lcom/google/common/collect/Count;

    invoke-direct {v5, p2}, Lcom/google/common/collect/Count;-><init>(I)V

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :goto_2e
    iget-wide v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    goto :goto_8

    .end local v0    # "frequency":Lcom/google/common/collect/Count;
    .end local v1    # "oldCount":I
    :cond_35
    move v4, v6

    .line 219
    goto :goto_c

    .line 227
    .restart local v0    # "frequency":Lcom/google/common/collect/Count;
    :cond_37
    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v1

    .line 228
    .restart local v1    # "oldCount":I
    int-to-long v8, v1

    int-to-long v10, p2

    add-long v2, v8, v10

    .line 229
    .local v2, "newCount":J
    const-wide/32 v8, 0x7fffffff

    cmp-long v4, v2, v8

    if-gtz v4, :cond_58

    move v4, v5

    :goto_47
    const-string v7, "too many occurrences: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v4, v7, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-virtual {v0, p2}, Lcom/google/common/collect/Count;->getAndAdd(I)I

    goto :goto_2e

    :cond_58
    move v4, v6

    .line 229
    goto :goto_47
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 132
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    .line 133
    .local v0, "frequency":Lcom/google/common/collect/Count;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/Count;->set(I)V

    goto :goto_a

    .line 135
    .end local v0    # "frequency":Lcom/google/common/collect/Count;
    :cond_1b
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 136
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 137
    return-void
.end method

.method public count(Ljava/lang/Object;)I
    .registers 4
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 202
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-static {v1, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    .line 203
    .local v0, "frequency":Lcom/google/common/collect/Count;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v1

    goto :goto_b
.end method

.method distinctElements()I
    .registers 2

    .prologue
    .line 141
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    .local v0, "backingEntries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TE;Lcom/google/common/collect/Count;>;>;"
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 11
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 238
    if-nez p2, :cond_9

    .line 239
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v5

    .line 260
    :cond_8
    :goto_8
    return v5

    .line 241
    :cond_9
    if-lez p2, :cond_36

    move v3, v4

    :goto_c
    const-string v6, "occurrences cannot be negative: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v6, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    .line 244
    .local v0, "frequency":Lcom/google/common/collect/Count;
    if-eqz v0, :cond_8

    .line 248
    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v2

    .line 251
    .local v2, "oldCount":I
    if-le v2, p2, :cond_38

    .line 252
    move v1, p2

    .line 258
    .local v1, "numberRemoved":I
    :goto_2a
    neg-int v3, v1

    invoke-virtual {v0, v3}, Lcom/google/common/collect/Count;->addAndGet(I)I

    .line 259
    iget-wide v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    move v5, v2

    .line 260
    goto :goto_8

    .end local v0    # "frequency":Lcom/google/common/collect/Count;
    .end local v1    # "numberRemoved":I
    .end local v2    # "oldCount":I
    :cond_36
    move v3, v5

    .line 241
    goto :goto_c

    .line 254
    .restart local v0    # "frequency":Lcom/google/common/collect/Count;
    .restart local v2    # "oldCount":I
    :cond_38
    move v1, v2

    .line 255
    .restart local v1    # "numberRemoved":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a
.end method

.method setBackingMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;",
            "Lcom/google/common/collect/Count;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, "backingMap":Ljava/util/Map;, "Ljava/util/Map<TE;Lcom/google/common/collect/Count;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 69
    return-void
.end method

.method public setCount(Ljava/lang/Object;I)I
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v2, "count"

    invoke-static {p2, v2}, Lcom/google/common/collect/Multisets;->checkNonnegative(ILjava/lang/String;)V

    .line 269
    if-nez p2, :cond_1c

    .line 270
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    .line 271
    .local v0, "existingCounter":Lcom/google/common/collect/Count;
    invoke-static {v0, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->getAndSet(Lcom/google/common/collect/Count;I)I

    move-result v1

    .line 281
    .local v1, "oldCount":I
    :cond_13
    :goto_13
    iget-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    sub-int v4, p2, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 282
    return v1

    .line 273
    .end local v0    # "existingCounter":Lcom/google/common/collect/Count;
    .end local v1    # "oldCount":I
    :cond_1c
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    .line 274
    .restart local v0    # "existingCounter":Lcom/google/common/collect/Count;
    invoke-static {v0, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->getAndSet(Lcom/google/common/collect/Count;I)I

    move-result v1

    .line 276
    .restart local v1    # "oldCount":I
    if-nez v0, :cond_13

    .line 277
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    new-instance v3, Lcom/google/common/collect/Count;

    invoke-direct {v3, p2}, Lcom/google/common/collect/Count;-><init>(I)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13
.end method

.method public size()I
    .registers 3

    .prologue
    .line 147
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method
