.class final Lcom/google/common/collect/Iterators$5;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field current:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field removeFrom:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final synthetic val$inputs:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 3

    .prologue
    .line 581
    iput-object p1, p0, Lcom/google/common/collect/Iterators$5;->val$inputs:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$5;->current:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 596
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/Iterators$5;->current:Ljava/util/Iterator;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .local v0, "currentHasNext":Z
    if-nez v0, :cond_21

    iget-object v1, p0, Lcom/google/common/collect/Iterators$5;->val$inputs:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 597
    iget-object v1, p0, Lcom/google/common/collect/Iterators$5;->val$inputs:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    iput-object v1, p0, Lcom/google/common/collect/Iterators$5;->current:Ljava/util/Iterator;

    goto :goto_0

    .line 599
    :cond_21
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$5;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 604
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 606
    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->current:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/Iterators$5;->removeFrom:Ljava/util/Iterator;

    .line 607
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->current:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->removeFrom:Ljava/util/Iterator;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_5
    const-string v1, "no calls to next() since last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 613
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->removeFrom:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$5;->removeFrom:Ljava/util/Iterator;

    .line 615
    return-void

    .line 611
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method
