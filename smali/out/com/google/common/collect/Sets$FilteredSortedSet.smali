.class Lcom/google/common/collect/Sets$FilteredSortedSet;
.super Lcom/google/common/collect/Sets$FilteredSet;
.source "Sets.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$FilteredSet",
        "<TE;>;",
        "Ljava/util/SortedSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Lcom/google/common/base/Predicate",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 881
    .local p0, "this":Lcom/google/common/collect/Sets$FilteredSortedSet;, "Lcom/google/common/collect/Sets$FilteredSortedSet<TE;>;"
    .local p1, "unfiltered":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p2, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Sets$FilteredSet;-><init>(Ljava/util/Set;Lcom/google/common/base/Predicate;)V

    .line 882
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 886
    .local p0, "this":Lcom/google/common/collect/Sets$FilteredSortedSet;, "Lcom/google/common/collect/Sets$FilteredSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$FilteredSortedSet;->unfiltered:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 907
    .local p0, "this":Lcom/google/common/collect/Sets$FilteredSortedSet;, "Lcom/google/common/collect/Sets$FilteredSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$FilteredSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 897
    .local p0, "this":Lcom/google/common/collect/Sets$FilteredSortedSet;, "Lcom/google/common/collect/Sets$FilteredSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v1, Lcom/google/common/collect/Sets$FilteredSortedSet;

    iget-object v0, p0, Lcom/google/common/collect/Sets$FilteredSortedSet;->unfiltered:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Sets$FilteredSortedSet;->predicate:Lcom/google/common/base/Predicate;

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)V

    return-object v1
.end method

.method public last()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 912
    .local p0, "this":Lcom/google/common/collect/Sets$FilteredSortedSet;, "Lcom/google/common/collect/Sets$FilteredSortedSet<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/Sets$FilteredSortedSet;->unfiltered:Ljava/util/Collection;

    check-cast v1, Ljava/util/SortedSet;

    .line 914
    .local v1, "sortedUnfiltered":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    :goto_4
    invoke-interface {v1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    .line 915
    .local v0, "element":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lcom/google/common/collect/Sets$FilteredSortedSet;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v2, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 916
    return-object v0

    .line 918
    :cond_11
    invoke-interface {v1, v0}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    .line 919
    goto :goto_4
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 891
    .local p0, "this":Lcom/google/common/collect/Sets$FilteredSortedSet;, "Lcom/google/common/collect/Sets$FilteredSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v1, Lcom/google/common/collect/Sets$FilteredSortedSet;

    iget-object v0, p0, Lcom/google/common/collect/Sets$FilteredSortedSet;->unfiltered:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Sets$FilteredSortedSet;->predicate:Lcom/google/common/base/Predicate;

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)V

    return-object v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 902
    .local p0, "this":Lcom/google/common/collect/Sets$FilteredSortedSet;, "Lcom/google/common/collect/Sets$FilteredSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    new-instance v1, Lcom/google/common/collect/Sets$FilteredSortedSet;

    iget-object v0, p0, Lcom/google/common/collect/Sets$FilteredSortedSet;->unfiltered:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Sets$FilteredSortedSet;->predicate:Lcom/google/common/base/Predicate;

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)V

    return-object v1
.end method
