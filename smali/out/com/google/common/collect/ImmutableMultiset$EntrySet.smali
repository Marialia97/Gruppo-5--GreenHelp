.class abstract Lcom/google/common/collect/ImmutableMultiset$EntrySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableSet",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultiset;)V
    .registers 2

    .prologue
    .line 351
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$EntrySet;, "Lcom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$EntrySet;, "Lcom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    const/4 v2, 0x0

    .line 359
    instance-of v3, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v3, :cond_e

    move-object v1, p1

    .line 360
    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 361
    .local v1, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-gtz v3, :cond_f

    .line 367
    .end local v1    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    :cond_e
    :goto_e
    return v2

    .line 364
    .restart local v1    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    :cond_f
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 365
    .local v0, "count":I
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ne v0, v3, :cond_e

    const/4 v2, 0x1

    goto :goto_e
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 404
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$EntrySet;, "Lcom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 354
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$EntrySet;, "Lcom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 376
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$EntrySet;, "Lcom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 377
    .local v0, "newArray":[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$EntrySet;, "Lcom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    .local p1, "other":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->size()I

    move-result v5

    .line 387
    .local v5, "size":I
    array-length v6, p1

    if-ge v6, v5, :cond_23

    .line 388
    invoke-static {p1, v5}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 394
    :cond_b
    :goto_b
    move-object v4, p1

    .line 395
    .local v4, "otherAsObjectArray":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 396
    .local v2, "index":I
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 397
    .local v0, "element":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    aput-object v0, v4, v2

    move v2, v3

    .line 398
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_11

    .line 389
    .end local v0    # "element":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":I
    .end local v4    # "otherAsObjectArray":[Ljava/lang/Object;
    :cond_23
    array-length v6, p1

    if-le v6, v5, :cond_b

    .line 390
    const/4 v6, 0x0

    aput-object v6, p1, v5

    goto :goto_b

    .line 399
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "index":I
    .restart local v4    # "otherAsObjectArray":[Ljava/lang/Object;
    :cond_2a
    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 411
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$EntrySet;, "Lcom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-object v0
.end method
