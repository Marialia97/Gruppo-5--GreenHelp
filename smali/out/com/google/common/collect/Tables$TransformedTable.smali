.class Lcom/google/common/collect/Tables$TransformedTable;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Lcom/google/common/collect/Table;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformedTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Tables$TransformedTable$CellSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Table",
        "<TR;TC;TV2;>;"
    }
.end annotation


# instance fields
.field cellSet:Lcom/google/common/collect/Tables$TransformedTable$CellSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Tables$TransformedTable",
            "<TR;TC;TV1;TV2;>.CellSet;"
        }
    .end annotation
.end field

.field columnMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV2;>;>;"
        }
    .end annotation
.end field

.field final fromTable:Lcom/google/common/collect/Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV1;>;"
        }
    .end annotation
.end field

.field final function:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<-TV1;TV2;>;"
        }
    .end annotation
.end field

.field rowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV2;>;>;"
        }
    .end annotation
.end field

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV2;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Table;Lcom/google/common/base/Function;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV1;>;",
            "Lcom/google/common/base/Function",
            "<-TV1;TV2;>;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    .local p1, "fromTable":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<TR;TC;TV1;>;"
    .local p2, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TV1;TV2;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Table;

    iput-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    .line 416
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    iput-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->function:Lcom/google/common/base/Function;

    .line 417
    return-void
.end method


# virtual methods
.method cellFunction()Lcom/google/common/base/Function;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV1;>;",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    new-instance v0, Lcom/google/common/collect/Tables$TransformedTable$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Tables$TransformedTable$1;-><init>(Lcom/google/common/collect/Tables$TransformedTable;)V

    return-object v0
.end method

.method public cellSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 522
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->cellSet:Lcom/google/common/collect/Tables$TransformedTable$CellSet;

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/Tables$TransformedTable$CellSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Tables$TransformedTable$CellSet;-><init>(Lcom/google/common/collect/Tables$TransformedTable;)V

    iput-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->cellSet:Lcom/google/common/collect/Tables$TransformedTable$CellSet;

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->cellSet:Lcom/google/common/collect/Tables$TransformedTable$CellSet;

    goto :goto_b
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 451
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->clear()V

    .line 452
    return-void
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map",
            "<TR;TV2;>;"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Tables$TransformedTable;->function:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public columnKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 570
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->columnMap:Ljava/util/Map;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransformedTable;->createColumnMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->columnMap:Ljava/util/Map;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->columnMap:Ljava/util/Map;

    goto :goto_a
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;

    .prologue
    .line 420
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Table;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "columnKey"    # Ljava/lang/Object;

    .prologue
    .line 428
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "rowKey"    # Ljava/lang/Object;

    .prologue
    .line 424
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 432
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransformedTable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createColumnMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    new-instance v0, Lcom/google/common/collect/Tables$TransformedTable$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Tables$TransformedTable$3;-><init>(Lcom/google/common/collect/Tables$TransformedTable;)V

    .line 564
    .local v0, "columnFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<Ljava/util/Map<TR;TV1;>;Ljava/util/Map<TR;TV2;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v1}, Lcom/google/common/collect/Table;->columnMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method createRowMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 542
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    new-instance v0, Lcom/google/common/collect/Tables$TransformedTable$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Tables$TransformedTable$2;-><init>(Lcom/google/common/collect/Tables$TransformedTable;)V

    .line 548
    .local v0, "rowFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<Ljava/util/Map<TC;TV1;>;Ljava/util/Map<TC;TV2;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v1}, Lcom/google/common/collect/Table;->rowMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 574
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    if-ne p1, p0, :cond_4

    .line 575
    const/4 v1, 0x1

    .line 581
    :goto_3
    return v1

    .line 577
    :cond_4
    instance-of v1, p1, Lcom/google/common/collect/Table;

    if-eqz v1, :cond_18

    move-object v0, p1

    .line 578
    check-cast v0, Lcom/google/common/collect/Table;

    .line 579
    .local v0, "other":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<***>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransformedTable;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    .line 581
    .end local v0    # "other":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<***>;"
    :cond_18
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Tables$TransformedTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->function:Lcom/google/common/base/Function;

    iget-object v1, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 585
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransformedTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 443
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV2;)TV2;"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    .local p2, "columnKey":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV2;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lcom/google/common/collect/Table;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table",
            "<+TR;+TC;+TV2;>;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    .local p1, "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<+TR;+TC;+TV2;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Tables$TransformedTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->function:Lcom/google/common/base/Function;

    iget-object v1, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/Table;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map",
            "<TC;TV2;>;"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Tables$TransformedTable;->function:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 526
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 554
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->rowMap:Ljava/util/Map;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransformedTable;->createRowMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->rowMap:Ljava/util/Map;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->rowMap:Ljava/util/Map;

    goto :goto_a
.end method

.method public size()I
    .registers 2

    .prologue
    .line 447
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 589
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransformedTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV2;>;"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->values:Ljava/util/Collection;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Tables$TransformedTable;->function:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->values:Ljava/util/Collection;

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable;->values:Ljava/util/Collection;

    goto :goto_12
.end method
