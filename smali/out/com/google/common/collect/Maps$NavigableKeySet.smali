.class Lcom/google/common/collect/Maps$NavigableKeySet;
.super Lcom/google/common/collect/Maps$KeySet;
.source "Maps.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "NavigableMap"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NavigableKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$KeySet",
        "<TK;TV;>;",
        "Ljava/util/NavigableSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3585
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "map":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Maps$KeySet;-><init>()V

    .line 3586
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    iput-object v0, p0, Lcom/google/common/collect/Maps$NavigableKeySet;->map:Ljava/util/NavigableMap;

    .line 3587
    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3621
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 3596
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3646
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3641
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3601
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3616
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 4
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3660
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3675
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Maps$NavigableKeySet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3626
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3606
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3611
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic map()Ljava/util/Map;
    .registers 2

    .prologue
    .line 3581
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method map()Ljava/util/NavigableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3591
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$NavigableKeySet;->map:Ljava/util/NavigableMap;

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3631
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3636
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 6
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3655
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    .local p3, "toElement":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3670
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    .local p2, "toElement":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/Maps$NavigableKeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 4
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3665
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3680
    .local p0, "this":Lcom/google/common/collect/Maps$NavigableKeySet;, "Lcom/google/common/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Maps$NavigableKeySet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
