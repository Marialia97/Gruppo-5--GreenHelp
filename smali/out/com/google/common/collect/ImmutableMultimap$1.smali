.class Lcom/google/common/collect/ImmutableMultimap$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMultimap;->entryIterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/ImmutableMultimap;

.field final synthetic val$mapIterator:Ljava/util/Iterator;

.field valueIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap;Ljava/util/Iterator;)V
    .registers 3

    .prologue
    .line 524
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$1;, "Lcom/google/common/collect/ImmutableMultimap.1;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$1;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMultimap$1;->val$mapIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 530
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$1;, "Lcom/google/common/collect/ImmutableMultimap.1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$1;->key:Ljava/lang/Object;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$1;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$1;->val$mapIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 524
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$1;, "Lcom/google/common/collect/ImmutableMultimap.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$1;, "Lcom/google/common/collect/ImmutableMultimap.1;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$1;->key:Ljava/lang/Object;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$1;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_26

    .line 537
    :cond_c
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$1;->val$mapIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 539
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+Lcom/google/common/collect/ImmutableCollection<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$1;->key:Ljava/lang/Object;

    .line 540
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$1;->valueIterator:Ljava/util/Iterator;

    .line 542
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+Lcom/google/common/collect/ImmutableCollection<TV;>;>;"
    :cond_26
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$1;->key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMultimap$1;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    return-object v1
.end method
