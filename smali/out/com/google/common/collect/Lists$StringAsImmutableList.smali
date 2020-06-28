.class final Lcom/google/common/collect/Lists$StringAsImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringAsImmutableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field hash:I

.field private final string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 722
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->hash:I

    .line 670
    iput-object p1, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    .line 671
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 703
    instance-of v6, p1, Ljava/util/List;

    if-nez v6, :cond_6

    .line 719
    :cond_5
    :goto_5
    return v5

    :cond_6
    move-object v3, p1

    .line 706
    check-cast v3, Ljava/util/List;

    .line 707
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v6, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 708
    .local v4, "n":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v4, v6, :cond_5

    .line 711
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 712
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    if-ge v1, v4, :cond_35

    .line 713
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 714
    .local v0, "elem":Ljava/lang/Object;
    instance-of v6, v0, Ljava/lang/Character;

    if-eqz v6, :cond_5

    check-cast v0, Ljava/lang/Character;

    .end local v0    # "elem":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v6

    iget-object v7, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_5

    .line 712
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 719
    :cond_35
    const/4 v5, 0x1

    goto :goto_5
.end method

.method public get(I)Ljava/lang/Character;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$StringAsImmutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 695
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 663
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$StringAsImmutableList;->get(I)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 725
    iget v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->hash:I

    .line 726
    .local v0, "h":I
    if-nez v0, :cond_1d

    .line 727
    const/4 v0, 0x1

    .line 728
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 729
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v0, v2, v3

    .line 728
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 731
    :cond_1b
    iput v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->hash:I

    .line 733
    .end local v1    # "i":I
    :cond_1d
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 674
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :goto_10
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_11
    const/4 v0, -0x1

    goto :goto_10
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 679
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    :goto_10
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_11
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public size()I
    .registers 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public subList(II)Lcom/google/common/collect/ImmutableList;
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$StringAsImmutableList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 686
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->charactersOf(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 663
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Lists$StringAsImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
