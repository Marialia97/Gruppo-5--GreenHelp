.class Lcom/google/common/collect/StandardTable$RowMap$EntrySet;
.super Lcom/google/common/collect/StandardTable$TableSet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable$RowMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/StandardTable",
        "<TR;TC;TV;>.TableSet<",
        "Ljava/util/Map$Entry",
        "<TR;",
        "Ljava/util/Map",
        "<TC;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/StandardTable$RowMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$RowMap;)V
    .registers 4

    .prologue
    .line 936
    .local p0, "this":Lcom/google/common/collect/StandardTable$RowMap$EntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.RowMap.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$RowMap;

    iget-object v0, p1, Lcom/google/common/collect/StandardTable$RowMap;->this$0:Lcom/google/common/collect/StandardTable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/StandardTable$TableSet;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/StandardTable$RowMap$EntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.RowMap.EntrySet;"
    const/4 v1, 0x0

    .line 952
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_27

    move-object v0, p1

    .line 953
    check-cast v0, Ljava/util/Map$Entry;

    .line 954
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$RowMap;

    iget-object v2, v2, Lcom/google/common/collect/StandardTable$RowMap;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v2, v2, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x1

    .line 958
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_27
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 938
    .local p0, "this":Lcom/google/common/collect/StandardTable$RowMap$EntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.RowMap.EntrySet;"
    new-instance v0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet$1;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$RowMap;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$RowMap;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardTable$RowMap$EntrySet$1;-><init>(Lcom/google/common/collect/StandardTable$RowMap$EntrySet;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/StandardTable$RowMap$EntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.RowMap.EntrySet;"
    const/4 v1, 0x0

    .line 962
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_27

    move-object v0, p1

    .line 963
    check-cast v0, Ljava/util/Map$Entry;

    .line 964
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$RowMap;

    iget-object v2, v2, Lcom/google/common/collect/StandardTable$RowMap;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v2, v2, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x1

    .line 968
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_27
    return v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 948
    .local p0, "this":Lcom/google/common/collect/StandardTable$RowMap$EntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.RowMap.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$RowMap;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$RowMap;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
