.class Lcom/google/common/collect/Multimaps$Values;
.super Ljava/util/AbstractCollection;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final multimap:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1911
    .local p0, "this":Lcom/google/common/collect/Multimaps$Values;, "Lcom/google/common/collect/Multimaps$Values<TK;TV;>;"
    .local p1, "multimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 1912
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$Values;->multimap:Lcom/google/common/collect/Multimap;

    .line 1913
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1928
    .local p0, "this":Lcom/google/common/collect/Multimaps$Values;, "Lcom/google/common/collect/Multimaps$Values<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Values;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 1929
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1924
    .local p0, "this":Lcom/google/common/collect/Multimaps$Values;, "Lcom/google/common/collect/Multimaps$Values<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Values;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1916
    .local p0, "this":Lcom/google/common/collect/Multimaps$Values;, "Lcom/google/common/collect/Multimaps$Values<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Values;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1920
    .local p0, "this":Lcom/google/common/collect/Multimaps$Values;, "Lcom/google/common/collect/Multimaps$Values<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Values;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->size()I

    move-result v0

    return v0
.end method
