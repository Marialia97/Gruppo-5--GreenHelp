.class Lcom/google/common/collect/FilteredEntryMultimap$AsMap$3;
.super Lcom/google/common/collect/Maps$Values;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$Values",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredEntryMultimap$AsMap;)V
    .registers 2

    .prologue
    .line 286
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$AsMap$3;, "Lcom/google/common/collect/FilteredEntryMultimap$AsMap.3;"
    iput-object p1, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$3;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$Values;-><init>()V

    return-void
.end method


# virtual methods
.method map()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$AsMap$3;, "Lcom/google/common/collect/FilteredEntryMultimap$AsMap.3;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$3;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 294
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$AsMap$3;, "Lcom/google/common/collect/FilteredEntryMultimap$AsMap.3;"
    instance-of v5, p1, Ljava/util/Collection;

    if-eqz v5, :cond_61

    move-object v0, p1

    .line 295
    check-cast v0, Ljava/util/Collection;

    .line 296
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v5, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$3;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v5, v5, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    iget-object v5, v5, Lcom/google/common/collect/FilteredEntryMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v5}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 298
    .local v3, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 299
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 300
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 301
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    new-instance v6, Lcom/google/common/collect/FilteredEntryMultimap$ValuePredicate;

    iget-object v7, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$3;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v7, v7, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-direct {v6, v7, v4}, Lcom/google/common/collect/FilteredEntryMultimap$ValuePredicate;-><init>(Lcom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;)V

    invoke-static {v5, v6}, Lcom/google/common/collect/FilteredEntryMultimap;->filterCollection(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v1

    .line 303
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_19

    invoke-interface {v0, v1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 304
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v6, v5, :cond_5d

    .line 305
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 309
    :goto_5b
    const/4 v5, 0x1

    .line 313
    .end local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    .end local v3    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    :goto_5c
    return v5

    .line 307
    .restart local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    .restart local v3    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    .restart local v4    # "key":Ljava/lang/Object;, "TK;"
    :cond_5d
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_5b

    .line 313
    .end local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    .end local v3    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    :cond_61
    const/4 v5, 0x0

    goto :goto_5c
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$AsMap$3;, "Lcom/google/common/collect/FilteredEntryMultimap$AsMap.3;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$3;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Maps;->valueFunction()Lcom/google/common/base/Function;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Predicates;->compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/FilteredEntryMultimap;->removeIf(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$AsMap$3;, "Lcom/google/common/collect/FilteredEntryMultimap$AsMap.3;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$3;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Maps;->valueFunction()Lcom/google/common/base/Function;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Predicates;->compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/FilteredEntryMultimap;->removeIf(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method
