.class Lcom/google/common/collect/Collections2$PermutationIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermutationIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/util/List",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final c:[I

.field j:I

.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field final o:[I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 655
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationIterator;, "Lcom/google/common/collect/Collections2$PermutationIterator<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 656
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    .line 657
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 658
    .local v1, "n":I
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    .line 659
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    .line 660
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    if-ge v0, v1, :cond_26

    .line 661
    iget-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 662
    iget-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    const/4 v3, 0x1

    aput v3, v2, v0

    .line 660
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 664
    :cond_26
    const v2, 0x7fffffff

    iput v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    .line 665
    return-void
.end method


# virtual methods
.method calculateNextPermutation()V
    .registers 7

    .prologue
    .line 677
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationIterator;, "Lcom/google/common/collect/Collections2$PermutationIterator<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    .line 678
    const/4 v1, 0x0

    .line 682
    .local v1, "s":I
    iget v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    .line 705
    :cond_10
    :goto_10
    return-void

    .line 687
    :cond_11
    :goto_11
    iget-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    iget v3, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    iget v4, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aget v3, v3, v4

    add-int v0, v2, v3

    .line 688
    .local v0, "q":I
    if-gez v0, :cond_25

    .line 689
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->switchDirection()V

    goto :goto_11

    .line 692
    :cond_25
    iget v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    add-int/lit8 v2, v2, 0x1

    if-ne v0, v2, :cond_35

    .line 693
    iget v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    if-eqz v2, :cond_10

    .line 696
    add-int/lit8 v1, v1, 0x1

    .line 697
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->switchDirection()V

    goto :goto_11

    .line 701
    :cond_35
    iget-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    iget v3, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    iget-object v4, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    iget v5, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    sub-int/2addr v4, v0

    add-int/2addr v4, v1

    invoke-static {v2, v3, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 702
    iget-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    iget v3, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aput v0, v2, v3

    goto :goto_10
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 648
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationIterator;, "Lcom/google/common/collect/Collections2$PermutationIterator<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->computeNext()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationIterator;, "Lcom/google/common/collect/Collections2$PermutationIterator<TE;>;"
    iget v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    if-gtz v1, :cond_b

    .line 669
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 673
    :goto_a
    return-object v1

    .line 671
    :cond_b
    iget-object v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 672
    .local v0, "next":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->calculateNextPermutation()V

    move-object v1, v0

    .line 673
    goto :goto_a
.end method

.method switchDirection()V
    .registers 5

    .prologue
    .line 708
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationIterator;, "Lcom/google/common/collect/Collections2$PermutationIterator<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    iget v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    iget-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    iget v3, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aget v2, v2, v3

    neg-int v2, v2

    aput v2, v0, v1

    .line 709
    iget v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    .line 710
    return-void
.end method
