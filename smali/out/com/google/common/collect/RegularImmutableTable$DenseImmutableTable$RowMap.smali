.class final Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$RowMap;
.super Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RowMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap",
        "<TR;",
        "Ljava/util/Map",
        "<TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)V
    .registers 3

    .prologue
    .line 534
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$RowMap;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.RowMap;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$RowMap;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    .line 535
    invoke-static {p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->access$600(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;-><init>(I)V

    .line 536
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;Lcom/google/common/collect/RegularImmutableTable$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;
    .param p2, "x1"    # Lcom/google/common/collect/RegularImmutableTable$1;

    .prologue
    .line 533
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$RowMap;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.RowMap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$RowMap;-><init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)V

    return-void
.end method


# virtual methods
.method bridge synthetic getValue(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 533
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$RowMap;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.RowMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$RowMap;->getValue(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getValue(I)Ljava/util/Map;
    .registers 4
    .param p1, "keyIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 545
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$RowMap;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.RowMap;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$RowMap;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;-><init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;I)V

    return-object v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 550
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$RowMap;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.RowMap;"
    const/4 v0, 0x0

    return v0
.end method

.method keyToIndex()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$RowMap;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.RowMap;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$RowMap;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->access$1000(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
