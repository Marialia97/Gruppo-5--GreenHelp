.class final Lcom/google/common/collect/Collections2$OrderedPermutationCollection;
.super Ljava/util/AbstractCollection;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OrderedPermutationCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<",
        "Ljava/util/List",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field final inputList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field

.field final size:I


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TE;>;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "this":Lcom/google/common/collect/Collections2$OrderedPermutationCollection;, "Lcom/google/common/collect/Collections2$OrderedPermutationCollection<TE;>;"
    .local p1, "input":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 470
    invoke-static {p2}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    .line 471
    iput-object p2, p0, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->comparator:Ljava/util/Comparator;

    .line 472
    iget-object v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0, p2}, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->calculateSize(Ljava/util/List;Ljava/util/Comparator;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->size:I

    .line 473
    return-void
.end method

.method private static calculateSize(Ljava/util/List;Ljava/util/Comparator;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/util/Comparator",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "sortedInputList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    const v5, 0x7fffffff

    .line 486
    const-wide/16 v2, 0x1

    .line 487
    .local v2, "permutations":J
    const/4 v1, 0x1

    .line 488
    .local v1, "n":I
    const/4 v4, 0x1

    .line 489
    .local v4, "r":I
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2f

    .line 490
    add-int/lit8 v6, v1, -0x1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 492
    .local v0, "comparison":I
    if-gez v0, :cond_2a

    .line 494
    invoke-static {v1, v4}, Lcom/google/common/math/LongMath;->binomial(II)J

    move-result-wide v6

    mul-long/2addr v2, v6

    .line 495
    const/4 v4, 0x0

    .line 496
    invoke-static {v2, v3}, Lcom/google/common/collect/Collections2;->access$000(J)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 507
    .end local v0    # "comparison":I
    :cond_29
    :goto_29
    return v5

    .line 500
    .restart local v0    # "comparison":I
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    .line 501
    add-int/lit8 v4, v4, 0x1

    .line 502
    goto :goto_7

    .line 503
    .end local v0    # "comparison":I
    :cond_2f
    invoke-static {v1, v4}, Lcom/google/common/math/LongMath;->binomial(II)J

    move-result-wide v6

    mul-long/2addr v2, v6

    .line 504
    invoke-static {v2, v3}, Lcom/google/common/collect/Collections2;->access$000(J)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 507
    long-to-int v5, v2

    goto :goto_29
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 523
    .local p0, "this":Lcom/google/common/collect/Collections2$OrderedPermutationCollection;, "Lcom/google/common/collect/Collections2$OrderedPermutationCollection<TE;>;"
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_e

    move-object v0, p1

    .line 524
    check-cast v0, Ljava/util/List;

    .line 525
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1, v0}, Lcom/google/common/collect/Collections2;->access$100(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    .line 527
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 515
    .local p0, "this":Lcom/google/common/collect/Collections2$OrderedPermutationCollection;, "Lcom/google/common/collect/Collections2$OrderedPermutationCollection<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, "this":Lcom/google/common/collect/Collections2$OrderedPermutationCollection;, "Lcom/google/common/collect/Collections2$OrderedPermutationCollection<TE;>;"
    new-instance v0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;

    iget-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 511
    .local p0, "this":Lcom/google/common/collect/Collections2$OrderedPermutationCollection;, "Lcom/google/common/collect/Collections2$OrderedPermutationCollection<TE;>;"
    iget v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 531
    .local p0, "this":Lcom/google/common/collect/Collections2$OrderedPermutationCollection;, "Lcom/google/common/collect/Collections2$OrderedPermutationCollection<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orderedPermutationCollection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
