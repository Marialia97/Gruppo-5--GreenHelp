.class Lcom/google/common/collect/FilteredEntryMultimap$AsMap;
.super Ljava/util/AbstractMap;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/FilteredEntryMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/FilteredEntryMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredEntryMultimap;)V
    .registers 2

    .prologue
    .line 157
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$AsMap;, "Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    iput-object p1, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 165
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$AsMap;, "Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/FilteredEntryMultimap;->clear()V

    .line 166
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 160
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$AsMap;, "Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$AsMap;, "Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    new-instance v0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;-><init>(Lcom/google/common/collect/FilteredEntryMultimap$AsMap;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 157
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$AsMap;, "Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$AsMap;, "Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    const/4 v2, 0x0

    .line 170
    iget-object v3, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    iget-object v3, v3, Lcom/google/common/collect/FilteredEntryMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v3}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 171
    .local v1, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v1, :cond_12

    .line 177
    :cond_11
    :goto_11
    return-object v2

    .line 175
    :cond_12
    move-object v0, p1

    .line 176
    .local v0, "k":Ljava/lang/Object;, "TK;"
    new-instance v3, Lcom/google/common/collect/FilteredEntryMultimap$ValuePredicate;

    iget-object v4, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-direct {v3, v4, v0}, Lcom/google/common/collect/FilteredEntryMultimap$ValuePredicate;-><init>(Lcom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lcom/google/common/collect/FilteredEntryMultimap;->filterCollection(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v1

    .line 177
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    move-object v2, v1

    goto :goto_11
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$AsMap;, "Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->keySet:Ljava/util/Set;

    .line 211
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_b

    .line 212
    new-instance v0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$1;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$1;-><init>(Lcom/google/common/collect/FilteredEntryMultimap$AsMap;)V

    iput-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->keySet:Ljava/util/Set;

    .line 234
    :cond_b
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 157
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$AsMap;, "Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 9
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$AsMap;, "Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    const/4 v5, 0x0

    .line 182
    iget-object v6, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    iget-object v6, v6, Lcom/google/common/collect/FilteredEntryMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v6}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 183
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_12

    .line 202
    :cond_11
    :goto_11
    return-object v5

    .line 187
    :cond_12
    move-object v2, p1

    .line 188
    .local v2, "k":Ljava/lang/Object;, "TK;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 189
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 190
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 192
    .local v4, "v":Ljava/lang/Object;, "TV;"
    iget-object v6, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-static {v6, v2, v4}, Lcom/google/common/collect/FilteredEntryMultimap;->access$000(Lcom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 193
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 194
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 197
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :cond_34
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    .line 199
    iget-object v5, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    iget-object v5, v5, Lcom/google/common/collect/FilteredEntryMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    instance-of v5, v5, Lcom/google/common/collect/SetMultimap;

    if-eqz v5, :cond_4b

    .line 200
    invoke-static {v3}, Lcom/google/common/collect/Sets;->newLinkedHashSet(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    goto :goto_11

    .line 202
    :cond_4b
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto :goto_11
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Lcom/google/common/collect/FilteredEntryMultimap$AsMap;, "Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    new-instance v0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$3;-><init>(Lcom/google/common/collect/FilteredEntryMultimap$AsMap;)V

    return-object v0
.end method
