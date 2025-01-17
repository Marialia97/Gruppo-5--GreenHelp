.class final Lcom/google/common/collect/EmptyImmutableSortedMultiset;
.super Lcom/google/common/collect/ImmutableSortedMultiset;
.source "EmptyImmutableSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedMultiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final elementSet:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/ImmutableSortedSet;

    .line 35
    return-void
.end method


# virtual methods
.method public asList()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    const/4 v0, 0x0

    return v0
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
    .line 59
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    .local p1, "targets":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/NavigableSet;
    .registers 2

    .prologue
    .line 29
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 29
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .registers 2

    .prologue
    .line 29
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 29
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 103
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    instance-of v1, p1, Lcom/google/common/collect/Multiset;

    if-eqz v1, :cond_c

    move-object v0, p1

    .line 104
    check-cast v0, Lcom/google/common/collect/Multiset;

    .line 105
    .local v0, "other":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->isEmpty()Z

    move-result v1

    .line 107
    .end local v0    # "other":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 112
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 3
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    .local p1, "upperBound":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-object p0
.end method

.method public bridge synthetic headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/google/common/collect/BoundType;

    .prologue
    .line 29
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 122
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 29
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 64
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 3
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-object p0
.end method

.method public bridge synthetic tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/google/common/collect/BoundType;

    .prologue
    .line 29
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 127
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    sget-object v0, Lcom/google/common/collect/ObjectArrays;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    .local p1, "other":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedMultiset;, "Lcom/google/common/collect/EmptyImmutableSortedMultiset<TE;>;"
    const-string v0, "[]"

    return-object v0
.end method
