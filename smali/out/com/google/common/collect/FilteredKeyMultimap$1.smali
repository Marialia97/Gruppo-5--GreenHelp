.class Lcom/google/common/collect/FilteredKeyMultimap$1;
.super Lcom/google/common/collect/Multimaps$Entries;
.source "FilteredKeyMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/FilteredKeyMultimap;->createEntries()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multimaps$Entries",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/FilteredKeyMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredKeyMultimap;)V
    .registers 2

    .prologue
    .line 178
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap$1;, "Lcom/google/common/collect/FilteredKeyMultimap.1;"
    iput-object p1, p0, Lcom/google/common/collect/FilteredKeyMultimap$1;->this$0:Lcom/google/common/collect/FilteredKeyMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Multimaps$Entries;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap$1;, "Lcom/google/common/collect/FilteredKeyMultimap.1;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap$1;->this$0:Lcom/google/common/collect/FilteredKeyMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/FilteredKeyMultimap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method multimap()Lcom/google/common/collect/Multimap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap$1;, "Lcom/google/common/collect/FilteredKeyMultimap.1;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap$1;->this$0:Lcom/google/common/collect/FilteredKeyMultimap;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 192
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap$1;, "Lcom/google/common/collect/FilteredKeyMultimap.1;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_38

    move-object v0, p1

    .line 193
    check-cast v0, Ljava/util/Map$Entry;

    .line 194
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/google/common/collect/FilteredKeyMultimap$1;->this$0:Lcom/google/common/collect/FilteredKeyMultimap;

    iget-object v1, v1, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/common/collect/Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/google/common/collect/FilteredKeyMultimap$1;->this$0:Lcom/google/common/collect/FilteredKeyMultimap;

    iget-object v1, v1, Lcom/google/common/collect/FilteredKeyMultimap;->keyPredicate:Lcom/google/common/base/Predicate;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 196
    iget-object v1, p0, Lcom/google/common/collect/FilteredKeyMultimap$1;->this$0:Lcom/google/common/collect/FilteredKeyMultimap;

    iget-object v1, v1, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 199
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :goto_37
    return v1

    :cond_38
    const/4 v1, 0x0

    goto :goto_37
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
    .line 204
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap$1;, "Lcom/google/common/collect/FilteredKeyMultimap.1;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Lcom/google/common/collect/FilteredKeyMultimap$1;->this$0:Lcom/google/common/collect/FilteredKeyMultimap;

    iget-object v1, v1, Lcom/google/common/collect/FilteredKeyMultimap;->keyPredicate:Lcom/google/common/base/Predicate;

    invoke-static {}, Lcom/google/common/collect/Maps;->keyFunction()Lcom/google/common/base/Function;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Predicates;->compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 206
    .local v0, "combinedPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/util/Map$Entry<TK;*>;>;"
    iget-object v1, p0, Lcom/google/common/collect/FilteredKeyMultimap$1;->this$0:Lcom/google/common/collect/FilteredKeyMultimap;

    iget-object v1, v1, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Iterators;->removeIf(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    move-result v1

    return v1
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
    .line 211
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap$1;, "Lcom/google/common/collect/FilteredKeyMultimap.1;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v1, p0, Lcom/google/common/collect/FilteredKeyMultimap$1;->this$0:Lcom/google/common/collect/FilteredKeyMultimap;

    iget-object v1, v1, Lcom/google/common/collect/FilteredKeyMultimap;->keyPredicate:Lcom/google/common/base/Predicate;

    invoke-static {}, Lcom/google/common/collect/Maps;->keyFunction()Lcom/google/common/base/Function;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Predicates;->compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 214
    .local v0, "combinedPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/util/Map$Entry<TK;*>;>;"
    iget-object v1, p0, Lcom/google/common/collect/FilteredKeyMultimap$1;->this$0:Lcom/google/common/collect/FilteredKeyMultimap;

    iget-object v1, v1, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Iterators;->removeIf(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    move-result v1

    return v1
.end method
