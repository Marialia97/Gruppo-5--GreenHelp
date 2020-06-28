.class Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;
.super Lcom/google/common/collect/ForwardingList;
.source "FilteredKeyMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/FilteredKeyMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AddRejectingList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingList",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;, "Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingList;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;->key:Ljava/lang/Object;

    .line 137
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;, "Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList<TK;TV;>;"
    .local p2, "element":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key does not satisfy predicate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;, "Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList<TK;TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;->add(ILjava/lang/Object;)V

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;, "Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList<TK;TV;>;"
    .local p2, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key does not satisfy predicate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;, "Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;->addAll(ILjava/util/Collection;)Z

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 132
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;, "Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 132
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;, "Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;, "Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList<TK;TV;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
