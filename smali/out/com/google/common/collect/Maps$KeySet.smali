.class abstract Lcom/google/common/collect/Maps$KeySet;
.super Lcom/google/common/collect/Sets$ImprovedAbstractSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$ImprovedAbstractSet",
        "<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 3539
    .local p0, "this":Lcom/google/common/collect/Maps$KeySet;, "Lcom/google/common/collect/Maps$KeySet<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 3567
    .local p0, "this":Lcom/google/common/collect/Maps$KeySet;, "Lcom/google/common/collect/Maps$KeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3568
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3555
    .local p0, "this":Lcom/google/common/collect/Maps$KeySet;, "Lcom/google/common/collect/Maps$KeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 3551
    .local p0, "this":Lcom/google/common/collect/Maps$KeySet;, "Lcom/google/common/collect/Maps$KeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3543
    .local p0, "this":Lcom/google/common/collect/Maps$KeySet;, "Lcom/google/common/collect/Maps$KeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method abstract map()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3559
    .local p0, "this":Lcom/google/common/collect/Maps$KeySet;, "Lcom/google/common/collect/Maps$KeySet<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$KeySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3560
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3561
    const/4 v0, 0x1

    .line 3563
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public size()I
    .registers 2

    .prologue
    .line 3547
    .local p0, "this":Lcom/google/common/collect/Maps$KeySet;, "Lcom/google/common/collect/Maps$KeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
