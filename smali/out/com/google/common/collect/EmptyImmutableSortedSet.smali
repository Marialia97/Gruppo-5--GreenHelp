.class Lcom/google/common/collect/EmptyImmutableSortedSet;
.super Lcom/google/common/collect/ImmutableSortedSet;
.source "EmptyImmutableSortedSet.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 39
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
    .line 72
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "target"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
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
    .line 55
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    .local p1, "targets":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method createDescendingSet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/EmptyImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/EmptyImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/EmptyImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 34
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedSet;->descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;

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
    .line 84
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_c

    move-object v0, p1

    .line 85
    check-cast v0, Ljava/util/Set;

    .line 86
    .local v0, "that":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    .line 88
    .end local v0    # "that":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 92
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 3
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    return-object p0
.end method

.method indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "target"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 126
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 47
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 68
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
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
    .line 59
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 34
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 43
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 5
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    return-object p0
.end method

.method tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 3
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    return-object p0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 76
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
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
    .line 80
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    .local p0, "this":Lcom/google/common/collect/EmptyImmutableSortedSet;, "Lcom/google/common/collect/EmptyImmutableSortedSet<TE;>;"
    const-string v0, "[]"

    return-object v0
.end method
