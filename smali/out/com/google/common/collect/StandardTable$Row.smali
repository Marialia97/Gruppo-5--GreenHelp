.class Lcom/google/common/collect/StandardTable$Row;
.super Ljava/util/AbstractMap;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Row"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/StandardTable$Row$RowEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<TC;TV;>;"
    }
.end annotation


# instance fields
.field backingRowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation
.end field

.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TC;>;"
        }
    .end annotation
.end field

.field final rowKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/StandardTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    .local p2, "rowKey":Ljava/lang/Object;, "TR;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 343
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    .line 344
    return-void
.end method


# virtual methods
.method backingRowMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_18
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->computeBackingRowMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    :goto_1e
    return-object v0

    :cond_1f
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    goto :goto_1e
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 405
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->backingRowMap()Ljava/util/Map;

    move-result-object v0

    .line 406
    .local v0, "backingRowMap":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-eqz v0, :cond_9

    .line 407
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 409
    :cond_9
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->maintainEmptyInvariant()V

    .line 410
    return-void
.end method

.method computeBackingRowMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 369
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->backingRowMap()Ljava/util/Map;

    move-result-object v0

    .line 370
    .local v0, "backingRowMap":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-eqz p1, :cond_10

    if-eqz v0, :cond_10

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->entrySet:Ljava/util/Set;

    .line 433
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TC;TV;>;>;"
    if-nez v0, :cond_c

    .line 434
    new-instance v0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TC;TV;>;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;-><init>(Lcom/google/common/collect/StandardTable$Row;Lcom/google/common/collect/StandardTable$1;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->entrySet:Ljava/util/Set;

    .line 436
    :cond_c
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->backingRowMap()Ljava/util/Map;

    move-result-object v0

    .line 377
    .local v0, "backingRowMap":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-eqz p1, :cond_d

    if-eqz v0, :cond_d

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->keySet:Ljava/util/Set;

    .line 417
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TC;>;"
    if-nez v0, :cond_b

    .line 418
    new-instance v0, Lcom/google/common/collect/StandardTable$Row$1;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TC;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/StandardTable$Row$1;-><init>(Lcom/google/common/collect/StandardTable$Row;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->keySet:Ljava/util/Set;

    .line 425
    :cond_b
    return-object v0
.end method

.method maintainEmptyInvariant()V
    .registers 3

    .prologue
    .line 361
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->backingRowMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 362
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    .line 365
    :cond_1a
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    .local p1, "key":Ljava/lang/Object;, "TC;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 387
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 389
    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/collect/StandardTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_18
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->backingRowMap()Ljava/util/Map;

    move-result-object v0

    .line 395
    .local v0, "backingRowMap":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-nez v0, :cond_8

    .line 396
    const/4 v1, 0x0

    .line 400
    :goto_7
    return-object v1

    .line 398
    :cond_8
    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 399
    .local v1, "result":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->maintainEmptyInvariant()V

    goto :goto_7
.end method
