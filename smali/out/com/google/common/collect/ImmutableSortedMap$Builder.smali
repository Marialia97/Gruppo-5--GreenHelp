.class public Lcom/google/common/collect/ImmutableSortedMap$Builder;
.super Lcom/google/common/collect/ImmutableMap$Builder;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap$Builder",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 368
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    .line 369
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/common/collect/ImmutableMap;
    .registers 2

    .prologue
    .line 360
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->build()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/common/collect/ImmutableSortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->entries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->access$000(Ljava/util/List;Ljava/util/Comparator;)V

    .line 416
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->entries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->access$100(Ljava/util/List;Ljava/util/Comparator;)V

    .line 417
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->entries:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->fromSortedEntries(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 360
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 3
    .param p1, "x0"    # Ljava/util/Map$Entry;

    .prologue
    .line 360
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->entries:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 391
    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 3
    .param p1, "x0"    # Ljava/util/Map;

    .prologue
    .line 360
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 403
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    goto :goto_8

    .line 405
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_20
    return-object p0
.end method
