.class Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final keyIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

.field valueIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;)V
    .registers 3

    .prologue
    .line 1183
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1184
    invoke-static {p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$000(Lcom/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    .line 1185
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1186
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->findValueIteratorAndKey()V

    .line 1190
    :goto_1e
    return-void

    .line 1188
    :cond_1f
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyModifiableIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    goto :goto_1e
.end method


# virtual methods
.method findValueIteratorAndKey()V
    .registers 3

    .prologue
    .line 1193
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.EntryIterator;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1194
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->key:Ljava/lang/Object;

    .line 1195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->collection:Ljava/util/Collection;

    .line 1196
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    .line 1197
    return-void
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 1201
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1177
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1206
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1207
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->findValueIteratorAndKey()V

    .line 1209
    :cond_b
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 1214
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1215
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1216
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1218
    :cond_12
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$210(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    .line 1219
    return-void
.end method
