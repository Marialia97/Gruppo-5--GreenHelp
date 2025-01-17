.class Lcom/google/common/util/concurrent/Striped$CompactStriped;
.super Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompactStriped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped",
        "<T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILcom/google/common/base/Supplier;)V
    .registers 6
    .param p1, "stripes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/base/Supplier",
            "<T",
            "L;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Lcom/google/common/util/concurrent/Striped$CompactStriped;, "Lcom/google/common/util/concurrent/Striped$CompactStriped<TL;>;"
    .local p2, "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TL;>;"
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;-><init>(I)V

    .line 287
    const/high16 v1, 0x40000000    # 2.0f

    if-gt p1, v1, :cond_26

    const/4 v1, 0x1

    :goto_8
    const-string v2, "Stripes must be <= 2^30)"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 289
    iget v1, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->mask:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    iget-object v1, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 291
    iget-object v1, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 287
    .end local v0    # "i":I
    :cond_26
    const/4 v1, 0x0

    goto :goto_8

    .line 293
    .restart local v0    # "i":I
    :cond_28
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/common/base/Supplier;Lcom/google/common/util/concurrent/Striped$1;)V
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/google/common/base/Supplier;
    .param p3, "x2"    # Lcom/google/common/util/concurrent/Striped$1;

    .prologue
    .line 281
    .local p0, "this":Lcom/google/common/util/concurrent/Striped$CompactStriped;, "Lcom/google/common/util/concurrent/Striped$CompactStriped<TL;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Striped$CompactStriped;-><init>(ILcom/google/common/base/Supplier;)V

    return-void
.end method


# virtual methods
.method public getAt(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lcom/google/common/util/concurrent/Striped$CompactStriped;, "Lcom/google/common/util/concurrent/Striped$CompactStriped<TL;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 301
    .local p0, "this":Lcom/google/common/util/concurrent/Striped$CompactStriped;, "Lcom/google/common/util/concurrent/Striped$CompactStriped<TL;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
