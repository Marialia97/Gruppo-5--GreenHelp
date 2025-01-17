.class Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;
.super Lcom/google/common/collect/Maps$KeySet;
.source "AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$KeySet",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final subMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 925
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.KeySet;"
    .local p2, "subMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$KeySet;-><init>()V

    .line 926
    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->subMap:Ljava/util/Map;

    .line 927
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 975
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.KeySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->clear(Ljava/util/Iterator;)V

    .line 976
    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 979
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.KeySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->subMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 983
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.KeySet;"
    if-eq p0, p1, :cond_e

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->subMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 987
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->subMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 935
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.KeySet;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->subMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 937
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;Ljava/util/Iterator;)V

    return-object v1
.end method

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
    .line 931
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->subMap:Ljava/util/Map;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 963
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.KeySet;"
    const/4 v1, 0x0

    .line 964
    .local v1, "count":I
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->subMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 965
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_17

    .line 966
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 967
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 968
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v2, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$220(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 970
    :cond_17
    if-lez v1, :cond_1b

    const/4 v2, 0x1

    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method
