.class abstract Lcom/google/common/collect/Multisets$AbstractEntry;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Lcom/google/common/collect/Multiset$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 766
    .local p0, "this":Lcom/google/common/collect/Multisets$AbstractEntry;, "Lcom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/Multisets$AbstractEntry;, "Lcom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    const/4 v1, 0x0

    .line 772
    instance-of v2, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v2, :cond_21

    move-object v0, p1

    .line 773
    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 774
    .local v0, "that":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getCount()I

    move-result v2

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_21

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    .line 777
    .end local v0    # "that":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    :cond_21
    return v1
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 785
    .local p0, "this":Lcom/google/common/collect/Multisets$AbstractEntry;, "Lcom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 786
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_d

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getCount()I

    move-result v2

    xor-int/2addr v1, v2

    return v1

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 797
    .local p0, "this":Lcom/google/common/collect/Multisets$AbstractEntry;, "Lcom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getCount()I

    move-result v0

    .line 799
    .local v0, "n":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    .end local v1    # "text":Ljava/lang/String;
    :goto_f
    return-object v1

    .restart local v1    # "text":Ljava/lang/String;
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_f
.end method
