.class Lcom/google/common/collect/Multimaps$AsMap$EntrySet;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multimaps$AsMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$AsMap;)V
    .registers 2

    .prologue
    .line 1997
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap$EntrySet;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->this$0:Lcom/google/common/collect/Multimaps$AsMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 2003
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap$EntrySet;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->this$0:Lcom/google/common/collect/Multimaps$AsMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Multimaps$AsMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method map()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1999
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap$EntrySet;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->this$0:Lcom/google/common/collect/Multimaps$AsMap;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2007
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap$EntrySet;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2008
    const/4 v1, 0x0

    .line 2012
    :goto_7
    return v1

    :cond_8
    move-object v0, p1

    .line 2010
    check-cast v0, Ljava/util/Map$Entry;

    .line 2011
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->this$0:Lcom/google/common/collect/Multimaps$AsMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Multimaps$AsMap;->removeValuesForKey(Ljava/lang/Object;)V

    .line 2012
    const/4 v1, 0x1

    goto :goto_7
.end method
