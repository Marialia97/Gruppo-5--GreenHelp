.class Lcom/google/common/collect/ImmutableMultimap$Keys;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableMultiset",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap;)V
    .registers 2

    .prologue
    .line 564
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Keys;, "Lcom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    .line 591
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 567
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Keys;, "Lcom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .registers 4
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 572
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Keys;, "Lcom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    iget-object v1, v1, Lcom/google/common/collect/ImmutableMultimap;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 573
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_e

    const/4 v1, 0x0

    :goto_d
    return v1

    :cond_e
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_d
.end method

.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Keys;, "Lcom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys;"
    new-instance v0, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;-><init>(Lcom/google/common/collect/ImmutableMultimap$Keys;Lcom/google/common/collect/ImmutableMultimap$1;)V

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Keys;, "Lcom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 623
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Keys;, "Lcom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 583
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Keys;, "Lcom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->size()I

    move-result v0

    return v0
.end method
