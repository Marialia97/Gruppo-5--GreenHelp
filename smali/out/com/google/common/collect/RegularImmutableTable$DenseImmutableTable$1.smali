.class Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;
.super Lcom/google/common/collect/ImmutableList;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->createValues()Lcom/google/common/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)V
    .registers 2

    .prologue
    .line 634
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable.1;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable.1;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->access$800(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->access$1100(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I

    move-result-object v1

    aget v1, v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->access$1200(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I

    move-result-object v1

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 647
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable.1;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 637
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable.1;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->access$1100(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method
