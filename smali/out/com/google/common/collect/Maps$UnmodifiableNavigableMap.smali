.class Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;
.super Lcom/google/common/collect/ForwardingSortedMap;
.source "Maps.java"

# interfaces
.implements Ljava/util/NavigableMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "NavigableMap"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableNavigableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingSortedMap",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient descendingMap:Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3152
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "delegate":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSortedMap;-><init>()V

    .line 3153
    iput-object p1, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    .line 3154
    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3183
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$700(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3188
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3147
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Map;
    .registers 2

    .prologue
    .line 3147
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3158
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3245
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3225
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->descendingMap:Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;

    .line 3226
    .local v0, "result":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    if-nez v0, :cond_13

    .line 3227
    new-instance v0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;

    .end local v0    # "result":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;-><init>(Ljava/util/NavigableMap;)V

    .restart local v0    # "result":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    iput-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->descendingMap:Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;

    .line 3228
    iput-object p0, v0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->descendingMap:Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;

    .line 3230
    :cond_13
    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3203
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$700(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3173
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$700(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3178
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 4
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3276
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3255
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3193
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$700(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3198
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 3235
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3208
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$700(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3163
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$700(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3168
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3240
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3213
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3218
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 6
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3267
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3250
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 4
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3281
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->delegate:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3260
    .local p0, "this":Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;, "Lcom/google/common/collect/Maps$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
